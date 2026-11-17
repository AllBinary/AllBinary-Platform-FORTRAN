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
! package org.allbinary.game.rand
module MyRandomFactory_m
  use JR_m
  use Random_m
  use MathUtil_m
  use StringMaker_m
  use CommonSeps_m
  use System_m
  use Integer_m
  implicit none

  type, extends(JObject) :: MyRandomFactory
    class(MathUtil), pointer :: f_mathUtil => null()
    class(Random), pointer :: f_rand => null()
  contains
    procedure :: jm_setSeed_1 => MyRandomFactory_jm_setSeed_1
    procedure :: jm_getNextInt_1 => MyRandomFactory_jm_getNextInt_1
    procedure :: jm_getAbsoluteNextInt_1 => MyRandomFactory_jm_getAbsoluteNextInt_1
    procedure :: jm_getAbsoluteNextIntAllowZero_1 => MyRandomFactory_jm_getAbsoluteNextIntAllowZero_1
    procedure :: jm_shuffle_1 => MyRandomFactory_jm_shuffle_1
    procedure :: jm_shuffleTotal_2 => MyRandomFactory_jm_shuffleTotal_2
    procedure :: jm_shuffle2_2 => MyRandomFactory_jm_shuffle2_2
    procedure :: jm_shuffle2Total_3 => MyRandomFactory_jm_shuffle2Total_3
  end type

  class(MyRandomFactory), pointer, save :: MyRandomFactory_jcell_instance => null()
  logical, save :: MyRandomFactory_jset_instance = .false.

