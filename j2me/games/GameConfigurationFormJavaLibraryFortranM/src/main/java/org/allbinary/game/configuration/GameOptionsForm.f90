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
! package org.allbinary.game.configuration
module GameOptionsForm_m
  use JR_m
  use MIDPUtil_m
  use GameCommandsFactory_m
  use GameFeatureChoiceGroups_m
  use GameFeatureFormUtil_m
  use GameFeatureItemCommandListener_m
  use GameFeatureItemStateListener_m
  use SensorFeatureFactory_m
  use GameConfigurationPersistanceSingleton_m
  use KeyValuePersistance_m
  use BasicColor_m
  use MyCommandsFactory_m
  use CommandForm_m
  use OrientationData_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use BasicArrayList_m
  use HashtableUtil_m
  use StdUtil_m
  use ABHashtable_m
  use Integer_m
  use GameConfigurationTextInput_m
  use GameConfigurationSingleton_m
  use GameConfiguration_m
  use GameConfigurationGauge_m
  use GameConfigurationUtil_m
  use GameConfigurationCentral_m
  implicit none

  type, extends(CommandForm) :: GameOptionsForm
    class(MIDPUtil), pointer :: f_meUtil => null()
  contains
    procedure :: jm_closeClientInformation_1 => GameOptionsForm_jm_closeClientInformation_1
    procedure :: jm_addTextFieldsIfSimulated_0 => GameOptionsForm_jm_addTextFieldsIfSimulated_0
    procedure :: jm_addTextFields_0 => GameOptionsForm_jm_addTextFields_0
    procedure :: jm_addConfiguration_0 => GameOptionsForm_jm_addConfiguration_0
    procedure :: jm_initCommands_1 => GameOptionsForm_jm_initCommands_1
    procedure :: jm_save_1 => GameOptionsForm_jm_save_1
  end type


