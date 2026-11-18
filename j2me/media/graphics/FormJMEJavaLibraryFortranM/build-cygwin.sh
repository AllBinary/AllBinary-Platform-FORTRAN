#!/usr/bin/env bash

# Compiles the Fortran modules the Fortran converter generated with gfortran. A module is compiled after the modules it uses, so they are compiled again until no more compile, and
# the hand written runtime, the Fortran sources of the dependencies (META-INF/fortran/src of their jars),
# and this project are copied to one tree first. This project's sources are written to <output>/src.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Fortran sources: $source_dir"
    exit 0
fi


rm -rf "$output_dir" "$object_dir"
tree="$object_dir/tree"
mkdir -p "$output_dir/src" "$tree"
cp -R "$source_dir/." "$output_dir/src/"
# The runtime keeps java.* modules in java/... folders
cp -R "$runtime_dir/." "$tree/"
if [ -d "$dependency_dir/src" ]; then
    cp -R "$dependency_dir/src/." "$tree/"
fi
cp -R "$source_dir/." "$tree/"

# gfortran can not open a path over the Windows 260 character limit, which a deep project folder plus a deep package
# reaches, so it compiles a short temporary copy of the tree
short_tree="$(mktemp -d /tmp/fortranXXXXXX)"
trap 'rm -rf "$short_tree"' EXIT
cp -R "$tree/." "$short_tree/"
cd "$short_tree" || exit 1
mkdir -p jobj
# The compiled modules (.mod) of the dependencies, like Java class files: a dependency source that needs a module of an
# optional dependency of that dependency (not transitive) does not compile here but its module from its own build does
if [ -d "$dependency_dir/mod" ]; then
    cp "$dependency_dir/mod/"*.mod jobj/ 2>/dev/null
    # The runtime is compiled here from its source, so a module of the runtime from an older dependency build is removed:
    # a module compiled first (HashMap) would otherwise use the older one (Hashtable) and keep it
    for module in $(cat $(find "$runtime_dir" -type f -name '*.f90') | sed -n 's/^module \([A-Za-z0-9_]*\) *$/\1/p' | tr 'A-Z' 'a-z'); do
        rm -f "jobj/$module.mod"
    done
fi
compile() {
    "$compiler" "${compiler_flags[@]}" -Jjobj -c "$1" -o "jobj/$(echo "$1" | tr '/.' '__').o" 2>"jobj/$(echo "$1" | tr '/.' '__').log"
}
if ! compile allbinary_java.f90; then
    cat jobj/allbinary_java_f90.log
    echo "Fortran build failed: $artifact" >&2
    [ "$fail_on_error" = "true" ] && exit 1
    exit 0
fi
# The runtime, the dependencies, then this project, compiled again while a pass compiles more of them
own="$(cd "$source_dir" && find . -type f -name '*.f90' | sed 's|^\./||' | sort)"
remaining=$(find . -type f -name '*.f90' ! -name 'allbinary_java.f90' | sed 's|^\./||' | sort)
echo "Fortran modules: $(echo "$own" | grep -c .)"
compile_passes() {
    while [ -n "$remaining" ]; do
        next=""
        progress=0
        for file in $remaining; do
            if compile "$file"; then progress=1; else next="$next $file"; fi
        done
        remaining="$(echo $next)"
        if [ "$progress" = "0" ]; then
            break
        fi
    done
}
compile_passes
# Fortran modules can not use each other: the modules left that use each other (ThreadPool and PooledThread) are merged
# into one module jcycleN_m and each of their files becomes a module that uses it, then the passes run again
if [ -n "$remaining" ]; then
    cat > jobj/cyclemerge.pl <<'PERL'
