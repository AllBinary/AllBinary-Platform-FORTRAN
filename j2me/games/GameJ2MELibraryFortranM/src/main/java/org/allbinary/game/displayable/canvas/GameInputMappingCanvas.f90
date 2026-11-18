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
! package org.allbinary.game.displayable.canvas
module GameInputMappingCanvas_m
  use JR_m
  use GameCommandsFactory_m
  use GameKey_m
  use GameKeyFactory_m
  use Input_m
  use InputFactory_m
  use PlatformInputMappingFactory_m
  use InputMappingInterface_m
  use PersistentInputMapping_m
  use AllBinaryGameLayerManager_m
  use ColorFillBasePaintable_m
  use ColorFillPaintableFactory_m
  use HelpPaintable_m
  use InputMappingHelpPaintable_m
  use ProcessPaintable_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use BasicArrayList_m
  use Integer_m
  use GameCommandCanvas_m
  use GameInputMappingInstructionsCanvas_m
  implicit none

  type, extends(GameCommandCanvas) :: GameInputMappingCanvas
    class(ProcessPaintable), pointer :: f_paintable => null()
    class(InputMappingHelpPaintable), pointer :: f_helpPaintable => null()
    class(ColorFillBasePaintable), pointer :: f_colorFillPaintable => null()
    class(PersistentInputMapping), pointer :: f_inputMapping => null()
    class(GameKey), pointer :: f_NONE => null()
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
    class(GameKey), pointer :: f_selectedGameKey => null()
    class(Input), pointer :: f_selectedInput => null()
    class(InputFactory), pointer :: f_inputFactory => null()
  contains
    procedure :: jm_close_0 => GameInputMappingCanvas_jm_close_0
    procedure :: jm_initCommands_1 => GameInputMappingCanvas_jm_initCommands_1
    procedure :: jm_keyPressed_1 => GameInputMappingCanvas_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => GameInputMappingCanvas_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => GameInputMappingCanvas_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => GameInputMappingCanvas_jm_keyPressedByDevice_2
    procedure :: jm_addGameKey_2 => GameInputMappingCanvas_jm_addGameKey_2
    procedure :: jm_processInputMapping_2 => GameInputMappingCanvas_jm_processInputMapping_2
    procedure :: jm_setSelectedAction_1 => GameInputMappingCanvas_jm_setSelectedAction_1
    procedure :: jm_gameActionCrud_2 => GameInputMappingCanvas_jm_gameActionCrud_2
    procedure :: jm_addNewMapping_2 => GameInputMappingCanvas_jm_addNewMapping_2
    procedure :: jm_deleteCurrentMapping_0 => GameInputMappingCanvas_jm_deleteCurrentMapping_0
    procedure :: jm_setDefault_0 => GameInputMappingCanvas_jm_setDefault_0
    procedure :: jm_update_0 => GameInputMappingCanvas_jm_update_0
    procedure :: jm_paint_1 => GameInputMappingCanvas_jm_paint_1
  end type

  ! GameInputMappingCanvas used as a InputMappingInterface
  type, extends(InputMappingInterface) :: GameInputMappingCanvas_jas_InputMappingInterface
    class(GameInputMappingCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_processInputMapping_2 => GameInputMappingCanvas_jas_InputMappingInterface_jm_processInputMapping_2
  end type

  character(len=:), allocatable, save :: GameInputMappingCanvas_jcell_NAME
  logical, save :: GameInputMappingCanvas_jset_NAME = .false.
  class(Command), pointer, save :: GameInputMappingCanvas_jcell_DISPLAY => null()
  logical, save :: GameInputMappingCanvas_jset_DISPLAY = .false.
  class(Command), pointer, save :: GameInputMappingCanvas_jcell_DEFAULT => null()
  logical, save :: GameInputMappingCanvas_jset_DEFAULT = .false.

contains

  function GameInputMappingCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputMappingCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputMappingCanvas)
      jresult => object
    end select
  end function

  function GameInputMappingCanvas_jas_InputMappingInterface_jnew(object) result(jresult)
    class(GameInputMappingCanvas), target :: object
    class(GameInputMappingCanvas_jas_InputMappingInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameInputMappingCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine GameInputMappingCanvas_jas_InputMappingInterface_jm_processInputMapping_2(this, j_gameKey, j_input)
    class(GameInputMappingCanvas_jas_InputMappingInterface), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(Input), target, optional :: j_input
    call this%jtarget%jm_processInputMapping_2(j_gameKey, j_input)
  end subroutine

  function GameInputMappingCanvas_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. GameInputMappingCanvas_jset_NAME) then
      GameInputMappingCanvas_jset_NAME = .true.
      GameInputMappingCanvas_jcell_NAME = 'GameInputMappingCanvas'
    end if
    jresult = GameInputMappingCanvas_jcell_NAME
  end function

  subroutine GameInputMappingCanvas_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    GameInputMappingCanvas_jset_NAME = .true.
    GameInputMappingCanvas_jcell_NAME = jvalue
  end subroutine

  function GameInputMappingCanvas_jstatic_DISPLAY() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. GameInputMappingCanvas_jset_DISPLAY) then
      GameInputMappingCanvas_jset_DISPLAY = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    GameInputMappingCanvas_jcell_DISPLAY => Command_jnew_4('Controls', jtemp1%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    end if
    jresult => GameInputMappingCanvas_jcell_DISPLAY
  end function

  subroutine GameInputMappingCanvas_jsetstatic_DISPLAY(jvalue)
    class(Command), target, optional :: jvalue
    GameInputMappingCanvas_jset_DISPLAY = .true.
    if (present(jvalue)) then
      GameInputMappingCanvas_jcell_DISPLAY => jvalue
    else
      GameInputMappingCanvas_jcell_DISPLAY => null()
    end if
  end subroutine

  function GameInputMappingCanvas_jstatic_DEFAULT() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp2
    if (.not. GameInputMappingCanvas_jset_DEFAULT) then
      GameInputMappingCanvas_jset_DEFAULT = .true.
      jtemp2 => StringUtil_jm_getInstance_0()
    GameInputMappingCanvas_jcell_DEFAULT => Command_jnew_4('Default', jtemp2%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    end if
    jresult => GameInputMappingCanvas_jcell_DEFAULT
  end function

  subroutine GameInputMappingCanvas_jsetstatic_DEFAULT(jvalue)
    class(Command), target, optional :: jvalue
    GameInputMappingCanvas_jset_DEFAULT = .true.
    if (present(jvalue)) then
      GameInputMappingCanvas_jcell_DEFAULT => jvalue
    else
      GameInputMappingCanvas_jcell_DEFAULT => null()
    end if
  end subroutine

  recursive function GameInputMappingCanvas_jnew_4(j_abeClientInformation, j_commandListener, j_allBinaryGameLayerManager, j_helpPaintable) result(this)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
    class(HelpPaintable), target, optional :: j_helpPaintable
    class(GameInputMappingCanvas), pointer :: this
    class(PlatformInputMappingFactory), pointer :: jtemp4
    class(ColorFillPaintableFactory), pointer :: jtemp5
    class(GameKeyFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameInputMappingCanvas'
    
    
    
    
    jtemp3 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp3%f_NONE
    
    this%f_selectedGameKey => this%f_NONE
    this%f_selectedInput => this%f_NONE
    this%f_inputFactory => InputFactory_jm_getInstance_0()
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        if ((.not. present(j_helpPaintable))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        this%f_abeClientInformation => j_abeClientInformation
        this%f_helpPaintable => InputMappingHelpPaintable_jcast(j_helpPaintable)
        jtemp4 => PlatformInputMappingFactory_jm_getInstance_0()
        this%f_inputMapping => jtemp4%jm_getPersistentInputMappingInstance_0()
        this%f_paintable => ProcessPaintable_jnew_0()
        jtemp5 => ColorFillPaintableFactory_jm_getInstance_0()
        this%f_colorFillPaintable => jtemp5%jm_getInstance_2(j_allBinaryGameLayerManager%jm_getBackgroundBasicColor_0(), .false.)
  end function

  recursive subroutine GameInputMappingCanvas_jm_close_0(this)
    class(GameInputMappingCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%GameCommandCanvas%jm_close_0()
        call this%f_paintable%jm_process_0()
        this%f_selectedGameKey => this%f_NONE
        this%f_selectedInput => this%f_NONE
        call this%jm_update_0()
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_initCommands_1(this, j_cmdListener)
    class(GameInputMappingCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        jtemp6 => GameCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp6%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_addCommand_1(GameInputMappingCanvas_jstatic_DEFAULT())
        call this%jm_addCommand_1(GameInputMappingInstructionsCanvas_jstatic_DISPLAY())
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_keyPressed_1(this, j_keyCode)
    class(GameInputMappingCanvas), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyPressedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_keyReleased_1(this, j_keyCode)
    class(GameInputMappingCanvas), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyReleasedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_keyRepeated_1(this, j_keyCode)
    class(GameInputMappingCanvas), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyRepeatedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(GameInputMappingCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_addGameKey_2(j_keyCode, .false.)
        call this%GameCommandCanvas%jm_keyPressedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_addGameKey_2(this, j_keyCode, j_repeated)
    class(GameInputMappingCanvas), target :: this
    integer(4), value :: j_keyCode
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(Input), pointer :: j_input
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1('Raw Device Key Code: ')
            jtemp7 => jtemp8%jm_append_1(Integer_jm_toHexString_1(j_keyCode))
            call this%f_logUtil%jm_putF_3(jtemp7%jm_toString_0(), this, this%f_gameInputStrings%f_ADD_KEY_EVENT)
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this, j_keyCode)
            j_input => this%f_inputFactory%jm_getInstanceById_1(j_keyCode)
            call this%jm_processInputMapping_2(j_gameKey, j_input)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_processInputMapping_2(this, j_gameKey, j_input)
    class(GameInputMappingCanvas), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(Input), target, optional :: j_input
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Start Passed GameKey: ')
        jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
        jdiscardRef => j_stringBuffer%jm_append_1(' Input: ')
        jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_PROCESS)
        if ((.not. JR_same(this%f_selectedGameKey, this%f_NONE))) then
            call this%jm_gameActionCrud_2(j_gameKey, j_input)
        else
            call this%jm_setSelectedAction_1(j_gameKey)
        end if
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_setSelectedAction_1(this, j_gameKey)
    class(GameInputMappingCanvas), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp12 => StringMaker_jnew_0()
        jtemp11 => jtemp12%jm_append_1('Selected GameKey: ')
        jtemp10 => jtemp11%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, 'setSelectedAction')
        this%f_selectedGameKey => j_gameKey
        this%f_selectedInput => this%f_NONE
        call this%f_helpPaintable%jm_update_2(this%f_selectedGameKey, this%f_selectedInput)
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_gameActionCrud_2(this, j_gameKey, j_input)
    class(GameInputMappingCanvas), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(Input), target, optional :: j_input
    class(StringMaker), pointer :: j_stringBuffer
    class(BasicArrayList), pointer :: j_list
    logical :: j_isInputAlreadyMappedToSelectedAction
    class(InputToGameKeyMapping), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Start GameKey: ')
        jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
        jdiscardRef => j_stringBuffer%jm_append_1(' Input: ')
        jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'gameActionCrud')
        if (JR_same(this%f_selectedInput, this%f_NONE)) then
            jtemp13 => this%f_inputMapping%jm_getInputMapping_0()
            j_list => jtemp13%jm_getMappedInput_1(this%f_selectedGameKey)
            j_isInputAlreadyMappedToSelectedAction = j_list%jm_contains_1(j_input)
            if (j_isInputAlreadyMappedToSelectedAction) then
                jtemp16 => StringMaker_jnew_0()
                jtemp15 => jtemp16%jm_append_1('Already Mapped Input: ')
                jtemp14 => jtemp15%jm_append_1(JR_toString(this%f_stringUtil))
                call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, 'gameActionCrud')
                this%f_selectedInput => j_input
                call this%f_helpPaintable%jm_update_2(this%f_selectedGameKey, this%f_selectedInput)
                call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
            else
                call this%jm_addNewMapping_2(j_gameKey, j_input)
            end if
        else if (this%f_inputMapping%jm_isDelete_1(j_input)) then
            call this%jm_deleteCurrentMapping_0()
        else
            call this%jm_setSelectedAction_1(j_gameKey)
        end if
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_addNewMapping_2(this, j_gameKey, j_input)
    class(GameInputMappingCanvas), target :: this
    class(GameKey), target, optional :: j_gameKey
    class(Input), target, optional :: j_input
    character(len=:), allocatable :: j_METHOD_NAME
    logical :: j_isInputAlreadyMapped
    class(StringMaker), pointer :: j_stringBuffer
    class(InputToGameKeyMapping), pointer :: jtemp17
    class(InputToGameKeyMapping), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'addNewMapping'
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, j_METHOD_NAME)
        jtemp17 => this%f_inputMapping%jm_getInputMapping_0()
        j_isInputAlreadyMapped = jtemp17%jm_isMapped_1(j_input)
        if (((.not. j_isInputAlreadyMapped) .and. (.not. this%f_inputMapping%jm_isSystemInput_1(j_input)))) then
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1('Add Key Mapping : GameKey: ')
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
            jdiscardRef => j_stringBuffer%jm_append_1(' Input: ')
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
            jtemp18 => this%f_inputMapping%jm_getInputMapping_0()
            call jtemp18%jm_add_2(this%f_selectedGameKey, j_input)
            this%f_selectedInput => j_input
            call this%jm_update_0()
        else
            call this%f_logUtil%jm_putF_3('Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to', this, j_METHOD_NAME)
            call this%jm_setSelectedAction_1(j_gameKey)
        end if
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_deleteCurrentMapping_0(this)
    class(GameInputMappingCanvas), target :: this
    character(len=:), allocatable :: j_METHOD_NAME
    class(BasicArrayList), pointer :: j_list
    class(StringMaker), pointer :: j_stringBuffer
    class(InputToGameKeyMapping), pointer :: jtemp19
    class(InputToGameKeyMapping), pointer :: jtemp20
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'deleteCurrentMapping'
        jtemp19 => this%f_inputMapping%jm_getInputMapping_0()
        j_list => jtemp19%jm_getMappedInput_1(this%f_selectedGameKey)
        if ((j_list%jm_size_0() > 1)) then
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1('Start GameKey: ')
            jdiscardRef => j_stringBuffer%jm_append_1('Remove Key Mapping: GameKey: ')
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
            jdiscardRef => j_stringBuffer%jm_append_1(' Input: ')
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_stringUtil))
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_METHOD_NAME)
            jtemp20 => this%f_inputMapping%jm_getInputMapping_0()
            call jtemp20%jm_remove_2(this%f_selectedGameKey, this%f_selectedInput)
            this%f_selectedInput => this%f_NONE
            call this%jm_update_0()
        else
            call this%f_logUtil%jm_putF_3('Can''t Remove Last Key Mapping', this, j_METHOD_NAME)
        end if
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_setDefault_0(this)
    class(GameInputMappingCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_inputMapping%jm_setDefault_1(this%f_abeClientInformation)
        call this%f_helpPaintable%jm_update_2(this%f_NONE, this%f_NONE)
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_update_0(this)
    class(GameInputMappingCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_inputMapping%jm_update_1(this%f_abeClientInformation)
        call this%f_helpPaintable%jm_update_2(this%f_selectedGameKey, this%f_selectedInput)
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive subroutine GameInputMappingCanvas_jm_paint_1(this, j_graphics)
    class(GameInputMappingCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
        call this%f_helpPaintable%jm_paint_1(j_graphics)
        call this%f_paintable%jm_paint_1(j_graphics)
        call this%GameCommandCanvas%jm_paint_1(j_graphics)
  end subroutine
end module GameInputMappingCanvas_m

