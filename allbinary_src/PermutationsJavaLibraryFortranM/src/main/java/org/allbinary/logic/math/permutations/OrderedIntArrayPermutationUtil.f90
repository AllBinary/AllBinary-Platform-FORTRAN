! 
! AllBinary Open License Version 1 
! Copyright (c) 2011 AllBinary 
!  
! By agreeing to this license you and any business entity you represent are 
! legally bound to the AllBinary Open License Version 1 legal agreement. 
!  
! You may obtain the AllBinary Open License Version 1 legal agreement from 
! AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
!  
! Created By: Travis Berthelot 
!   
! Generated Code Do Not Modify
! package org.allbinary.logic.math.permutations
module OrderedIntArrayPermutationUtil_m
  use JR_m
  use Visitor_m
  use StringMaker_m
  use System_m
  use IntPermutationVisitor_m
  implicit none

  type, extends(JObject) :: OrderedIntArrayPermutationUtil
    character(len=:), allocatable :: f_TOTAL_ITERATIONS_TABLE
    character(len=:), allocatable :: f_FINISHED
  contains
    procedure :: jm_getNext_1 => OrderedIntArrayPermutationUtil_jm_getNext_1
    procedure :: jm_swap_3 => OrderedIntArrayPermutationUtil_jm_swap_3
    procedure :: jm_factorial_1 => OrderedIntArrayPermutationUtil_jm_factorial_1
    procedure :: jm_generate_2 => OrderedIntArrayPermutationUtil_jm_generate_2
  end type

  class(OrderedIntArrayPermutationUtil), pointer, save :: OrderedIntArrayPermutationUtil_jcell_instance => null()
  logical, save :: OrderedIntArrayPermutationUtil_jset_instance = .false.