contains

  function MyRandomFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyRandomFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyRandomFactory)
      jresult => object
    end select
  end function

  function MyRandomFactory_jstatic_instance() result(jresult)
    class(MyRandomFactory), pointer :: jresult
    if (.not. MyRandomFactory_jset_instance) then
      MyRandomFactory_jset_instance = .true.
      MyRandomFactory_jcell_instance => MyRandomFactory_jnew_0()
    end if
    jresult => MyRandomFactory_jcell_instance
  end function

  recursive function MyRandomFactory_jnew_0() result(this)
    class(MyRandomFactory), pointer :: this
    allocate(this)
    this%jclass = 'MyRandomFactory'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
    
        this%f_rand => Random_jnew_1(JR_currentTimeMillis())
  end function

  recursive function MyRandomFactory_jm_getInstance_0() result(jresult)
    class(MyRandomFactory), pointer :: jresult
        jresult => MyRandomFactory_jstatic_instance()
        return
  end function

  recursive subroutine MyRandomFactory_jm_setSeed_1(this, j_seed)
    class(MyRandomFactory), target :: this
    integer(8), value :: j_seed
        this%f_rand => Random_jnew_1(j_seed)
  end subroutine

  recursive function MyRandomFactory_jm_getNextInt_1(this, j_range) result(jresult)
    class(MyRandomFactory), target :: this
    integer(4), value :: j_range
    integer(4) :: jresult
    integer(4) :: j_div
        j_div = (((Integer_jstatic_MAX_VALUE() / j_range)) + 1)
        jresult = ((this%f_rand%jm_nextInt_0() / j_div))
        return
  end function

  recursive function MyRandomFactory_jm_getAbsoluteNextInt_1(this, j_range) result(jresult)
    class(MyRandomFactory), target :: this
    integer(4), value :: j_range
    integer(4) :: jresult
        jresult = this%f_mathUtil%jm_abs_1(this%jm_getNextInt_1(j_range))
        return
  end function

  recursive function MyRandomFactory_jm_getAbsoluteNextIntAllowZero_1(this, j_range) result(jresult)
    class(MyRandomFactory), target :: this
    integer(4), value :: j_range
    integer(4) :: jresult
        if ((j_range == 0)) then
            jresult = 0
            return
        else
            jresult = this%f_mathUtil%jm_abs_1(this%jm_getNextInt_1(j_range))
            return
        end if
  end function

  recursive subroutine MyRandomFactory_jm_shuffle_1(this, j_intArray)
    class(MyRandomFactory), target :: this
    integer(4) :: j_intArray(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_shuffleTotal_2(j_intArray, (size(j_intArray, 1) * 7))
  end subroutine

  recursive subroutine MyRandomFactory_jm_shuffleTotal_2(this, j_intArray, j_shuffleTotal)
    class(MyRandomFactory), target :: this
    integer(4) :: j_intArray(:)
    integer(4), value :: j_shuffleTotal
    integer(4) :: j_size
    integer(4) :: j_randomIndex
    integer(4) :: j_randomIndex2
    integer(4) :: j_value
    integer(4) :: j_index
        j_size = size(j_intArray, 1)
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_shuffleTotal))
            j_randomIndex = this%jm_getAbsoluteNextIntAllowZero_1(j_size)
            j_randomIndex2 = this%jm_getAbsoluteNextIntAllowZero_1(j_size)
            j_value = j_intArray((j_randomIndex) + 1)
            j_intArray((j_randomIndex) + 1) = j_intArray((j_randomIndex2) + 1)
            j_intArray((j_randomIndex2) + 1) = j_value
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine MyRandomFactory_jm_shuffle2_2(this, j_intArray, j_intArray2)
    class(MyRandomFactory), target :: this
    integer(4) :: j_intArray(:)
    integer(4) :: j_intArray2(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_shuffle2Total_3(j_intArray, j_intArray2, (size(j_intArray, 1) * 7))
  end subroutine

  recursive subroutine MyRandomFactory_jm_shuffle2Total_3(this, j_intArray, j_intArray2, j_shuffleTotal)
    class(MyRandomFactory), target :: this
    integer(4) :: j_intArray(:)
    integer(4) :: j_intArray2(:)
    integer(4), value :: j_shuffleTotal
    integer(4) :: j_size
    integer(4) :: j_randomIndex
    integer(4) :: j_randomIndex2
    integer(4) :: j_value
    integer(4) :: j_value2
    integer(4) :: j_index
        j_size = size(j_intArray, 1)
        continue
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_shuffleTotal))
            j_randomIndex = this%jm_getAbsoluteNextIntAllowZero_1(j_size)
            j_randomIndex2 = this%jm_getAbsoluteNextIntAllowZero_1(j_size)
            j_value = j_intArray((j_randomIndex) + 1)
            j_value2 = j_intArray2((j_randomIndex) + 1)
            j_intArray((j_randomIndex) + 1) = j_intArray((j_randomIndex2) + 1)
            j_intArray((j_randomIndex2) + 1) = j_value
            j_intArray2((j_randomIndex) + 1) = j_intArray2((j_randomIndex2) + 1)
            j_intArray2((j_randomIndex2) + 1) = j_value2
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine MyRandomFactory_jm_main_1(j_args)
    type(JString) :: j_args(:)
    class(MyRandomFactory), pointer :: j_randomFactory
    class(StringMaker), pointer :: j_stringBuilder
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_size2
    integer(4) :: j_index
    integer(4), allocatable :: j_intArray(:)
    integer(4), allocatable :: j_intArray2(:)
    integer(4) :: j_size
    logical :: j_found
    integer(4) :: j_index2
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_randomFactory => MyRandomFactory_jm_getInstance_0()
        j_stringBuilder => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_size2 = 100
        j_index = 0
        do while ((j_index < j_size2))
            jtemp1 => j_stringBuilder%jm_appendint_1(j_randomFactory%jm_getAbsoluteNextInt_1(3))
            jdiscardRef => jtemp1%jm_append_1(j_commonSeps%f_COMMA)
            j_index = j_index + 1
        end do
        call JR_println(j_stringBuilder%jm_toString_0())
        jdiscardRef => j_stringBuilder%jm_delete_2(0, j_stringBuilder%jm_length_0())
        j_intArray = JR_newIntArray(52)
        j_intArray2 = JR_newIntArray(52)
        j_size = size(j_intArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_intArray((j_index) + 1) = j_index
            j_intArray2((j_index) + 1) = j_index
            j_index = j_index + 1
        end do
        call j_randomFactory%jm_shuffle2_2(j_intArray, j_intArray2)
        j_index = 0
        do while ((j_index < j_size))
            jtemp2 => j_stringBuilder%jm_appendint_1(j_intArray((j_index) + 1))
            jdiscardRef => jtemp2%jm_append_1(j_commonSeps%f_COMMA)
            j_index = j_index + 1
        end do
        call JR_println(j_stringBuilder%jm_toString_0())
        jdiscardRef => j_stringBuilder%jm_delete_2(0, j_stringBuilder%jm_length_0())
        j_index = 0
        do while ((j_index < j_size))
            jtemp3 => j_stringBuilder%jm_appendint_1(j_intArray2((j_index) + 1))
            jdiscardRef => jtemp3%jm_append_1(j_commonSeps%f_COMMA)
            j_index = j_index + 1
        end do
        call JR_println(j_stringBuilder%jm_toString_0())
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_found = .false.
            j_index2 = 0
            do while ((j_index2 < j_size))
                if ((j_intArray((j_index2) + 1) == j_index)) then
                    j_found = .true.
                end if
                j_index2 = j_index2 + 1
            end do
            if ((.not. j_found)) then
                error stop JR_toString(JR_newJObject('RuntimeException'))
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module MyRandomFactory_m

