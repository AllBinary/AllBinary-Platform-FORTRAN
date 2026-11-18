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
module GameCommandCanvas_m
  use JR_m
  use NullCommandListener_m
  use Processor_m
  use GameCommandsFactory_m
  use Features_m
  use InputFeatureFactory_m
  use RepaintBehavior_m
  use GameInputStrings_m
  use GameKey_m
  use GameKeyFactory_m
  use PlatformInputMappingFactory_m
  use DownGameKeyEventHandler_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use GameKeyEventHandler_m
  use UpGameKeyEventHandler_m
  use InputToGameKeyMapping_m
  use PointFactory_m
  use Rectangle_m
  use BasicColor_m
  use CanvasStrings_m
  use DisplayInfoSingleton_m
  use MyCanvas_m
  use DisplayChangeEvent_m
  use DisplayChangeEventHandler_m
  use DisplayChangeEventListener_m
  use ScreenRepaintProcessorFactory_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use CommandCurrentSelectionFormFactory_m
  use FormPaintable_m
  use FormTypeFactory_m
  use PaintableForm_m
  use ScrollSelectionForm_m
  use ScrollSelectionFormNoneFactory_m
  use CommandTextItemArrayFactory_m
  use ABCustomItem_m
  use AllCommandsVisitor_m
  use NullPaintable_m
  use Paintable_m
  use BasicMotionGesturesHandler_m
  use ForcedLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonSeps_m
  use BasicArrayListD_m
  use MenuListener_m
  use NoMenuInputProcessor_m
  use BasicMenuInputProcessor_m
  use ImmediateCommandFormInputProcessor_m
  implicit none

  type, extends(MyCanvas) :: GameCommandCanvas
    class(Processor), pointer :: f_repaintProcessor => null()
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
    class(BasicColor), pointer :: f_foregroundBasicColor => null()
    class(BasicColor), pointer :: f_backgroundBasicColor => null()
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
    class(GameKeyFactory), pointer :: f_gameKeyFactory => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    class(DownGameKeyEventHandler), pointer :: f_downGameKeyEventHandler => null()
    class(UpGameKeyEventHandler), pointer :: f_upGameKeyEventHandler => null()
    class(RepaintBehavior), pointer :: f_repaintBehavior => null()
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_foregroundColor = 0
    integer(4) :: f_backgroundColor = 0
    class(BasicMenuInputProcessor), pointer :: f_menuInputProcessor => null()
    class(Paintable), pointer :: f_menuPaintable => null()
    class(PaintableForm), pointer :: f_menuForm => null()
    logical :: f_isSingleKeyRepeatableProcessing = .false.
    integer(4) :: f_fontHeight = 0
  contains
    procedure :: jm_updateMeasurement_1 => GameCommandCanvas_jm_updateMeasurement_1
    procedure :: jm_onEvent_1 => GameCommandCanvas_jm_onEvent_1
    procedure :: jm_onDisplayChangeEvent_1 => GameCommandCanvas_jm_onDisplayChangeEvent_1
    procedure :: jm_initCommands_1 => GameCommandCanvas_jm_initCommands_1
    procedure :: jm_initMenu_0 => GameCommandCanvas_jm_initMenu_0
    procedure :: jm_createForm_0 => GameCommandCanvas_jm_createForm_0
    procedure :: jm_createRectangle_1 => GameCommandCanvas_jm_createRectangle_1
    procedure :: jm_open_0 => GameCommandCanvas_jm_open_0
    procedure :: jm_close_0 => GameCommandCanvas_jm_close_0
    procedure :: jm_update_0 => GameCommandCanvas_jm_update_0
    procedure :: jm_getSourceId_0 => GameCommandCanvas_jm_getSourceId_0
    procedure :: jm_keyPressed_1 => GameCommandCanvas_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => GameCommandCanvas_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => GameCommandCanvas_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => GameCommandCanvas_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => GameCommandCanvas_jm_keyReleasedByDevice_2
    procedure :: jm_keyRepeatedByDevice_2 => GameCommandCanvas_jm_keyRepeatedByDevice_2
    procedure :: jm_addGameKeyEvent_3 => GameCommandCanvas_jm_addGameKeyEvent_3
    procedure :: jm_removeGameKeyEvent_3 => GameCommandCanvas_jm_removeGameKeyEvent_3
    procedure :: jm_paint_1 => GameCommandCanvas_jm_paint_1
    procedure :: jm_setMenuInputProcessor_1 => GameCommandCanvas_jm_setMenuInputProcessor_1
    procedure :: jm_getMenuInputProcessor_0 => GameCommandCanvas_jm_getMenuInputProcessor_0
  end type

  ! GameCommandCanvas used as a MenuListener
  type, extends(MenuListener) :: GameCommandCanvas_jas_MenuListener
    class(GameCommandCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_open_0 => GameCommandCanvas_jas_MenuListener_jm_open_0
    procedure :: jm_close_0 => GameCommandCanvas_jas_MenuListener_jm_close_0
  end type

  ! GameCommandCanvas used as a DisplayChangeEventListener
  type, extends(DisplayChangeEventListener) :: GameCommandCanvas_jas_DisplayChangeEventListener
    class(GameCommandCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_onDisplayChangeEvent_1 => GameCommandCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1
  end type

  ! GameCommandCanvas used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: GameCommandCanvas_jas_UpdateMyFontInterface
    class(GameCommandCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => GameCommandCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  integer(4), save :: GameCommandCanvas_jcell_id
  logical, save :: GameCommandCanvas_jset_id = .false.

contains

  function GameCommandCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCommandCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCommandCanvas)
      jresult => object
    end select
  end function

  function GameCommandCanvas_jas_MenuListener_jnew(object) result(jresult)
    class(GameCommandCanvas), target :: object
    class(GameCommandCanvas_jas_MenuListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameCommandCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine GameCommandCanvas_jas_MenuListener_jm_open_0(this)
    class(GameCommandCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_open_0()
  end subroutine

  recursive subroutine GameCommandCanvas_jas_MenuListener_jm_close_0(this)
    class(GameCommandCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_close_0()
  end subroutine

  function GameCommandCanvas_jas_DisplayChangeEventListener_jnew(object) result(jresult)
    class(GameCommandCanvas), target :: object
    class(GameCommandCanvas_jas_DisplayChangeEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameCommandCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine GameCommandCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(GameCommandCanvas_jas_DisplayChangeEventListener), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    call this%jtarget%jm_onDisplayChangeEvent_1(j_displayChangeEvent)
  end subroutine

  function GameCommandCanvas_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(GameCommandCanvas), target :: object
    class(GameCommandCanvas_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameCommandCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine GameCommandCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(GameCommandCanvas_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function GameCommandCanvas_jstatic_id() result(jresult)
    integer(4) :: jresult
    if (.not. GameCommandCanvas_jset_id) then
      GameCommandCanvas_jset_id = .true.
      GameCommandCanvas_jcell_id = 0
    end if
    jresult = GameCommandCanvas_jcell_id
  end function

  subroutine GameCommandCanvas_jsetstatic_id(jvalue)
    integer(4), value :: jvalue
    GameCommandCanvas_jset_id = .true.
    GameCommandCanvas_jcell_id = jvalue
  end subroutine

  recursive function GameCommandCanvas_jnew_4(j_cmdListener, j_name, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_name
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(GameCommandCanvas), pointer :: this
    class(CanvasStrings), pointer :: jtemp6
    class(ScreenRepaintProcessorFactory), pointer :: jtemp1
    class(PersistentInputMapping), pointer :: jtemp2
    class(PlatformInputMappingFactory), pointer :: jtemp3
    class(Features), pointer :: jtemp4
    class(InputFeatureFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameCommandCanvas'
    jtemp1 => ScreenRepaintProcessorFactory_jm_getInstance_0()
    this%f_repaintProcessor => jtemp1%jm_create_1(this)
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
    
    
    jtemp3 => PlatformInputMappingFactory_jm_getInstance_0()
    jtemp2 => jtemp3%jm_getPersistentInputMappingInstance_0()
    this%f_inputToGameKeyMapping => jtemp2%jm_getInputMapping_0()
    this%f_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_downGameKeyEventHandler => DownGameKeyEventHandler_jm_getInstance_0()
    this%f_upGameKeyEventHandler => UpGameKeyEventHandler_jm_getInstance_0()
    
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    
    
    this%f_menuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_menuPaintable => NullPaintable_jm_getInstance_0()
    this%f_menuForm => PaintableForm_jm_getNullPaintableForm_0()
    jtemp5 => InputFeatureFactory_jm_getInstance_0()
    jtemp4 => Features_jm_getInstance_0()
    this%f_isSingleKeyRepeatableProcessing = jtemp4%jm_isFeature_1(jtemp5%f_SINGLE_KEY_REPEAT_PRESS)
    this%f_fontHeight = 0
        jtemp6 => CanvasStrings_jm_getInstance_0()
        continue ! super()
        this%f_repaintBehavior => RepaintBehavior_jm_getInstance_0()
        this%f_foregroundBasicColor => j_foregroundBasicColor
        this%f_backgroundBasicColor => j_backgroundBasicColor
        this%f_foregroundColor = this%f_foregroundBasicColor%jm_intValue_0()
        this%f_backgroundColor = this%f_backgroundBasicColor%jm_intValue_0()
        call this%jm_initCommands_1(j_cmdListener)
        if ((.not. JR_same(j_cmdListener, NullCommandListener_jstatic_NULL_COMMAND_LISTENER()))) then
            continue ! try
                call this%jm_initMenu_0()
                call this%f_repaintProcessor%jm_process_0()
        end if
  end function

  recursive subroutine GameCommandCanvas_jm_updateMeasurement_1(this, j_graphics)
    class(GameCommandCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(Rectangle), pointer :: j_rectangle
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(FormTypeFactory), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_font => j_graphics%jm_getFont_0()
            jtemp12 => StringMaker_jnew_0()
            jtemp11 => jtemp12%jm_append_1(this%f_commonStrings%f_START)
            jtemp10 => jtemp11%jm_append_1(this%f_canvasStrings%f_FD_WIDTH)
            jtemp9 => jtemp10%jm_appendint_1(MyFontProcessor_jm_defaultCharWidth_1(j_font))
            jtemp8 => jtemp9%jm_append_1(this%f_canvasStrings%f_FD_HEIGHT)
            jtemp7 => jtemp8%jm_appendint_1(j_font%jm_getHeight_0())
            call this%f_logUtil%jm_putF_3(jtemp7%jm_toString_0(), this, this%f_canvasStrings%f_UPDATE_MEASUREMENT)
            this%f_fontHeight = j_font%jm_getHeight_0()
            j_rectangle => this%jm_createRectangle_1(this%f_menuForm%jm_size_0())
            jtemp13 => FormTypeFactory_jm_getInstance_0()
            call this%f_menuForm%jm_init_2(j_rectangle, jtemp13%f_VERTICAL_CENTER_FORM)
            call this%jm_update_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine GameCommandCanvas_jm_onEvent_1(this, j_eventObject)
    class(GameCommandCanvas), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp14
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp14 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp14%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(GameCommandCanvas), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(DisplayInfoSingleton), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp18 => DisplayInfoSingleton_jm_getInstance_0()
        jtemp17 => StringMaker_jnew_0()
        jtemp16 => jtemp17%jm_append_1(this%f_commonStrings%f_START)
        jtemp15 => jtemp16%jm_append_1(jtemp18%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp15%jm_toString_0(), this, this%f_canvasStrings%f_ON_DISPLAY_CHANGE_EVENT)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine GameCommandCanvas_jm_initCommands_1(this, j_cmdListener)
    class(GameCommandCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: jtemp19
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        jtemp19 => GameCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp19%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_initMenu_0(this)
    class(GameCommandCanvas), target :: this
    class(ScrollSelectionForm), pointer :: j_form
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_form => this%jm_createForm_0()
        this%f_menuForm => j_form
        if ((.not. JR_same(j_form, ScrollSelectionFormNoneFactory_jm_getInstance_0()))) then
            call this%jm_setMenuInputProcessor_1(ImmediateCommandFormInputProcessor_jnew_4(BasicArrayListD_jnew_0(), (-1), this, j_form))
            this%f_menuPaintable => FormPaintable_jnew_1(j_form)
        end if
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive function GameCommandCanvas_jm_createForm_0(this) result(jresult)
    class(GameCommandCanvas), target :: this
    class(ScrollSelectionForm), pointer :: jresult
    type(JRef), allocatable :: j_items(:)
    class(Rectangle), pointer :: j_rectangle
    class(CommandTextItemArrayFactory), pointer :: jtemp20
    class(StringUtil), pointer :: jtemp21
    class(FormTypeFactory), pointer :: jtemp22
        jtemp20 => CommandTextItemArrayFactory_jnew_1(AllCommandsVisitor_jnew_0())
        j_items = jtemp20%jm_getInstance_3(this%jm_getCommandStack_0(), this%f_backgroundBasicColor, this%f_foregroundBasicColor)
        j_rectangle => this%jm_createRectangle_1(size(j_items, 1))
        jtemp21 => StringUtil_jm_getInstance_0()
        jtemp22 => FormTypeFactory_jm_getInstance_0()
        jresult => CommandCurrentSelectionFormFactory_jm_getInstance_8(jtemp21%f_EMPTY_STRING, j_items, j_rectangle, jtemp22%f_VERTICAL_CENTER_FORM, 15, .false., this%f_backgroundBasicColor, this%f_foregroundBasicColor)
        return
  end function

  recursive function GameCommandCanvas_jm_createRectangle_1(this, j_size) result(jresult)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_size
    class(Rectangle), pointer :: jresult
    integer(4) :: j_height
    integer(4) :: j_startY
    class(PointFactory), pointer :: j_pointFactory
    class(Rectangle), pointer :: j_rectangle
        j_height = (j_size * this%f_fontHeight)
        j_startY = ((((this%f_displayInfo%jm_getLastHeight_0() * 2) / 3)) - j_height)
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_rectangle => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(30, j_startY), (this%f_displayInfo%jm_getLastWidth_0() - 30), j_startY)
        jresult => j_rectangle
        return
  end function

  recursive subroutine GameCommandCanvas_jm_open_0(this)
    class(GameCommandCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp23
    class(GameKeyEventHandler), pointer :: jtemp24
    class(DisplayChangeEventHandler), pointer :: jtemp25
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'open')
        jtemp23 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp23%jm_addListenerInterface_1(this%jm_getMenuInputProcessor_0())
        jtemp24 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp24%jm_addListener_1(this%jm_getMenuInputProcessor_0())
        jtemp25 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp25%jm_addListenerInterface_1(this)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_close_0(this)
    class(GameCommandCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp26
    class(GameKeyEventHandler), pointer :: jtemp27
    class(DisplayChangeEventHandler), pointer :: jtemp28
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CLOSE)
        jtemp26 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp26%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
        jtemp27 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp27%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
        jtemp28 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp28%jm_removeListener_1(this)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_update_0(this)
    class(GameCommandCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_repaintProcessor%jm_process_0()
  end subroutine

  recursive function GameCommandCanvas_jm_getSourceId_0(this) result(jresult)
    class(GameCommandCanvas), target :: this
    integer(4) :: jresult
        jresult = GameCommandCanvas_jstatic_id()
        return
  end function

  recursive subroutine GameCommandCanvas_jm_keyPressed_1(this, j_keyCode)
    class(GameCommandCanvas), target :: this
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

  recursive subroutine GameCommandCanvas_jm_keyReleased_1(this, j_keyCode)
    class(GameCommandCanvas), target :: this
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

  recursive subroutine GameCommandCanvas_jm_keyRepeated_1(this, j_keyCode)
    class(GameCommandCanvas), target :: this
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

  recursive subroutine GameCommandCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(StringMaker), pointer :: jtemp31
    class(CommonSeps), pointer :: jtemp32
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp32 => CommonSeps_jm_getInstance_0()
        jtemp31 => StringMaker_jnew_0()
        jtemp30 => jtemp31%jm_append_1(jtemp32%f_SPACE)
        jtemp29 => jtemp30%jm_appendint_1(j_keyCode)
        call this%f_logUtil%jm_putF_3(jtemp29%jm_toString_0(), this, this%f_gameInputStrings%f_KEY_PRESSED)
        call this%jm_addGameKeyEvent_3(j_keyCode, 0, .false.)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeGameKeyEvent_3(j_keyCode, j_deviceId, .false.)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_keyRepeatedByDevice_2(this, j_keyCode, j_deviceId)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_isSingleKeyRepeatableProcessing) then
            call this%jm_addGameKeyEvent_3(j_keyCode, j_deviceId, .true.)
        end if
  end subroutine

  recursive subroutine GameCommandCanvas_jm_addGameKeyEvent_3(this, j_keyCode, j_deviceId, j_repeated)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp33
    class(StringMaker), pointer :: jtemp34
    class(StringMaker), pointer :: jtemp35
    class(DownGameKeyEventHandlerBase), pointer :: jtemp36
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_gameKeyFactory%f_NONE))) then
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this, j_gameKey)
                call this%f_downGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp36 => this%f_downGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp36%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp35 => StringMaker_jnew_0()
                jtemp34 => jtemp35%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp33 => jtemp34%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp33%jm_toString_0(), this, this%f_gameInputStrings%f_ADD_KEY_EVENT)
            end if
  end subroutine

  recursive subroutine GameCommandCanvas_jm_removeGameKeyEvent_3(this, j_keyCode, j_deviceId, j_repeated)
    class(GameCommandCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(StringMaker), pointer :: jtemp39
    class(UpGameKeyEventHandlerBase), pointer :: jtemp40
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_gameKeyFactory%f_NONE))) then
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this, j_gameKey)
                call this%f_upGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp40 => this%f_upGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp40%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp39 => StringMaker_jnew_0()
                jtemp38 => jtemp39%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp37 => jtemp38%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp37%jm_toString_0(), this, this%f_gameInputStrings%f_REMOVE_KEY_EVENT)
            end if
  end subroutine

  recursive subroutine GameCommandCanvas_jm_paint_1(this, j_graphics)
    class(GameCommandCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_menuPaintable%jm_paint_1(j_graphics)
        call this%f_repaintBehavior%jm_repaint_1(this)
  end subroutine

  recursive subroutine GameCommandCanvas_jm_setMenuInputProcessor_1(this, j_menuInputProcessor)
    class(GameCommandCanvas), target :: this
    class(BasicMenuInputProcessor), target, optional :: j_menuInputProcessor
        this%f_menuInputProcessor => j_menuInputProcessor
  end subroutine

  recursive function GameCommandCanvas_jm_getMenuInputProcessor_0(this) result(jresult)
    class(GameCommandCanvas), target :: this
    class(BasicMenuInputProcessor), pointer :: jresult
        jresult => this%f_menuInputProcessor
        return
  end function
end module GameCommandCanvas_m