contains

  function OrderedIntArrayPermutationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OrderedIntArrayPermutationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OrderedIntArrayPermutationUtil)
      jresult => object
    end select
  end function

  function OrderedIntArrayPermutationUtil_jstatic_instance() result(jresult)
    class(OrderedIntArrayPermutationUtil), pointer :: jresult
    if (.not. OrderedIntArrayPermutationUtil_jset_instance) then
      OrderedIntArrayPermutationUtil_jset_instance = .true.
      OrderedIntArrayPermutationUtil_jcell_instance => OrderedIntArrayPermutationUtil_jnew_0()
    end if
    jresult => OrderedIntArrayPermutationUtil_jcell_instance
  end function

  subroutine OrderedIntArrayPermutationUtil_jsetstatic_instance(jvalue)
    class(OrderedIntArrayPermutationUtil), target, optional :: jvalue
    OrderedIntArrayPermutationUtil_jset_instance = .true.
    if (present(jvalue)) then
      OrderedIntArrayPermutationUtil_jcell_instance => jvalue
    else
      OrderedIntArrayPermutationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function OrderedIntArrayPermutationUtil_jnew_0() result(this)
    class(OrderedIntArrayPermutationUtil), pointer :: this
    allocate(this)
    this%jclass = 'OrderedIntArrayPermutationUtil'
    this%f_TOTAL_ITERATIONS_TABLE = ''
    this%f_FINISHED = ''
    this%f_TOTAL_ITERATIONS_TABLE = 'Total Iterations: '
    this%f_FINISHED = JR_unescape('\nFINISHED')
        continue
  end function

  recursive function OrderedIntArrayPermutationUtil_jm_getInstance_0() result(jresult)
    class(OrderedIntArrayPermutationUtil), pointer :: jresult
        jresult => OrderedIntArrayPermutationUtil_jstatic_instance()
        return
  end function

  recursive subroutine OrderedIntArrayPermutationUtil_jm_getNext_1(this, j_data)
    class(OrderedIntArrayPermutationUtil), target :: this
    integer(4) :: j_data(:)
    integer(4) :: j_length
    integer(4) :: j_i
    integer(4) :: j_j
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_length = size(j_data, 1)
        j_i = (j_length - 1)
        do while ((j_data(((j_i - 1)) + 1) >= j_data((j_i) + 1)))
            j_i = (j_i - 1)
        end do
        j_j = j_length
        do while ((j_data(((j_j - 1)) + 1) <= j_data(((j_i - 1)) + 1)))
            j_j = (j_j - 1)
        end do
        call this%jm_swap_3(j_data, (j_i - 1), (j_j - 1))
        j_i = j_i + 1
        j_j = j_length
        do while ((j_i < j_j))
            call this%jm_swap_3(j_data, (j_i - 1), (j_j - 1))
            j_i = j_i + 1
            j_j = j_j - 1
        end do
  end subroutine

  recursive subroutine OrderedIntArrayPermutationUtil_jm_swap_3(this, j_data, j_a, j_b)
    class(OrderedIntArrayPermutationUtil), target :: this
    integer(4) :: j_data(:)
    integer(4), value :: j_a
    integer(4), value :: j_b
    integer(4) :: j_temp
        j_temp = j_data((j_a) + 1)
        j_data((j_a) + 1) = j_data((j_b) + 1)
        j_data((j_b) + 1) = j_temp
  end subroutine

  recursive function OrderedIntArrayPermutationUtil_jm_factorial_1(this, j_dataLength) result(jresult)
    class(OrderedIntArrayPermutationUtil), target :: this
    integer(4), value :: j_dataLength
    integer(8) :: jresult
    integer(8) :: j_temp
    integer(4) :: j_i
        j_temp = 1_8
        if ((j_dataLength > 1)) then
            j_i = 1
            do while ((j_i <= j_dataLength))
                j_temp = (j_temp * int(j_i, 8))
                j_i = j_i + 1
            end do
        end if
        jresult = j_temp
        return
  end function

  recursive subroutine OrderedIntArrayPermutationUtil_jm_generate_2(this, j_data, j_visitor)
    class(OrderedIntArrayPermutationUtil), target :: this
    integer(4) :: j_data(:)
    class(Visitor), target, optional :: j_visitor
    integer(8) :: j_iterations
    integer(8) :: j_count
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_iterations = this%jm_factorial_1(size(j_data, 1))
        call JR_print(this%f_TOTAL_ITERATIONS_TABLE)
        call JR_println(JR_longString(j_iterations))
        j_count = 0_8
        do while ((j_count < (j_iterations - 1_8)))
            call this%jm_getNext_1(j_data)
            jdiscardRef => j_visitor%jm_visit_1(this)
            j_count = j_count + 1
        end do
        call JR_println(this%f_FINISHED)
  end subroutine

  recursive subroutine OrderedIntArrayPermutationUtil_jm_main_1(j_args)
    type(JString) :: j_args(:)
    integer(4) :: j_TOTAL
    integer(4), allocatable :: j_data(:)
    integer(4) :: j_i
    class(IntPermutationVisitor), pointer :: j_permutationVisitor
    character(len=:), allocatable :: j_ORIGINAL_DATA_LABEL
    class(OrderedIntArrayPermutationUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_TOTAL = 3
        j_data = JR_newIntArray(j_TOTAL)
        j_i = 0
        do while ((j_i < j_TOTAL))
            j_data((j_i) + 1) = j_i
            j_i = j_i + 1
        end do
        j_permutationVisitor => IntPermutationVisitor_jnew_1(j_data)
        j_ORIGINAL_DATA_LABEL = 'Original Data: '
        call JR_print(j_ORIGINAL_DATA_LABEL)
        call j_permutationVisitor%jm_print_2(j_data, StringMaker_jnew_0())
        jtemp1 => OrderedIntArrayPermutationUtil_jm_getInstance_0()
        call jtemp1%jm_generate_2(j_data, j_permutationVisitor)
  end subroutine
end module OrderedIntArrayPermutationUtil_m

