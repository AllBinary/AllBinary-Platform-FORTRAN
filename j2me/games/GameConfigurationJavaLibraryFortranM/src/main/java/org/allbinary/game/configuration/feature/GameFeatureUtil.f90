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
! package org.allbinary.game.configuration.feature
module GameFeatureUtil_m
  use JR_m
  use Enumeration_m
  use TsUtil_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use ABHashtable_m
  use BasicArrayList_m
  use EnumerationUtil_m
  use HashtableUtil_m
  use Features_m
  use Feature_m
  use GameFeatureChoiceGroups_m
  implicit none

  type, extends(JObject) :: GameFeatureUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
    character(len=:), allocatable :: f_ON_GAME_FEATURE_CHANGE
    character(len=:), allocatable :: f_GAME_FEATURE_CHANGED
  contains
    procedure :: jm_setDefault_1 => GameFeatureUtil_jm_setDefault_1
    procedure :: jm_updateMultiple_1 => GameFeatureUtil_jm_updateMultiple_1
    procedure :: jm_updateExclusiveForChoiceGroup_1 => GameFeatureUtil_jm_updateExclusiveForChoiceGroup_1
    procedure :: jm_isExclusive_1 => GameFeatureUtil_jm_isExclusive_1
    procedure :: jm_updateExclusive_1 => GameFeatureUtil_jm_updateExclusive_1
    procedure :: jm_updateExclusiveList_2 => GameFeatureUtil_jm_updateExclusiveList_2
  end type

  class(GameFeatureUtil), pointer, save :: GameFeatureUtil_jcell_instance => null()
  logical, save :: GameFeatureUtil_jset_instance = .false.

