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
! package org.allbinary.util
module BasicArrayListUtil_m
  use JR_m
  use MyRandomFactory_m
  use StringMaker_m
  use CommonLabels_m
  use CommonPhoneStrings_m
  use System_m
  use BasicArrayList_m
  use ImmutableBasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: BasicArrayListUtil
    type(JRef), allocatable :: f_NULL_ARRAY_OF_ARRAY(:,:)
    class(MyRandomFactory), pointer :: f_myRandomFactory => null()
    class(BasicArrayList), pointer :: f_immutableInstance => null()
  contains
    procedure :: jm_getRandom_1 => BasicArrayListUtil_jm_getRandom_1
    procedure :: jm_getRandomIndex_1 => BasicArrayListUtil_jm_getRandomIndex_1
    procedure :: jm_reverse_1 => BasicArrayListUtil_jm_reverse_1
    procedure :: jm_log_1 => BasicArrayListUtil_jm_log_1
    procedure :: jm_getImmutableInstance_0 => BasicArrayListUtil_jm_getImmutableInstance_0
  end type

  class(BasicArrayListUtil), pointer, save :: BasicArrayListUtil_jcell_instance => null()
  logical, save :: BasicArrayListUtil_jset_instance = .false.

contains

  function BasicArrayListUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListUtil)
      jresult => object
    end select
  end function

  function BasicArrayListUtil_jstatic_instance() result(jresult)
    class(BasicArrayListUtil), pointer :: jresult
    if (.not. BasicArrayListUtil_jset_instance) then
      BasicArrayListUtil_jset_instance = .true.
      BasicArrayListUtil_jcell_instance => BasicArrayListUtil_jnew_0()
    end if
    jresult => BasicArrayListUtil_jcell_instance
  end function

  function BasicArrayListUtil_jnew_0() result(this)
    class(BasicArrayListUtil), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListUtil'
    this%f_NULL_ARRAY_OF_ARRAY = JR_newRefArray2(0, 0)
    this%f_myRandomFactory => MyRandomFactory_jm_getInstance_0()
    this%f_immutableInstance => ImmutableBasicArrayList_jnew_2('Immutable', 0)
  end function

  recursive function BasicArrayListUtil_jm_getInstance_0() result(jresult)
    class(BasicArrayListUtil), pointer :: jresult
        jresult => BasicArrayListUtil_jstatic_instance()
        return
  end function

  recursive function BasicArrayListUtil_jm_getRandom_1(this, j_list) result(jresult)
    class(BasicArrayListUtil), target :: this
    class(BasicArrayList), target, optional :: j_list
    class(JObject), pointer :: jresult
    integer(4) :: j_i_random
        j_i_random = this%jm_getRandomIndex_1(j_list)
        jresult => j_list%f_objectArray((j_i_random) + 1)%v
        return
  end function

  recursive function BasicArrayListUtil_jm_getRandomIndex_1(this, j_list) result(jresult)
    class(BasicArrayListUtil), target :: this
    class(BasicArrayList), target, optional :: j_list
    integer(4) :: jresult
        jresult = this%f_myRandomFactory%jm_getAbsoluteNextInt_1(j_list%jm_size_0())
        return
  end function

  recursive subroutine BasicArrayListUtil_jm_reverse_1(this, j_list)
    class(BasicArrayListUtil), target :: this
    class(BasicArrayList), target, optional :: j_list
    integer(4) :: j_lastMinusOneIndex
    class(JObject), pointer :: j_temp
    integer(4) :: j_size
    integer(4) :: j_secondSwapIndex
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_lastMinusOneIndex = (j_list%jm_size_0() - 2)
        continue
        j_size = (j_lastMinusOneIndex / 2)
        continue
        j_index = 0
        do while ((j_index <= j_size))
            j_secondSwapIndex = (j_lastMinusOneIndex - j_index)
            j_temp => j_list%jm_removeAt_1(j_index)
            call j_list%jm_addAt_2(j_index, j_list%jm_removeAt_1(j_secondSwapIndex))
            call j_list%jm_addAt_2((j_secondSwapIndex + 1), j_temp)
            j_index = j_index + 1
        end do
  end subroutine

  recursive function BasicArrayListUtil_jm_log_1(this, j_list) result(jresult)
    class(BasicArrayListUtil), target :: this
    class(BasicArrayList), target, optional :: j_list
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_S_LABEL
    integer(4) :: j_size
    class(StringMaker), pointer :: j_stringBuffer
    class(BasicArrayList), pointer :: j_usedList
    integer(4) :: j_index
    class(CommonLabels), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_S_LABEL = ' s: '
        j_size = j_list%jm_size_0()
        j_stringBuffer => StringMaker_jnew_0()
        jtemp1 => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_TOTAL_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_size)
        j_index = (j_size - 1)
        do while ((j_index >= 0))
            j_usedList => BasicArrayList_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_append_1(j_S_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_usedList%jm_size_0())
            j_index = j_index - 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function BasicArrayListUtil_jm_getImmutableInstance_0(this) result(jresult)
    class(BasicArrayListUtil), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_immutableInstance
        return
  end function

  recursive subroutine BasicArrayListUtil_jm_main_1(j_args)
    type(JString) :: j_args(:)
    class(CommonPhoneStrings), pointer :: j_commonPhoneStrings
    class(BasicArrayList), pointer :: j_list
    class(BasicArrayListUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonPhoneStrings => CommonPhoneStrings_jm_getInstance_0()
        j_list => BasicArrayListD_jnew_0()
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_ONE))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_TWO))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_THREE))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_FOUR))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_FIVE))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_SIX))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_SEVEN))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_EIGHT))
        jdiscardBoolean = j_list%jm_add_1(JR_boxString(j_commonPhoneStrings%f_NINE))
        jtemp2 => BasicArrayListUtil_jm_getInstance_0()
        call jtemp2%jm_reverse_1(j_list)
        call JR_println(j_list%jm_toString_0())
  end subroutine
end module BasicArrayListUtil_m

