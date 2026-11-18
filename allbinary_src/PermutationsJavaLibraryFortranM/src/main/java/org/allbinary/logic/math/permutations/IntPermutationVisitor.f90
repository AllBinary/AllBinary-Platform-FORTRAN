! Generated Code Do Not Modify
! package org.allbinary.logic.math.permutations
module IntPermutationVisitor_m
  use JR_m
  use NullUtil_m
  use StringMaker_m
  use Visitor_m
  use CommonSeps_m
  use System_m
  implicit none

  type, extends(Visitor) :: IntPermutationVisitor
    integer(4), allocatable :: f_data(:)
    class(StringMaker), pointer :: f_stringBuilder => null()
  contains
    procedure :: jm_visit_1 => IntPermutationVisitor_jm_visit_1
    procedure :: jm_print_1 => IntPermutationVisitor_jm_print_1
    procedure :: jm_print_2 => IntPermutationVisitor_jm_print_2
  end type


contains

  function IntPermutationVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IntPermutationVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IntPermutationVisitor)
      jresult => object
    end select
  end function

  recursive function IntPermutationVisitor_jnew_1(j_data) result(this)
    integer(4) :: j_data(:)
    class(IntPermutationVisitor), pointer :: this
    allocate(this)
    this%jclass = 'IntPermutationVisitor'
    
    this%f_stringBuilder => StringMaker_jnew_0()
        this%f_data = j_data
  end function

  recursive function IntPermutationVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(IntPermutationVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_stringBuilder%jm_delete_2(0, this%f_stringBuilder%jm_length_0())
        call this%jm_print_2(this%f_data, this%f_stringBuilder)
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult => jtemp1%f_NULL_OBJECT
        return
  end function

  recursive subroutine IntPermutationVisitor_jm_print_1(this, j_data)
    class(IntPermutationVisitor), target :: this
    integer(4) :: j_data(:)
    class(StringMaker), pointer :: j_stringBuilder
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuilder => StringMaker_jnew_0()
        call this%jm_print_2(j_data, j_stringBuilder)
  end subroutine

  recursive subroutine IntPermutationVisitor_jm_print_2(this, j_data, j_stringBuilder)
    class(IntPermutationVisitor), target :: this
    integer(4) :: j_data(:)
    class(StringMaker), target, optional :: j_stringBuilder
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_size
    integer(4) :: j_i
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_size = size(j_data, 1)
        j_i = 0
        do while ((j_i < j_size))
            jdiscardRef => j_stringBuilder%jm_appendint_1(j_data((j_i) + 1))
            jdiscardRef => j_stringBuilder%jm_append_1(j_commonSeps%f_SPACE)
            j_i = j_i + 1
        end do
        call JR_println(j_stringBuilder%jm_toString_0())
  end subroutine
end module IntPermutationVisitor_m

