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
    for my $module (sort @$component) {
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
        $spec .= join("\n", @lines[$implicitLine + 1 .. $containsLine - 1]) . "\n";
        $procedures .= join("\n", @lines[$containsLine + 1 .. $endLine - 1]) . "\n" if $containsLine < $endLine;
        $after .= join("\n", @lines[$endLine + 1 .. $#lines]) . "\n";
    }
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
        head -40 "jobj/$(echo "$file" | tr '/.' '__').log"
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
