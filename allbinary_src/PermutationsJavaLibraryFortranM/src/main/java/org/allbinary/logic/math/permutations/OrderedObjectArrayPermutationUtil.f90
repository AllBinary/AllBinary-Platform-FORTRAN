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
module OrderedObjectArrayPermutationUtil_m
  use JR_m
  use Arrays_m
  use TsUtil_m
  use Visitor_m
  use System_m
  use ComparableObject_m
  use ObjectPermutationVisitor_m
  implicit none

  type, extends(JObject) :: OrderedObjectArrayPermutationUtil
    character(len=:), allocatable :: f_TOTAL_ITERATIONS_TABLE
    character(len=:), allocatable :: f_FINISHED
  contains
    procedure :: jm_getNext_1 => OrderedObjectArrayPermutationUtil_jm_getNext_1
    procedure :: jm_swap_3 => OrderedObjectArrayPermutationUtil_jm_swap_3
    procedure :: jm_factorial_1 => OrderedObjectArrayPermutationUtil_jm_factorial_1
    procedure :: jm_generate_2 => OrderedObjectArrayPermutationUtil_jm_generate_2
  end type

  class(OrderedObjectArrayPermutationUtil), pointer, save :: OrderedObjectArrayPermutationUtil_jcell_instance => null()
  logical, save :: OrderedObjectArrayPermutationUtil_jset_instance = .false.

contains

  function OrderedObjectArrayPermutationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OrderedObjectArrayPermutationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OrderedObjectArrayPermutationUtil)
      jresult => object
    end select
  end function

  function OrderedObjectArrayPermutationUtil_jstatic_instance() result(jresult)
    class(OrderedObjectArrayPermutationUtil), pointer :: jresult
    if (.not. OrderedObjectArrayPermutationUtil_jset_instance) then
      OrderedObjectArrayPermutationUtil_jset_instance = .true.
      OrderedObjectArrayPermutationUtil_jcell_instance => OrderedObjectArrayPermutationUtil_jnew_0()
    end if
    jresult => OrderedObjectArrayPermutationUtil_jcell_instance
  end function

  subroutine OrderedObjectArrayPermutationUtil_jsetstatic_instance(jvalue)
    class(OrderedObjectArrayPermutationUtil), target, optional :: jvalue
    OrderedObjectArrayPermutationUtil_jset_instance = .true.
    if (present(jvalue)) then
      OrderedObjectArrayPermutationUtil_jcell_instance => jvalue
    else
      OrderedObjectArrayPermutationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function OrderedObjectArrayPermutationUtil_jnew_0() result(this)
    class(OrderedObjectArrayPermutationUtil), pointer :: this
    allocate(this)
    this%jclass = 'OrderedObjectArrayPermutationUtil'
    this%f_TOTAL_ITERATIONS_TABLE = ''
    this%f_FINISHED = ''
    this%f_TOTAL_ITERATIONS_TABLE = 'Total Iterations: '
    this%f_FINISHED = JR_unescape('\nFINISHED')
        continue
  end function

  recursive function OrderedObjectArrayPermutationUtil_jm_getInstance_0() result(jresult)
    class(OrderedObjectArrayPermutationUtil), pointer :: jresult
        jresult => OrderedObjectArrayPermutationUtil_jstatic_instance()
        return
  end function

  recursive subroutine OrderedObjectArrayPermutationUtil_jm_getNext_1(this, j_data)
    class(OrderedObjectArrayPermutationUtil), target :: this
    type(JRef) :: j_data(:)
    integer(4) :: j_length
    integer(4) :: j_i
    class(TsUtil), pointer :: j_tsUtil
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
        j_tsUtil => TsUtil_jm_getInstance_0()
        do while ((j_tsUtil%jm_hashCode_1(j_data(((j_i - 1)) + 1)%v) >= j_tsUtil%jm_hashCode_1(j_data((j_i) + 1)%v)))
            j_i = (j_i - 1)
        end do
        j_j = j_length
        do while ((j_tsUtil%jm_hashCode_1(j_data(((j_j - 1)) + 1)%v) <= j_tsUtil%jm_hashCode_1(j_data(((j_i - 1)) + 1)%v)))
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

  recursive subroutine OrderedObjectArrayPermutationUtil_jm_swap_3(this, j_data, j_a, j_b)
    class(OrderedObjectArrayPermutationUtil), target :: this
    type(JRef) :: j_data(:)
    integer(4), value :: j_a
    integer(4), value :: j_b
    class(JObject), pointer :: j_temp
        j_temp => j_data((j_a) + 1)%v
        j_data((j_a) + 1)%v => j_data((j_b) + 1)%v
        j_data((j_b) + 1)%v => j_temp
  end subroutine

  recursive function OrderedObjectArrayPermutationUtil_jm_factorial_1(this, j_dataLength) result(jresult)
    class(OrderedObjectArrayPermutationUtil), target :: this
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

  recursive subroutine OrderedObjectArrayPermutationUtil_jm_generate_2(this, j_data, j_visitor)
    class(OrderedObjectArrayPermutationUtil), target :: this
    type(JRef) :: j_data(:)
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

  recursive subroutine OrderedObjectArrayPermutationUtil_jm_main_1(j_args)
    type(JString) :: j_args(:)
    integer(4) :: j_TOTAL
    type(JRef), allocatable :: j_data(:)
    integer(4) :: j_i
    class(ObjectPermutationVisitor), pointer :: j_permutationVisitor
    character(len=:), allocatable :: j_ORIGINAL_DATA_LABEL
    class(OrderedObjectArrayPermutationUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_TOTAL = 7
        j_data = JR_newRefArray(j_TOTAL)
        j_i = 0
        do while ((j_i < j_TOTAL))
            j_data((j_i) + 1)%v => ComparableObject_jnew_0()
            j_i = j_i + 1
        end do
        call Arrays_jm_sort_1(j_data)
        j_permutationVisitor => ObjectPermutationVisitor_jnew_1(j_data)
        j_ORIGINAL_DATA_LABEL = 'Original Data: '
        call JR_print(j_ORIGINAL_DATA_LABEL)
        jdiscardRef => j_permutationVisitor%jm_visit_1(j_data)
        jtemp1 => OrderedObjectArrayPermutationUtil_jm_getInstance_0()
        call jtemp1%jm_generate_2(j_data, j_permutationVisitor)
  end subroutine
end module OrderedObjectArrayPermutationUtil_m

