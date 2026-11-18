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
module LoadGameForm_m
  use JR_m
  use NullImage_m
  use MIDPUtil_m
  use GameCommandsFactory_m
  use GamePersistanceSingleton_m
  use BasicColor_m
  use CommandForm_m
  use StringMaker_m
  use StringUtil_m
  use BasicArrayList_m
  use Integer_m
  implicit none

  type, extends(CommandForm) :: LoadGameForm
    class(MIDPUtil), pointer :: f_meUtil => null()
    logical :: f_areChoices = .false.
  contains
    procedure :: jm_initCommands_1 => LoadGameForm_jm_initCommands_1
    procedure :: jm_update_0 => LoadGameForm_jm_update_0
    procedure :: jm_add_3 => LoadGameForm_jm_add_3
    procedure :: jm_getChoiceGroup_3 => LoadGameForm_jm_getChoiceGroup_3
    procedure :: jm_getSelectedId_0 => LoadGameForm_jm_getSelectedId_0
    procedure :: jm_getSelectedText_0 => LoadGameForm_jm_getSelectedText_0
  end type


contains

  function LoadGameForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LoadGameForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LoadGameForm)
      jresult => object
    end select
  end function

  recursive function LoadGameForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(LoadGameForm), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LoadGameForm'
    this%f_meUtil => MIDPUtil_jm_getInstance_0()
    
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        call this%jm_update_0()
        call this%jm_initCommands_1(j_commandListener)
  end function

  recursive subroutine LoadGameForm_jm_initCommands_1(this, j_cmdListener)
    class(LoadGameForm), target :: this
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
        call this%jm_addCommand_1(j_gameCommandsFactory%f_LOAD_FILE)
        call this%jm_addCommand_1(j_gameCommandsFactory%f_DELETE_FILE)
        call this%jm_addCommand_1(j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine LoadGameForm_jm_update_0(this)
    class(LoadGameForm), target :: this
    class(BasicArrayList), pointer :: j_list
    class(GamePersistanceSingleton), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GamePersistanceSingleton_jm_getInstance_0()
        j_list => jtemp1%jm_getIds_0()
        call this%jm_deleteAll_0()
        if ((j_list%jm_size_0() > 0)) then
            call this%jm_add_3(j_list, 'Select A Saved Game', Choice_jstatic_EXCLUSIVE())
            this%f_areChoices = .true.
        else
            jtemp2 => StringUtil_jm_getInstance_0()
            call this%f_meUtil%jm_appendItem_2(this, StringItem_jnew_3('No Saved Games', jtemp2%f_EMPTY_STRING, Item_jstatic_PLAIN()))
            this%f_areChoices = .false.
        end if
        call this%CommandForm%jm_update_0()
  end subroutine

  recursive subroutine LoadGameForm_jm_add_3(this, j_list, j_name, j_option)
    class(LoadGameForm), target :: this
    class(BasicArrayList), target, optional :: j_list
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_option
    class(ChoiceGroup), pointer :: j_choiceGroup
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_choiceGroup => this%jm_getChoiceGroup_3(j_list, j_name, j_option)
        if ((j_list%jm_size_0() > 0)) then
            call j_choiceGroup%jm_setSelectedIndex_2(0, .true.)
        end if
        call this%f_meUtil%jm_appendItem_2(this, j_choiceGroup)
  end subroutine

  recursive function LoadGameForm_jm_getChoiceGroup_3(this, j_list, j_name, j_option) result(jresult)
    class(LoadGameForm), target :: this
    class(BasicArrayList), target, optional :: j_list
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_option
    class(ChoiceGroup), pointer :: jresult
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_ADDING_CHOICE
    class(ChoiceGroup), pointer :: j_choiceGroup
    integer(4) :: j_size
    class(JObject), pointer :: j_anyType
    integer(4) :: j_index
    class(StringUtil), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'getChoiceGroup'
        j_ADDING_CHOICE = 'Adding Choice: '
        jtemp3 => StringUtil_jm_getInstance_0()
        j_choiceGroup => ChoiceGroup_jnew_4(j_name, j_option, jtemp3%jm_getArrayInstance_0(), NullImage_jstatic_NULL_IMAGE_ARRAY())
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_anyType => j_list%f_objectArray((j_index) + 1)%v
            jtemp6 => StringMaker_jnew_0()
            jtemp5 => jtemp6%jm_append_1(j_ADDING_CHOICE)
            jtemp4 => jtemp5%jm_append_1(JR_toString(j_anyType))
            call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, j_METHOD_NAME)
            call j_choiceGroup%jm_append_2(JR_toString(j_anyType), NullImage_jstatic_NULL_IMAGE())
            j_index = j_index + 1
        end do
        jresult => j_choiceGroup
        return
  end function

  recursive function LoadGameForm_jm_getSelectedId_0(this) result(jresult)
    class(LoadGameForm), target :: this
    integer(4) :: jresult
    class(ChoiceGroup), pointer :: j_choiceGroup
        if (this%f_areChoices) then
            j_choiceGroup => ChoiceGroup_jcast(this%jm_get_1(0))
            jresult = j_choiceGroup%jm_getSelectedIndex_0()
            return
        else
            jresult = (-1)
            return
        end if
  end function

  recursive function LoadGameForm_jm_getSelectedText_0(this) result(jresult)
    class(LoadGameForm), target :: this
    integer(4) :: jresult
    class(ChoiceGroup), pointer :: j_choiceGroup
    integer(4) :: j_value
    class(JObject), pointer :: jtemp7
        if (this%f_areChoices) then
            j_choiceGroup => ChoiceGroup_jcast(this%jm_get_1(0))
            jtemp7 => j_choiceGroup%jm_getString_1(j_choiceGroup%jm_getSelectedIndex_0())
            j_value = jtemp7%jm_intValue_0()
            jresult = j_value
            return
        else
            jresult = (-1)
            return
        end if
  end function
end module LoadGameForm_m

