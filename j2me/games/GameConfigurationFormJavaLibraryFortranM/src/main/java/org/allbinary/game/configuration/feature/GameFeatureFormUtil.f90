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
module GameFeatureFormUtil_m
  use JR_m
  use NullImage_m
  use MIDPUtil_m
  use GameConfigurationGauge_m
  use GameConfigurationUtil_m
  use CommandForm_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  use HashtableUtil_m
  use Features_m
  use Feature_m
  use GameFeatureUtil_m
  implicit none

  type, extends(JObject) :: GameFeatureFormUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(MIDPUtil), pointer :: f_meUtil => null()
  contains
    procedure :: jm_getChoiceGroup_3 => GameFeatureFormUtil_jm_getChoiceGroup_3
    procedure :: jm_addChoiceGroup_3 => GameFeatureFormUtil_jm_addChoiceGroup_3
    procedure :: jm_setDefault_1 => GameFeatureFormUtil_jm_setDefault_1
  end type

  class(GameFeatureFormUtil), pointer, save :: GameFeatureFormUtil_jcell_instance => null()
  logical, save :: GameFeatureFormUtil_jset_instance = .false.

contains

  function GameFeatureFormUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureFormUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureFormUtil)
      jresult => object
    end select
  end function

  function GameFeatureFormUtil_jstatic_instance() result(jresult)
    class(GameFeatureFormUtil), pointer :: jresult
    if (.not. GameFeatureFormUtil_jset_instance) then
      GameFeatureFormUtil_jset_instance = .true.
      GameFeatureFormUtil_jcell_instance => GameFeatureFormUtil_jnew_0()
    end if
    jresult => GameFeatureFormUtil_jcell_instance
  end function

  subroutine GameFeatureFormUtil_jsetstatic_instance(jvalue)
    class(GameFeatureFormUtil), target, optional :: jvalue
    GameFeatureFormUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameFeatureFormUtil_jcell_instance => jvalue
    else
      GameFeatureFormUtil_jcell_instance => null()
    end if
  end subroutine

  function GameFeatureFormUtil_jnew_0() result(this)
    class(GameFeatureFormUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureFormUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_meUtil => MIDPUtil_jm_getInstance_0()
  end function

  recursive function GameFeatureFormUtil_jm_getInstance_0() result(jresult)
    class(GameFeatureFormUtil), pointer :: jresult
        jresult => GameFeatureFormUtil_jstatic_instance()
        return
  end function

  recursive function GameFeatureFormUtil_jm_getChoiceGroup_3(this, j_hashtable, j_name, j_option) result(jresult)
    class(GameFeatureFormUtil), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_option
    class(ChoiceGroup), pointer :: jresult
    class(StringMaker), pointer :: j_stringMaker
    class(ChoiceGroup), pointer :: j_choiceGroup
    class(BasicArrayList), pointer :: j_list
    class(Features), pointer :: j_features
    character(len=:), allocatable :: j_ADD_CHOICE
    character(len=:), allocatable :: j_GET_CHOICE_GROUP
    integer(4) :: j_size
    class(Feature), pointer :: j_gameFeature
    integer(4) :: j_index
    class(StringUtil), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        j_choiceGroup => ChoiceGroup_jnew_4(j_name, j_option, jtemp1%jm_getArrayInstance_0(), NullImage_jstatic_NULL_IMAGE_ARRAY())
        j_list => BasicArrayList_jcast(j_hashtable%jm_get_1(j_name))
        j_features => Features_jm_getInstance_0()
        j_ADD_CHOICE = ': Adding Choice: '
        j_GET_CHOICE_GROUP = 'getChoiceGroup'
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_gameFeature => Feature_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp4 => j_stringMaker%jm_append_1(j_name)
            jtemp3 => jtemp4%jm_append_1(j_ADD_CHOICE)
            jtemp2 => jtemp3%jm_append_1(j_gameFeature%jm_toString_0())
            call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, j_GET_CHOICE_GROUP)
            call j_choiceGroup%jm_append_2(j_gameFeature%jm_toString_0(), NullImage_jstatic_NULL_IMAGE())
            if (j_features%jm_isFeature_1(j_gameFeature)) then
                call j_choiceGroup%jm_setSelectedIndex_2(j_index, .true.)
            end if
            j_index = j_index + 1
        end do
        jresult => j_choiceGroup
        return
  end function

  recursive subroutine GameFeatureFormUtil_jm_addChoiceGroup_3(this, j_form, j_hashtable, j_option)
    class(GameFeatureFormUtil), target :: this
    class(CommandForm), target, optional :: j_form
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_option
    class(StringMaker), pointer :: j_stringMaker
    character(len=:), allocatable :: j_ADDING_CHOICE_GROUP
    character(len=:), allocatable :: j_ADD_CHOICE_GROUP
    integer(4) :: j_size
    type(JRef), allocatable :: j_objectArray(:)
    character(len=:), allocatable :: j_name
    integer(4) :: j_index
    class(HashtableUtil), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        j_ADDING_CHOICE_GROUP = 'Adding Choice Group: '
        j_ADD_CHOICE_GROUP = 'addChoiceGroup'
        j_size = j_hashtable%jm_size_0()
        jtemp5 => HashtableUtil_jm_getInstance_0()
        j_objectArray = jtemp5%jm_getKeysAsArray_1(j_hashtable)
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_name = j_objectArray((j_index) + 1)%v
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp7 => j_stringMaker%jm_append_1(j_ADDING_CHOICE_GROUP)
            jtemp6 => jtemp7%jm_append_1(j_name)
            call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, j_ADD_CHOICE_GROUP)
            call this%f_meUtil%jm_appendItem_2(j_form, this%jm_getChoiceGroup_3(j_hashtable, j_name, j_option))
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameFeatureFormUtil_jm_setDefault_1(this, j_form)
    class(GameFeatureFormUtil), target :: this
    class(CommandForm), target, optional :: j_form
    integer(4) :: j_size
    class(Item), pointer :: j_item
    integer(4) :: j_index
    class(GameFeatureUtil), pointer :: jtemp8
    class(GameConfigurationUtil), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = j_form%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_item => j_form%jm_get_1(j_index)
            if ((JR_className(j_item) == 'GameConfigurationGauge')) then
                jtemp9 => GameConfigurationUtil_jm_getInstance_0()
                call jtemp9%jm_setDefault_1(GameConfigurationGauge_jcast(j_item))
            else if ((JR_className(j_item) == 'ChoiceGroup')) then
                jtemp8 => GameFeatureUtil_jm_getInstance_0()
                call jtemp8%jm_setDefault_1(ChoiceGroup_jcast(j_item))
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module GameFeatureFormUtil_m