contains

  function GameFeatureUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureUtil)
      jresult => object
    end select
  end function

  function GameFeatureUtil_jstatic_instance() result(jresult)
    class(GameFeatureUtil), pointer :: jresult
    if (.not. GameFeatureUtil_jset_instance) then
      GameFeatureUtil_jset_instance = .true.
      GameFeatureUtil_jcell_instance => GameFeatureUtil_jnew_0()
    end if
    jresult => GameFeatureUtil_jcell_instance
  end function

  subroutine GameFeatureUtil_jsetstatic_instance(jvalue)
    class(GameFeatureUtil), target, optional :: jvalue
    GameFeatureUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameFeatureUtil_jcell_instance => jvalue
    else
      GameFeatureUtil_jcell_instance => null()
    end if
  end subroutine

  function GameFeatureUtil_jnew_0() result(this)
    class(GameFeatureUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureUtil'
    this%f_ON_GAME_FEATURE_CHANGE = ''
    this%f_GAME_FEATURE_CHANGED = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
    this%f_ON_GAME_FEATURE_CHANGE = 'onGameFeatureChange'
    this%f_GAME_FEATURE_CHANGED = 'Game Feature Changed: '
  end function

  recursive function GameFeatureUtil_jm_getInstance_0() result(jresult)
    class(GameFeatureUtil), pointer :: jresult
        jresult => GameFeatureUtil_jstatic_instance()
        return
  end function

  recursive subroutine GameFeatureUtil_jm_setDefault_1(this, j_choiceGroup)
    class(GameFeatureUtil), target :: this
    class(ChoiceGroup), target, optional :: j_choiceGroup
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_SELECTED_ARRAY_RETURN
    character(len=:), allocatable :: j_SELECTED_SEP
    logical, allocatable :: j_selectedArray_return(:)
    integer(4) :: j_total
    class(Features), pointer :: j_features
    logical :: j_isSelected
    character(len=:), allocatable :: j_selectedChoiceLabel
    class(Feature), pointer :: j_gameFeature
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_METHOD_NAME = 'setDefault'
        j_SELECTED_ARRAY_RETURN = 'selectedArray_return['
        j_SELECTED_SEP = '] = '
        j_selectedArray_return = JR_newBoolArray(j_choiceGroup%jm_size_0())
        j_total = j_choiceGroup%jm_getSelectedFlags_1(j_selectedArray_return)
        jdiscardRef => j_stringBuffer%jm_append_1('Multiple Total Choices: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_total)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
        j_features => Features_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(j_selectedArray_return, 1)))
            j_isSelected = j_selectedArray_return((j_index) + 1)
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_ARRAY_RETURN)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_SEP)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_isSelected)
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
            j_selectedChoiceLabel = j_choiceGroup%jm_getString_1(j_index)
            j_gameFeature => Feature_jm_getInstance_1(j_selectedChoiceLabel)
            if (j_features%jm_isDefault_1(j_gameFeature)) then
                call j_features%jm_add_1(j_gameFeature)
                call j_choiceGroup%jm_setSelectedIndex_2(j_index, .true.)
            else
                call j_features%jm_remove_1(j_gameFeature)
                call j_choiceGroup%jm_setSelectedIndex_2(j_index, .false.)
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameFeatureUtil_jm_updateMultiple_1(this, j_choiceGroup)
    class(GameFeatureUtil), target :: this
    class(ChoiceGroup), target, optional :: j_choiceGroup
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_SELECTED_ARRAY_RETURN
    character(len=:), allocatable :: j_SELECTED_SEP
    logical, allocatable :: j_selectedArray_return(:)
    integer(4) :: j_total
    class(Features), pointer :: j_features
    logical :: j_isSelected
    character(len=:), allocatable :: j_selectedChoiceLabel
    class(Feature), pointer :: j_gameFeature
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_METHOD_NAME = 'updateMultiple'
        j_SELECTED_ARRAY_RETURN = 'selectedArray_return['
        j_SELECTED_SEP = '] = '
        j_selectedArray_return = JR_newBoolArray(j_choiceGroup%jm_size_0())
        j_total = j_choiceGroup%jm_getSelectedFlags_1(j_selectedArray_return)
        jdiscardRef => j_stringBuffer%jm_append_1('Multiple Total Choices: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_total)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
        j_features => Features_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(j_selectedArray_return, 1)))
            j_isSelected = j_selectedArray_return((j_index) + 1)
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_ARRAY_RETURN)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_SEP)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_isSelected)
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
            j_selectedChoiceLabel = j_choiceGroup%jm_getString_1(j_index)
            j_gameFeature => Feature_jm_getInstance_1(j_selectedChoiceLabel)
            if (((.not. j_isSelected) .and. j_features%jm_isFeature_1(j_gameFeature))) then
                call j_features%jm_remove_1(j_gameFeature)
            else if ((j_isSelected .and. (.not. j_features%jm_isFeature_1(j_gameFeature)))) then
                call j_features%jm_add_1(j_gameFeature)
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameFeatureUtil_jm_updateExclusiveForChoiceGroup_1(this, j_choiceGroup)
    class(GameFeatureUtil), target :: this
    class(ChoiceGroup), target, optional :: j_choiceGroup
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_SELECTED_ARRAY_RETURN
    character(len=:), allocatable :: j_SELECTED_SEP
    logical, allocatable :: j_selectedArray_return(:)
    integer(4) :: j_total
    logical :: j_isSelected
    character(len=:), allocatable :: j_selectedChoiceLabel
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_METHOD_NAME = 'updateExclusive'
        j_SELECTED_ARRAY_RETURN = 'selectedArray_return['
        j_SELECTED_SEP = '] = '
        j_selectedArray_return = JR_newBoolArray(j_choiceGroup%jm_size_0())
        j_total = j_choiceGroup%jm_getSelectedFlags_1(j_selectedArray_return)
        jdiscardRef => j_stringBuffer%jm_append_1('Exclusive Total Choices: 1==')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_total)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
        j_index = 0
        do while ((j_index < size(j_selectedArray_return, 1)))
            j_isSelected = j_selectedArray_return((j_index) + 1)
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_ARRAY_RETURN)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(j_SELECTED_SEP)
            jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_isSelected)
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
            if (j_isSelected) then
                j_selectedChoiceLabel = j_choiceGroup%jm_getString_1(j_index)
                call this%jm_updateExclusive_1(j_selectedChoiceLabel)
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive function GameFeatureUtil_jm_isExclusive_1(this, j_itemLabel) result(jresult)
    class(GameFeatureUtil), target :: this
    character(len=*), intent(in) :: j_itemLabel
    logical :: jresult
    class(Enumeration), pointer :: j_enumeration
    character(len=:), allocatable :: j_name
    class(ABHashtable), pointer :: jtemp1
    class(GameFeatureChoiceGroups), pointer :: jtemp2
        jtemp2 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        jtemp1 => jtemp2%jm_get_0()
        j_enumeration => jtemp1%jm_keys_0()
        continue
        do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
            j_name = this%f_enumerationUtil%jm_nextElement_1(j_enumeration)
            if ((this%f_tsUtil%jm_compareTo_2(j_itemLabel, j_name) == 0)) then
                jresult = .true.
                return
            end if
        end do
        jresult = .false.
        return
  end function

  recursive subroutine GameFeatureUtil_jm_updateExclusive_1(this, j_selectedChoiceLabel)
    class(GameFeatureUtil), target :: this
    character(len=*), intent(in) :: j_selectedChoiceLabel
    class(Feature), pointer :: j_gameFeature
    class(ABHashtable), pointer :: j_hashtable
    type(JRef), allocatable :: j_objectArray(:)
    class(BasicArrayList), pointer :: j_basicArrayList
    class(JObject), pointer :: j_anyType
    integer(4) :: j_size
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    class(GameFeatureChoiceGroups), pointer :: jtemp7
    class(HashtableUtil), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => CommonLabels_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(jtemp6%f_ITEM_LABEL)
        jtemp3 => jtemp4%jm_append_1(j_selectedChoiceLabel)
        call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, 'updateExclusive')
        j_gameFeature => Feature_jm_getInstance_1(j_selectedChoiceLabel)
        jtemp7 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        j_hashtable => jtemp7%jm_get_0()
        jtemp8 => HashtableUtil_jm_getInstance_0()
        j_objectArray = jtemp8%jm_getKeysAsArray_1(j_hashtable)
        continue
        continue
        j_size = size(j_objectArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_anyType => j_objectArray((j_index) + 1)%v
            j_basicArrayList => BasicArrayList_jcast(j_hashtable%jm_get_1(j_anyType))
            call this%jm_updateExclusiveList_2(j_gameFeature, j_basicArrayList)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameFeatureUtil_jm_updateExclusiveList_2(this, j_gameFeature, j_list)
    class(GameFeatureUtil), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(BasicArrayList), target, optional :: j_list
    class(Features), pointer :: j_features
    integer(4) :: j_addIndex
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_list%jm_contains_1(j_gameFeature)) then
            j_features => Features_jm_getInstance_0()
            j_addIndex = j_list%jm_indexOf_1(j_gameFeature)
            j_size = j_list%jm_size_0()
            j_index = 0
            do while ((j_index < j_size))
                if ((j_addIndex /= j_index)) then
                    call j_features%jm_remove_1(Feature_jcast(j_list%f_objectArray((j_index) + 1)%v))
                else
                    call j_features%jm_add_1(Feature_jcast(j_list%f_objectArray((j_index) + 1)%v))
                end if
                j_index = j_index + 1
            end do
        end if
  end subroutine
end module GameFeatureUtil_m

