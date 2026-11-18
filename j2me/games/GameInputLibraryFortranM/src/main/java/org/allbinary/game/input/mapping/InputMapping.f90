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
! package org.allbinary.game.input.mapping
module InputMapping_m
  use JR_m
  use Input_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use StdUtil_m
  use ABHashtable_m
  use InputToGameKeyMapping_m
  implicit none

  type, extends(JObject) :: InputMapping
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ABHashtable), pointer :: f_hashtable => null()
    class(BasicArrayList), pointer :: f_mappedList => null()
  contains
    procedure :: jm_getTotalMapped_0 => InputMapping_jm_getTotalMapped_0
    procedure :: jm_isDefaultNew_0 => InputMapping_jm_isDefaultNew_0
    procedure :: jm_getDefault_0 => InputMapping_jm_getDefault_0
    procedure :: jm_removeAll_0 => InputMapping_jm_removeAll_0
    procedure :: jm_remove_2 => InputMapping_jm_remove_2
    procedure :: jm_addMapping_1 => InputMapping_jm_addMapping_1
    procedure :: jm_add_2 => InputMapping_jm_add_2
    procedure :: jm_isMapped_1 => InputMapping_jm_isMapped_1
    procedure :: jm_getMappedInput_1 => InputMapping_jm_getMappedInput_1
    procedure :: jm_getHashtable_0 => InputMapping_jm_getHashtable_0
  end type


contains

  function InputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMapping)
      jresult => object
    end select
  end function

  recursive function InputMapping_jnew_0() result(this)
    class(InputMapping), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'InputMapping'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
    this%f_mappedList => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function InputMapping_jm_getTotalMapped_0(this) result(jresult)
    class(InputMapping), target :: this
    integer(4) :: jresult
        jresult = this%f_hashtable%jm_size_0()
        return
  end function

  recursive function InputMapping_jm_isDefaultNew_0(this) result(jresult)
    class(InputMapping), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function InputMapping_jm_getDefault_0(this) result(jresult)
    class(InputMapping), target :: this
    class(InputToGameKeyMapping), pointer :: jresult
        jresult => InputToGameKeyMapping_jm_getNullInstance_0()
        return
  end function

  recursive subroutine InputMapping_jm_removeAll_0(this)
    class(InputMapping), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_hashtable%jm_clear_0()
        call this%f_mappedList%jm_clear_0()
  end subroutine

  recursive subroutine InputMapping_jm_remove_2(this, j_input, j_mappedToInput)
    class(InputMapping), target :: this
    class(Input), target, optional :: j_input
    class(Input), target, optional :: j_mappedToInput
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: j_stringUtil
    class(BasicArrayList), pointer :: j_list
    class(CommonLabels), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_stringUtil => StringUtil_jm_getInstance_0()
        jtemp2 => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_START_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_input))
        jdiscardRef => j_stringBuffer%jm_append_1(' == ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_mappedToInput))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'InputMapping::remove')
        j_list => this%jm_getMappedInput_1(j_input)
        if (j_list%jm_contains_1(j_mappedToInput)) then
            jdiscardBoolean = j_list%jm_remove_1(j_mappedToInput)
            jdiscardBoolean = this%f_mappedList%jm_remove_1(j_mappedToInput)
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1('Removed: ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_input))
            jdiscardRef => j_stringBuffer%jm_append_1(' == ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_mappedToInput))
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'InputMapping::remove')
        else
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1('Not Deleted: ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_input))
            jdiscardRef => j_stringBuffer%jm_append_1(' == ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(j_mappedToInput))
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'InputMapping::remove')
        end if
  end subroutine

  recursive subroutine InputMapping_jm_addMapping_1(this, j_inputToGameKeyMapping)
    class(InputMapping), target :: this
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine InputMapping_jm_add_2(this, j_input, j_mappedToInput)
    class(InputMapping), target :: this
    class(Input), target, optional :: j_input
    class(Input), target, optional :: j_mappedToInput
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getMappedInput_1(j_input)
        if ((.not. j_list%jm_contains_1(j_mappedToInput))) then
            jdiscardBoolean = j_list%jm_add_1(j_mappedToInput)
            jdiscardBoolean = this%f_mappedList%jm_add_1(j_mappedToInput)
        end if
  end subroutine

  recursive function InputMapping_jm_isMapped_1(this, j_input) result(jresult)
    class(InputMapping), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        jresult = this%f_mappedList%jm_contains_1(j_input)
        return
  end function

  recursive function InputMapping_jm_getMappedInput_1(this, j_id) result(jresult)
    class(InputMapping), target :: this
    class(Input), target, optional :: j_id
    class(BasicArrayList), pointer :: jresult
    class(JObject), pointer :: j_mappingInputCanBeNullList
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mappingInputCanBeNullList => this%f_hashtable%jm_get_1(j_id)
        if ((.not. associated(j_mappingInputCanBeNullList))) then
            j_list => BasicArrayListD_jnew_0()
            jdiscardRef => this%f_hashtable%jm_put_2(j_id, j_list)
            jresult => j_list
            return
        end if
        jresult => BasicArrayList_jcast(j_mappingInputCanBeNullList)
        return
  end function

  recursive function InputMapping_jm_getHashtable_0(this) result(jresult)
    class(InputMapping), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function
end module InputMapping_m