use strict;
use warnings;
my (%fileOf, %uses, %text);
for my $file (@ARGV) {
    open my $handle, '<', $file or next;
    local $/;
    my $content = <$handle>;
    close $handle;
    next unless $content =~ /^module\s+(\w+)\s*$/m;
    my $module = lc $1;
    $fileOf{$module} = $file;
    $text{$file} = $content;
    $uses{$module} = [ map { lc } ($content =~ /^\s*use\s+(\w+)/mg) ];
}
my ($counter, @stack, %onStack, %index, %low, @components) = (0);
my $strong;
$strong = sub {
    my $vertex = shift;
    $index{$vertex} = $low{$vertex} = $counter++;
    push @stack, $vertex;
    $onStack{$vertex} = 1;
    for my $next (@{$uses{$vertex}}) {
        next unless exists $fileOf{$next};
        if (!exists $index{$next}) {
            $strong->($next);
            $low{$vertex} = $low{$next} if $low{$next} < $low{$vertex};
        } elsif ($onStack{$next}) {
            $low{$vertex} = $index{$next} if $index{$next} < $low{$vertex};
        }
    }
    if ($low{$vertex} == $index{$vertex}) {
        my @component;
        my $member;
        do {
            $member = pop @stack;
            $onStack{$member} = 0;
            push @component, $member;
        } while ($member ne $vertex);
        push @components, [@component] if @component > 1;
    }
};
for my $module (sort keys %fileOf) {
    $strong->($module) unless exists $index{$module};
}
my $number = 0;
for my $component (@components) {
    $number++;
    my %member = map { $_ => 1 } @$component;
    my $name = "jcycle${number}_m";
    my (%seen, @useLines);
    my ($spec, $procedures, $after) = ('', '', '');
    my (@typeOrder, %typeParent, %typeText);
    #A parent type is declared before a type that extends it (Shape before DeviceRectangle), so a module comes after the
    #modules of the component that declare the types it extends
    my (%declares, %extends);
    for my $module (@$component) {
        $declares{$module} = [ map { lc } ($text{$fileOf{$module}} =~ /^\s*type\s*(?:,[^:]*)?::\s*(\w+)/mg) ];
        $extends{$module} = [ map { lc } ($text{$fileOf{$module}} =~ /^\s*type\s*,\s*extends\s*\(\s*(\w+)\s*\)/mg) ];
    }
    my (%declaredBy, @ordered, %placed);
    for my $module (@$component) {
        $declaredBy{$_} = $module for @{$declares{$module}};
    }
    my @pending = sort @$component;
    while (@pending) {
        my @next;
        my $progress = 0;
        for my $module (@pending) {
            my $ready = 1;
            for my $parent (@{$extends{$module}}) {
                my $owner = $declaredBy{$parent};
                $ready = 0 if defined $owner && $owner ne $module && !$placed{$owner};
            }
            if ($ready) {
                push @ordered, $module;
                $placed{$module} = 1;
                $progress = 1;
            } else {
                push @next, $module;
            }
        }
        if (!$progress) {
            push @ordered, @next;
            last;
        }
        @pending = @next;
    }
    for my $module (@ordered) {
        my @lines = split /\n/, $text{$fileOf{$module}}, -1;
        my ($moduleLine) = grep { $lines[$_] =~ /^module\s+\w+\s*$/ } 0 .. $#lines;
        my ($implicitLine) = grep { $_ > $moduleLine && $lines[$_] =~ /^\s*implicit none\s*$/ } 0 .. $#lines;
        my ($endLine) = grep { $_ > $implicitLine && $lines[$_] =~ /^end module\b/i } 0 .. $#lines;
        my ($containsLine) = grep { $_ > $implicitLine && $_ < $endLine && $lines[$_] =~ /^contains\s*$/ } 0 .. $#lines;
        $containsLine = $endLine unless defined $containsLine;
        for my $line (@lines[$moduleLine + 1 .. $implicitLine - 1]) {
            if ($line =~ /^\s*use\s+(\w+)/ && !$member{lc $1}) {
                push @useLines, $line unless $seen{lc $line}++;
            }
        }
        #The derived types go first (a module variable such as class(Gauge), pointer :: Alert_jcell_NULL_GAUGE needs the
        #type of another module) and the other declarations after them
        my $inType = 0;
        for my $line (@lines[$implicitLine + 1 .. $containsLine - 1]) {
            if (!$inType && $line =~ /^\s*type\s*(?:,[^:]*)?::\s*(\w+)/) {
                $inType = 1;
                my $typeName = lc $1;
                my ($parent) = $line =~ /extends\s*\(\s*(\w+)\s*\)/i;
                push @typeOrder, $typeName;
                $typeParent{$typeName} = defined $parent ? lc $parent : '';
                $typeText{$typeName} = '';
            }
            if ($inType) {
                $typeText{$typeOrder[-1]} .= "$line\n";
                $inType = 0 if $line =~ /^\s*end\s*type\b/i;
            } else {
                $spec .= "$line\n";
            }
        }
        $procedures .= join("\n", @lines[$containsLine + 1 .. $endLine - 1]) . "\n" if $containsLine < $endLine;
        $after .= join("\n", @lines[$endLine + 1 .. $#lines]) . "\n";
    }
    #The types with each parent before the types that extend it
    my ($types, %typeDone) = ('');
    my $addType;
    $addType = sub {
        my $typeName = shift;
        return if $typeDone{$typeName}++;
        my $parent = $typeParent{$typeName};
        $addType->($parent) if $parent ne '' && exists $typeText{$parent};
        $types .= $typeText{$typeName};
    };
    $addType->($_) for @typeOrder;
    $spec = "$types$spec";
    #An associate of a function of this merged module (associate (x => ChoiceItem_jcast(...))) is a block with a
    #variable of the function's result type: gfortran does not know the type of a function defined later in the module
    my %resultSpec;
    #The next lines are in a lookahead so a short function does not hide the one after it
    while ($procedures =~ /function\s+(\w+)\s*\([^)]*\)\s*result\(jresult\)\s*\n(?=((?:[^\n]*\n){0,12}))/g) {
        my ($function, $body) = (lc $1, $2);
        if ($body =~ /^\s*((?:class|type)\(\w+\)[^:\n]*|character\(len=:\)[^:\n]*|integer\(\d\)[^:\n]*|real\(\d\)[^:\n]*|logical[^:\n]*)::\s*jresult\s*$/m) {
            my $declaration = $1;
            $declaration =~ s/\s+$//;
            $resultSpec{$function} = $declaration;
        }
    }
    my @procedureLines = split /\n/, $procedures, -1;
    for my $index (0 .. $#procedureLines) {
        next unless $procedureLines[$index] =~ /^(\s*)associate \((\w+) => (\w+)(\(.*\))\)\s*$/;
        my ($indent, $variable, $function, $arguments) = ($1, $2, lc $3, $4);
        next unless exists $resultSpec{$function};
        my $declaration = $resultSpec{$function};
        my $operator = $declaration =~ /pointer/ ? '=>' : '=';
        my $call = $procedureLines[$index] =~ /=> (\w+\(.*\))\)\s*$/ ? $1 : '';
        my $depth = 0;
        for my $end ($index + 1 .. $#procedureLines) {
            if ($procedureLines[$end] =~ /^\s*associate \(/) {
                $depth++;
            } elsif ($procedureLines[$end] =~ /^\s*end associate\s*$/) {
                if ($depth == 0) {
                    $procedureLines[$end] =~ s/end associate/end block/;
                    last;
                }
                $depth--;
            }
        }
        $procedureLines[$index] = "${indent}block\n${indent}$declaration :: $variable\n${indent}$variable $operator $call";
    }
    $procedures = join "\n", @procedureLines;
    #The external constructor wrappers after the modules use the merged module
    for my $module (@$component) {
        $after =~ s/^(\s*use\s+)$module\b/$1$name/mgi;
    }
    open my $output, '>', "$name.f90" or die "$name.f90";
    print $output "! Modules that use each other merged into one module since Fortran modules can not use each other\nmodule $name\n"
        . join("\n", @useLines) . "\n  implicit none\n$spec\ncontains\n$procedures\nend module $name\n$after";
    close $output;
    print "$name.f90\n";
    for my $module (@$component) {
        my $file = $fileOf{$module};
        my ($original) = $text{$file} =~ /^module\s+(\w+)\s*$/m;
        open my $stub, '>', $file or die $file;
        print $stub "! $original is in $name with the modules that use each other\nmodule $original\n  use $name\n  implicit none\nend module $original\n";
        close $stub;
    }
}
PERL
    merged="$(perl jobj/cyclemerge.pl $remaining)"
    if [ -n "$merged" ]; then
        echo "Fortran merged modules that use each other: $(echo $merged)"
        remaining="$(echo $merged $remaining)"
        compile_passes
    fi
fi
# A dependency file can need a module of an optional dependency of that dependency (not transitive like Java), so only
# this project's files must compile
failed=""
for file in $remaining; do
    if echo "$own" | grep -qxF "$file" || case "$file" in jcycle*) true;; *) false;; esac; then failed="$failed $file"; fi
done
if [ -n "$failed" ]; then
    for file in $failed; do
        echo "== $file"
        # A merged module (jcycleN_m) has the errors of every module it merged
        case "$file" in jcycle*) lines=400;; *) lines=40;; esac
        head -$lines "jobj/$(echo "$file" | tr '/.' '__').log"
    done
    echo "Fortran build failed: $artifact" >&2
    if [ "$fail_on_error" = "true" ]; then
        exit 1
    fi
    exit 0
fi
# The modules for the projects that depend on this one (META-INF/fortran/mod of the jar)
mkdir -p "$output_dir/mod"
cp jobj/*.mod "$output_dir/mod/" 2>/dev/null
echo "Fortran compiled: $artifact"
exit 0