contains

  function GameOptionsForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameOptionsForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameOptionsForm)
      jresult => object
    end select
  end function

  recursive function GameOptionsForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(GameOptionsForm), pointer :: this
    class(GameFeatureFormUtil), pointer :: j_gameFeatureFormUtil
    class(GameFeatureChoiceGroups), pointer :: jtemp1
    class(GameFeatureChoiceGroups), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameOptionsForm'
    this%f_meUtil => MIDPUtil_jm_getInstance_0()
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        call this%jm_addConfiguration_0()
        j_gameFeatureFormUtil => GameFeatureFormUtil_jm_getInstance_0()
        jtemp1 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        call j_gameFeatureFormUtil%jm_addChoiceGroup_3(this, jtemp1%jm_get_0(), Choice_jstatic_EXCLUSIVE())
        jtemp2 => GameFeatureChoiceGroups_jm_getMultipleInstance_0()
        call j_gameFeatureFormUtil%jm_addChoiceGroup_3(this, jtemp2%jm_get_0(), Choice_jstatic_MULTIPLE())
        call this%jm_initCommands_1(j_commandListener)
        call this%jm_setItemStateListener_1(GameFeatureItemStateListener_jnew_1(this))
        call this%jm_addTextFieldsIfSimulated_0()
  end function

  recursive subroutine GameOptionsForm_jm_closeClientInformation_1(this, j_abeClientInformation)
    class(GameOptionsForm), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%CommandForm%jm_close_0()
        call this%jm_save_1(j_abeClientInformation)
  end subroutine

  recursive subroutine GameOptionsForm_jm_addTextFieldsIfSimulated_0(this)
    class(GameOptionsForm), target :: this
    character(len=:), allocatable :: j_key
    class(ABHashtable), pointer :: j_hashtable
    class(JObject), pointer :: j_listCanBeNull
    class(BasicArrayList), pointer :: j_list
    class(OrientationData), pointer :: jtemp3
    class(GameFeatureChoiceGroups), pointer :: jtemp4
    class(SensorFeatureFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => OrientationData_jm_getInstance_0()
        j_key = jtemp3%f_ORIENTATION_SENSOR_INPUT
        jtemp4 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        j_hashtable => jtemp4%jm_get_0()
        if (associated(j_hashtable)) then
            j_listCanBeNull => j_hashtable%jm_get_1(j_key)
            if (associated(j_listCanBeNull)) then
                j_list => BasicArrayList_jcast(j_listCanBeNull)
                jtemp5 => SensorFeatureFactory_jm_getInstance_0()
                if (j_list%jm_contains_1(jtemp5%f_SIMULATED_ORIENTATION_SENSORS)) then
                    call this%jm_addTextFields_0()
                end if
            end if
        end if
  end subroutine

  recursive subroutine GameOptionsForm_jm_addTextFields_0(this)
    class(GameOptionsForm), target :: this
    class(ABHashtable), pointer :: j_hashtable
    integer(4) :: j_size
    type(JRef), allocatable :: j_objectArray(:)
    class(GameConfigurationTextInput), pointer :: j_gameConfigurationTextInput
    class(TextField), pointer :: j_textField
    integer(4) :: j_index
    class(HashtableUtil), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_hashtable => GameConfigurationTextInput_jm_getHashtable_0()
        j_size = j_hashtable%jm_size_0()
        jtemp6 => HashtableUtil_jm_getInstance_0()
        j_objectArray = jtemp6%jm_getKeysAsArray_1(j_hashtable)
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_gameConfigurationTextInput => GameConfigurationTextInput_jcast(j_hashtable%jm_get_1(j_objectArray((j_index) + 1)%v))
            j_textField => TextField_jnew_4(j_gameConfigurationTextInput%jm_getLabel_0(), j_gameConfigurationTextInput%jm_getText_0(), 30, TextField_jstatic_ANY())
            call this%f_meUtil%jm_appendItem_2(this, j_textField)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameOptionsForm_jm_addConfiguration_0(this)
    class(GameOptionsForm), target :: this
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_NAME
    class(BasicArrayList), pointer :: j_list
    class(Command), pointer :: j_GAUGE_CHANGE
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_size
    class(GameConfiguration), pointer :: j_gameConfiguration
    class(GameConfigurationGauge), pointer :: j_gauge
    integer(4) :: j_index
    class(GameConfigurationSingleton), pointer :: jtemp7
    class(MyCommandsFactory), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'addConfiguration'
        j_NAME = 'Name: '
        jtemp7 => GameConfigurationSingleton_jm_getInstance_0()
        j_list => jtemp7%jm_getOptionsBasicArrayList_0()
        jtemp8 => MyCommandsFactory_jm_getInstance_0()
        j_GAUGE_CHANGE => jtemp8%f_GAUGE_CHANGE
        j_stringMaker => StringMaker_jnew_0()
        j_size = j_list%jm_size_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_gameConfiguration => GameConfiguration_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp10 => j_stringMaker%jm_append_1(j_NAME)
            jtemp9 => jtemp10%jm_append_1(j_gameConfiguration%jm_toString_0())
            call this%f_logUtil%jm_putF_3(jtemp9%jm_toString_0(), this, j_METHOD_NAME)
            j_gauge => GameConfigurationGauge_jnew_1(j_gameConfiguration)
            call j_gauge%jm_setDefaultCommand_1(j_GAUGE_CHANGE)
            call j_gauge%jm_setItemCommandListener_1(GameFeatureItemCommandListener_jnew_1(this))
            call this%f_meUtil%jm_appendItem_2(this, j_gauge)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine GameOptionsForm_jm_initCommands_1(this, j_cmdListener)
    class(GameOptionsForm), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        call this%jm_removeAllCommands_0()
        call this%jm_addCommand_1(j_gameCommandsFactory%f_CLOSE_OPTIONS)
        call this%jm_addCommand_1(j_gameCommandsFactory%f_DEFAULT_OPTIONS)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine GameOptionsForm_jm_save_1(this, j_abeClientInformation)
    class(GameOptionsForm), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    integer(4) :: j_size
    class(Item), pointer :: j_item
    integer(4) :: j_index
    class(ABHashtable), pointer :: j_hashtable
    class(GameConfiguration), pointer :: j_SCALE
    class(KeyValuePersistance), pointer :: j_keyValuePersistance
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size2
    integer(4) :: j_integer
    class(GameConfigurationUtil), pointer :: jtemp11
    class(GameConfigurationUtil), pointer :: jtemp12
    class(StdUtil), pointer :: jtemp13
    class(GameConfigurationCentral), pointer :: jtemp14
    class(Integer), pointer :: jtemp15
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%jm_size_0()
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_item => this%jm_get_1(j_index)
            if ((JR_className(j_item) == 'GameConfigurationGauge')) then
                jtemp11 => GameConfigurationUtil_jm_getInstance_0()
                call jtemp11%jm_update_1(GameConfigurationGauge_jcast(j_item))
            else if ((JR_className(j_item) == 'TextField')) then
                call GameConfigurationTextInput_jm_update_1(TextField_jcast(j_item))
            end if
            j_index = j_index + 1
        end do
        jtemp12 => GameConfigurationUtil_jm_getInstance_0()
        call jtemp12%jm_updateCompetitionValue_0()
        jtemp13 => StdUtil_jm_getInstance_0()
        j_hashtable => jtemp13%jm_createHashtable_0()
        jtemp14 => GameConfigurationCentral_jm_getInstance_0()
        j_SCALE => jtemp14%f_SCALE
        jtemp15 => j_SCALE%jm_getValue_0()
        jdiscardRef => j_hashtable%jm_put_2(j_SCALE%jm_getName_0(), JR_intString(jtemp15%jm_intValue_0()))
        j_keyValuePersistance => GameConfigurationPersistanceSingleton_jm_getInstance_0()
        call j_keyValuePersistance%jm_clear_0()
        call j_keyValuePersistance%jm_loadAll_1(j_abeClientInformation)
        j_list => j_keyValuePersistance%jm_getIds_0()
        call j_keyValuePersistance%jm_save_2(j_abeClientInformation, j_hashtable)
        j_size2 = j_list%jm_size_0()
        continue
        j_index = 0
        do while ((j_index < j_size2))
            j_integer = JR_unboxInt(j_list%f_objectArray((j_index) + 1)%v)
            call j_keyValuePersistance%jm_delete_2(j_abeClientInformation, int(j_integer, 4))
            j_index = j_index + 1
        end do
  end subroutine
end module GameOptionsForm_m

