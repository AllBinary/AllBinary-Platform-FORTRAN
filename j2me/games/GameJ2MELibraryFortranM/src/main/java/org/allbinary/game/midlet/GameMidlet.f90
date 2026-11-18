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
! package org.allbinary.game.midlet
module GameMidlet_m
  use JR_m
  use Enumeration_m
  use NullCanvas_m
  use J2MEUtil_m
  use TsUtil_m
  use GameAdStateFactory_m
  use FullScreenUtil_m
  use GameStatisticsFactory_m
  use DebugFactory_m
  use DebugInterface_m
  use GameAdState_m
  use GameInfo_m
  use GameMode_m
  use GameStrings_m
  use GameTypeFactory_m
  use PlayerTypesFactory_m
  use GameCommandsFactory_m
  use GameOptionsForm_m
  use GameOptionsFormFactory_m
  use InGameFeatures_m
  use InGameOptionsForm_m
  use InGameOptionsFormFactory_m
  use LoadGameForm_m
  use ChangedGameFeatureListener_m
  use GameFeatureEventHandler_m
  use Features_m
  use GameFeatureFormUtil_m
  use MainFeatureFactory_m
  use GamePersistanceSingleton_m
  use KeyValuePersistance_m
  use AllBinaryGameCanvas_m
  use BasicPaintablesCanvas_m
  use DemoCanvas_m
  use GameCanvasRunnableInterface_m
  use GameEventHandlerUtil_m
  use GameInputMappingCanvas_m
  use GameInputMappingInstructionsCanvas_m
  use MenuListener_m
  use NullGameCanvasRunnable_m
  use TextNotificationUtil_m
  use AllBinaryGameLayerManager_m
  use GameNotificationEventHandler_m
  use HelpPaintable_m
  use HighScoreCommands_m
  use HighScoreCommandsFactory_m
  use HighScoreTextBox_m
  use HighScoreUtil_m
  use HighScoresCanvas_m
  use GameStateFactory_m
  use ResizableListenerHandler_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use BasicColorFactory_m
  use ColorChangeEventHandler_m
  use CanvasStrings_m
  use MyCanvas_m
  use MyCommandsFactory_m
  use AboutCommandProcessor_m
  use AboutPaintableFactory_m
  use CommandForm_m
  use WebCommandProcessor_m
  use AllBinarySensorManager_m
  use VirtualKeyboardEventHandler_m
  use BasicMotionGesturesHandler_m
  use ForcedLogUtil_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use ClientInformationFactory_m
  use InApplicationPurchaseFactory_m
  use LockableFeature_m
  use LockableFeatureFactory_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use AllBinaryMediaManager_m
  use MidletStrings_m
  use ProgressMidlet_m
  use NullThread_m
  use ThreadFactoryUtil_m
  use ThreadUtil_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use EnumerationUtil_m
  use StdUtil_m
  use ABHashtable_m
  use Thread_m
  use GameMidletStateFactory_m
  use GameMidletEventHandler_m
  use DemoGameMidletEvent_m
  use DemoGameMidletStateFactory_m
  implicit none

  type, extends(ProgressMidlet) :: GameMidlet
    class(EnumerationUtil), pointer :: f_enumerationUtil => null()
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    class(Features), pointer :: f_features => null()
    class(MidletStrings), pointer :: f_midletStrings => null()
    class(MyCommandsFactory), pointer :: f_myCommandsFactory => null()
    class(GameStrings), pointer :: f_gameStrings => null()
    class(GameAdStateFactory), pointer :: f_gameAdStateFactory => null()
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    character(len=:), allocatable :: f_DISPLAYABLE
    character(len=:), allocatable :: f_COMMAND_NAME
    character(len=:), allocatable :: f_NO_COMMAND
    character(len=:), allocatable :: f_NO_DISPLAYABLE
    character(len=:), allocatable :: f_COMMAND_ACTION
    character(len=:), allocatable :: f_PAUSE_APP_BACKGROUND
    character(len=:), allocatable :: f_UN_PAUSE_APP_BACKGROUND
    class(AboutCommandProcessor), pointer :: f_aboutCommandProcessor => null()
    class(WebCommandProcessor), pointer :: f_webCommandProcessor => null()
    class(GameMidletStateFactory), pointer :: f_gameMidletStateFactory => null()
    class(TimeDelayHelper), pointer :: f_gameStartTimeHelper => null()
    class(FullScreenUtil), pointer :: f_fullScreenUtil => null()
    class(DebugInterface), pointer :: f_debugInterface => null()
    class(GameCanvasRunnableInterface), pointer :: f_allbinaryGameCanvasRunnableInterface => null()
    class(Thread), pointer :: f_thread => null()
    class(CommandForm), pointer :: f_loadGameForm => null()
    logical :: f_isFullScreen = .false.
    logical :: f_resized = .false.
    logical :: f_startedBefore = .false.
  contains
    procedure :: jm_init_0 => GameMidlet_jm_init_0
    procedure :: jm_setDemo_0 => GameMidlet_jm_setDemo_0
    procedure :: jm_createGame_0 => GameMidlet_jm_createGame_0
    procedure :: jm_mediaShutdown_0 => GameMidlet_jm_mediaShutdown_0
    procedure :: jm_stopAll_0 => GameMidlet_jm_stopAll_0
    procedure :: jm_pauseApp_0 => GameMidlet_jm_pauseApp_0
    procedure :: jm_pauseAppBackground_1 => GameMidlet_jm_pauseAppBackground_1
    procedure :: jm_unPauseApp_0 => GameMidlet_jm_unPauseApp_0
    procedure :: jm_unPauseAppBackground_1 => GameMidlet_jm_unPauseAppBackground_1
    procedure :: jm_destroyAppInRunnable_2 => GameMidlet_jm_destroyAppInRunnable_2
    procedure :: jm_destroyApp_1 => GameMidlet_jm_destroyApp_1
    procedure :: jm_startApp_0 => GameMidlet_jm_startApp_0
    procedure :: jm_commandAction_2 => GameMidlet_jm_commandAction_2
    procedure :: jm_updateFullScreen_0 => GameMidlet_jm_updateFullScreen_0
    procedure :: jm_onEvent_1 => GameMidlet_jm_onEvent_1
    procedure :: jm_getInputMappingInstructionsCanvas_0 => GameMidlet_jm_getInputMappingInstructionsCanvas_0
    procedure :: jm_getInputMappingCanvas_0 => GameMidlet_jm_getInputMappingCanvas_0
    procedure :: jm_getAboutCanvas_0 => GameMidlet_jm_getAboutCanvas_0
    procedure :: jm_getHelpPaintable_0 => GameMidlet_jm_getHelpPaintable_0
    procedure :: jm_createHighScoresCanvas_0 => GameMidlet_jm_createHighScoresCanvas_0
    procedure :: jm_startGameCanvasRunnableInterface_0 => GameMidlet_jm_startGameCanvasRunnableInterface_0
    procedure :: jm_stopGameCanvasRunnableInterface_0 => GameMidlet_jm_stopGameCanvasRunnableInterface_0
    procedure :: jm_getGameCanvasRunnableInterface_0 => GameMidlet_jm_getGameCanvasRunnableInterface_0
    procedure :: jm_setGameCanvasRunnableInterface_1 => GameMidlet_jm_setGameCanvasRunnableInterface_1
    procedure :: jm_createGameLayerManager_0 => GameMidlet_jm_createGameLayerManager_0
    procedure :: jm_getGameOptionsForm_0 => GameMidlet_jm_getGameOptionsForm_0
    procedure :: jm_save_0 => GameMidlet_jm_save_0
    procedure :: jm_getCurrentStateHashtable_0 => GameMidlet_jm_getCurrentStateHashtable_0
    procedure :: jm_setLoadGameForm_1 => GameMidlet_jm_setLoadGameForm_1
    procedure :: jm_getLoadGameForm_0 => GameMidlet_jm_getLoadGameForm_0
    procedure :: jm_setResized_1 => GameMidlet_jm_setResized_1
    procedure :: jm_isResized_0 => GameMidlet_jm_isResized_0
    procedure :: jm_isDemoLoading_0 => GameMidlet_jm_isDemoLoading_0
  end type


contains

  function GameMidlet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMidlet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMidlet)
      jresult => object
    end select
  end function

  recursive function GameMidlet_jnew_1(j_clientInformationFactory) result(this)
    class(ClientInformationFactory), target, optional :: j_clientInformationFactory
    class(GameMidlet), pointer :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(SmallIntegerSingletonFactory), pointer :: jtemp4
    class(GameFeatureEventHandler), pointer :: jtemp5
    class(GamePersistanceSingleton), pointer :: jtemp6
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
    allocate(this)
    this%jclass = 'GameMidlet'
    this%f_DISPLAYABLE = ''
    this%f_COMMAND_NAME = ''
    this%f_NO_COMMAND = ''
    this%f_NO_DISPLAYABLE = ''
    this%f_COMMAND_ACTION = ''
    this%f_PAUSE_APP_BACKGROUND = ''
    this%f_UN_PAUSE_APP_BACKGROUND = ''
    this%f_enumerationUtil => EnumerationUtil_jm_getInstance_0()
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    this%f_features => Features_jm_getInstance_0()
    this%f_midletStrings => MidletStrings_jm_getInstance_0()
    this%f_myCommandsFactory => MyCommandsFactory_jm_getInstance_0()
    this%f_gameStrings => GameStrings_jm_getInstance_0()
    this%f_gameAdStateFactory => GameAdStateFactory_jm_getInstance_0()
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_DISPLAYABLE = ' Displayable: '
    this%f_COMMAND_NAME = 'command Name/Label: '
    this%f_NO_COMMAND = 'No Command'
    this%f_NO_DISPLAYABLE = 'No Displayable'
    jtemp3 => StringMaker_jnew_0()
    jtemp2 => jtemp3%jm_append_1('GameMidlet::')
    jtemp1 => jtemp2%jm_append_1(this%f_midletStrings%f_COMMAND_ACTION)
    this%f_COMMAND_ACTION = jtemp1%jm_toString_0()
    this%f_PAUSE_APP_BACKGROUND = 'pauseAppBackground'
    this%f_UN_PAUSE_APP_BACKGROUND = 'unPauseAppBackground'
    this%f_aboutCommandProcessor => AboutCommandProcessor_jm_getInstance_0()
    this%f_webCommandProcessor => WebCommandProcessor_jm_getInstance_0()
    this%f_gameMidletStateFactory => GameMidletStateFactory_jm_getInstance_0()
    this%f_gameStartTimeHelper => TimeDelayHelper_jnew_1(240)
    this%f_fullScreenUtil => FullScreenUtil_jm_getInstance_0()
    
    this%f_allbinaryGameCanvasRunnableInterface => NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()
    this%f_thread => NullThread_jstatic_NULL_THREAD()
    
    
    
    this%f_startedBefore = .false.
        continue ! super()
        jtemp4 => SmallIntegerSingletonFactory_jm_getInstance_0()
        call jtemp4%jm_initWithRange_2(int(z'291', 4), 6)
        this%f_loadGameForm => CommandForm_jm_getNullCommandForm_0()
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_init_1(this)
        jtemp5 => GameFeatureEventHandler_jm_getInstance_0()
        call jtemp5%jm_addListenerInterface_1(ChangedGameFeatureListener_jm_getInstance_0())
        jtemp6 => GamePersistanceSingleton_jm_getInstance_0()
        call jtemp6%jm_clear_0()
        this%f_debugInterface => DebugFactory_jm_getInstance_0()
        call this%jm_init_0()
  end function

  recursive subroutine GameMidlet_jm_init_0(this)
    class(GameMidlet), target :: this
    continue
  end subroutine

  recursive subroutine GameMidlet_jm_setDemo_0(this)
    class(GameMidlet), target :: this
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine GameMidlet_jm_createGame_0(this)
    class(GameMidlet), target :: this
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine GameMidlet_jm_mediaShutdown_0(this)
    class(GameMidlet), target :: this
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine GameMidlet_jm_stopAll_0(this)
    class(GameMidlet), target :: this
    continue
  end subroutine

  recursive subroutine GameMidlet_jm_pauseApp_0(this)
    class(GameMidlet), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(Advertisements), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_pauseAppBackground_1(.true.)
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        jtemp7 => j_gameAdState%jm_getAdvertisements_0()
        call jtemp7%jm_stopAll_0()
  end subroutine

  recursive subroutine GameMidlet_jm_pauseAppBackground_1(this, j_background)
    class(GameMidlet), target :: this
    logical, value :: j_background
    class(AllBinarySensorManager), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_PAUSE_APP_BACKGROUND)
        if ((.not. JR_same(this%f_allbinaryGameCanvasRunnableInterface, NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()))) then
            call this%f_allbinaryGameCanvasRunnableInterface%jm_pause_0()
        else
            call this%f_logUtil%jm_putF_3('<<<<<< Null', this, this%f_PAUSE_APP_BACKGROUND)
        end if
        jtemp8 => AllBinarySensorManager_jm_getInstance_0()
        call jtemp8%jm_shutdown_0()
  end subroutine

  recursive subroutine GameMidlet_jm_unPauseApp_0(this)
    class(GameMidlet), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(Advertisements), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_unPauseAppBackground_1(.true.)
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        jtemp9 => j_gameAdState%jm_getAdvertisements_0()
        call jtemp9%jm_startAll_0()
  end subroutine

  recursive subroutine GameMidlet_jm_unPauseAppBackground_1(this, j_background)
    class(GameMidlet), target :: this
    logical, value :: j_background
    class(GameCanvasRunnableInterface), pointer :: j_gameCanvasRunnableInterface
    class(AllBinarySensorManager), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_UN_PAUSE_APP_BACKGROUND)
        jtemp10 => AllBinarySensorManager_jm_getInstance_0()
        call jtemp10%jm_init_0()
        j_gameCanvasRunnableInterface => this%f_allbinaryGameCanvasRunnableInterface
        if ((.not. JR_same(j_gameCanvasRunnableInterface, NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()))) then
            call j_gameCanvasRunnableInterface%jm_unPause_0()
        else
            call this%f_logUtil%jm_putF_3('<<<<<< Null', this, this%f_UN_PAUSE_APP_BACKGROUND)
        end if
  end subroutine

  recursive subroutine GameMidlet_jm_destroyAppInRunnable_2(this, j_unconditional, j_isProgress)
    class(GameMidlet), target :: this
    logical, value :: j_unconditional
    logical, value :: j_isProgress
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        if (j_isProgress) then
            call j_progressCanvas%jm_start_0()
            call this%jm_commandAction_2(this%f_myCommandsFactory%f_SET_DISPLAYABLE, j_progressCanvas)
        end if
        call this%jm_destroyApp_1(j_unconditional)
        if (j_isProgress) then
            call j_progressCanvas%jm_end_0()
        end if
  end subroutine

  recursive subroutine GameMidlet_jm_destroyApp_1(this, j_unconditional)
    class(GameMidlet), target :: this
    logical, value :: j_unconditional
    character(len=:), allocatable :: j_METHOD_NAME
    class(GameAdState), pointer :: j_gameAdState
    class(GameStatisticsFactory), pointer :: jtemp11
    class(Advertisements), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'GameMidlet::destroyApp'
        continue ! try
            jtemp11 => GameStatisticsFactory_jm_getInstance_0()
            call PreLogUtil_jm_put_3(jtemp11%jm_toString_0(), this, j_METHOD_NAME)
            j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
            jtemp12 => j_gameAdState%jm_getAdvertisements_0()
            call jtemp12%jm_stopAll_0()
            if ((.not. this%jm_isDestroyed_0())) then
                call this%jm_stopGameCanvasRunnableInterface_0()
                call this%jm_setGameCanvasRunnableInterface_1(NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE())
                call this%jm_mediaShutdown_0()
            else
                call this%f_logUtil%jm_putF_3('Midlet Managment Error: Midlet Should Only Be Destroyed Once', this, j_METHOD_NAME)
            end if
            call this%ProgressMidlet%jm_destroyApp_1(.true.)
            call PreLogUtil_jm_put_3(this%f_commonStrings%f_END, this, j_METHOD_NAME)
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END, this, j_METHOD_NAME)
  end subroutine

  recursive subroutine GameMidlet_jm_startApp_0(this)
    class(GameMidlet), target :: this
    class(GameAdState), pointer :: j_gameAdState
    character(len=:), allocatable :: j_START_APP
    class(JObject), pointer :: j_gameCanvasRunnableInterface
    class(Advertisements), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
            jtemp13 => j_gameAdState%jm_getAdvertisements_0()
            call jtemp13%jm_startAll_0()
            j_START_APP = 'startApp'
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, j_START_APP)
            j_gameCanvasRunnableInterface => this%f_allbinaryGameCanvasRunnableInterface
            if (JR_same(j_gameCanvasRunnableInterface, NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE())) then
                call this%f_gameMidletStateFactory%jm_setCurrentGameState_1(this%f_gameStateFactory%f_NO_GAME_STATE)
                call this%jm_setDemo_0()
            else
                call this%f_logUtil%jm_putF_3('GameCanvasRunnableInterface is available', this, j_START_APP)
                if (JR_same(j_gameCanvasRunnableInterface, this%jm_getCurrentDisplayable_0())) then
                    call this%jm_unPauseAppBackground_1(.false.)
                else
                    call this%f_logUtil%jm_putF_3('GameCanvasRunnableInterface is not current displayable', this, j_START_APP)
                end if
            end if
  end subroutine

  recursive subroutine GameMidlet_jm_commandAction_2(this, j_command, j_displayable)
    class(GameMidlet), target :: this
    class(Command), target, optional :: j_command
    class(Displayable), target, optional :: j_displayable
    character(len=:), allocatable :: j_displayableAsString
    character(len=:), allocatable :: j_label
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(GameCanvasRunnableInterface), pointer :: j_allbinaryGameCanvasRunnableInterface
    class(JObject), pointer :: j_gameCanvasRunnableInterface
    class(MainFeatureFactory), pointer :: j_mainFeatureFactory
    logical :: j_isFullScreen
    class(VirtualKeyboardEventHandler), pointer :: j_virtualKeyboardEventHandler
    class(HighScoreTextBox), pointer :: j_highScoreTextBox
    class(KeyValuePersistance), pointer :: j_keyValuePersistance
    class(LoadGameForm), pointer :: j_loadGameForm
    integer(4) :: j_index
    class(MenuListener), pointer :: j_menuListener
    class(AllBinaryGameLayerManager), pointer :: j_layerManager
    class(StringMaker), pointer :: j_stringBuffer
    class(InGameOptionsForm), pointer :: j_inGameOptionsForm
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(InGameOptionsFormFactory), pointer :: j_inGameOptionsFormFactory
    class(CommandForm), pointer :: j_inGameOptionsForm_t2
    class(Displayable), pointer :: j_tempDisplayable
    class(GameInputMappingCanvas), pointer :: j_gameInputMappingCanvas
    class(HighScoresCanvas), pointer :: j_highScoresCanvas
    class(AllBinaryGameCanvas), pointer :: j_gameCanvas
    class(InApplicationPurchaseFactory), pointer :: j_inApplicationPurchaseFactory
    class(BasicArrayList), pointer :: j_list
    class(LockableFeature), pointer :: j_lockableFeature
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(HighScoreCommandsFactory), pointer :: jtemp19
    class(HighScoreCommands), pointer :: jtemp20
    class(CommandForm), pointer :: jtemp21
    class(BasicMotionGesturesHandler), pointer :: jtemp22
    class(BasicMotionGesturesHandler), pointer :: jtemp23
    class(CommandForm), pointer :: jtemp24
    class(ResizableListenerHandler), pointer :: jtemp25
    class(ResizableListenerHandler), pointer :: jtemp26
    class(InGameOptionsFormFactory), pointer :: jtemp27
    class(GameFeatureFormUtil), pointer :: jtemp28
    class(GameFeatureFormUtil), pointer :: jtemp29
    class(LockableFeatureFactory), pointer :: jtemp30
    class(TextNotificationUtil), pointer :: jtemp31
    class(BasicArrayList), pointer :: jtemp32
    class(GameMidletEventHandler), pointer :: jtemp33
    class(GameMidletEventHandler), pointer :: jtemp34
    class(DemoGameMidletStateFactory), pointer :: jtemp35
    class(Display), pointer :: jtemp36
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(StringMaker), pointer :: jtemp39
    class(GameCommandsFactory), pointer :: jtemp40
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_displayableAsString = this%f_NO_DISPLAYABLE
            if (present(j_displayable)) then
                j_displayableAsString = j_displayable%jm_toString_0()
            end if
            j_label = this%f_NO_COMMAND
            if (present(j_command)) then
                j_label = j_command%jm_getLabel_0()
            end if
            jtemp18 => StringMaker_jnew_0()
            jtemp17 => jtemp18%jm_append_1(this%f_COMMAND_NAME)
            jtemp16 => jtemp17%jm_append_1(j_label)
            jtemp15 => jtemp16%jm_append_1(this%f_DISPLAYABLE)
            jtemp14 => jtemp15%jm_append_1(j_displayableAsString)
            call PreLogUtil_jm_put_3(jtemp14%jm_toString_0(), this, this%f_COMMAND_ACTION)
            j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
            j_allbinaryGameCanvasRunnableInterface => this%f_allbinaryGameCanvasRunnableInterface
            j_gameCanvasRunnableInterface => j_allbinaryGameCanvasRunnableInterface
            if (JR_same(j_command, j_gameCommandsFactory%f_SHOW_GAME_CANVAS)) then
                associate (jstatic_N97265 => NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE())
                jtemp36 => this%jm_getDisplay_0()
                if (((.not. JR_same(jtemp36%jm_getCurrent_0(), j_gameCanvasRunnableInterface)) .and. (j_allbinaryGameCanvasRunnableInterface%jm_getType_0() /= jstatic_N97265%jm_getType_0()))) then
                    call this%jm_setDisplay_1(Displayable_jcast(j_gameCanvasRunnableInterface))
                end if
                end associate
                call this%jm_unPauseAppBackground_1(.false.)
            else if (JR_same(j_command, j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS)) then
                j_menuListener => MenuListener_jcast(j_displayable)
                call j_menuListener%jm_close_0()
                call this%jm_setDisplay_1(Displayable_jcast(j_gameCanvasRunnableInterface))
                call this%jm_unPauseAppBackground_1(.false.)
            else if (JR_same(j_command, j_gameCommandsFactory%f_EXIT_COMMAND)) then
                jtemp33 => GameMidletEventHandler_jm_getInstance_0()
                jtemp32 => jtemp33%jm_getEventListenerInterfaceListP_0()
                if ((jtemp32%jm_size_0() == 0)) then
                    call this%jm_exitProgress_1(.true.)
                end if
                jtemp35 => DemoGameMidletStateFactory_jm_getInstance_0()
                jtemp34 => GameMidletEventHandler_jm_getInstance_0()
                call jtemp34%jm_fireEvent_1(DemoGameMidletEvent_jnew_2(this, jtemp35%f_NONE))
            else if (JR_same(j_command, j_gameCommandsFactory%f_EXIT_WITHOUT_PROGRESS_COMMAND)) then
                call this%jm_exitProgress_1(.false.)
            else if (((JR_same(j_command, j_gameCommandsFactory%f_START_COMMAND) .or. JR_same(j_command, j_gameCommandsFactory%f_RESTART_COMMAND)) .or. JR_same(j_command, j_gameCommandsFactory%f_CONTINUE_COMMAND))) then
                if (((this%f_gameMidletStateFactory%jm_getCurrentGameState_0() /= this%f_gameStateFactory%f_PLAYING_GAME_STATE) .or. JR_same(j_command, j_gameCommandsFactory%f_RESTART_COMMAND))) then
                    if (this%f_gameStartTimeHelper%jm_isTimeTNT_0()) then
                        if ((JR_same(j_command, j_gameCommandsFactory%f_START_COMMAND) .and. this%jm_isDemoLoading_0())) then
                            call this%f_logUtil%jm_putF_3('Trying to Start Game Before Loading Complete', this, this%f_midletStrings%f_COMMAND_ACTION)
                        else
                            this%f_startedBefore = .true.
                            call this%jm_createGame_0()
                            call this%f_gameMidletStateFactory%jm_setCurrentGameState_1(this%f_gameStateFactory%f_PLAYING_GAME_STATE)
                        end if
                    else
                        call this%f_logUtil%jm_putF_3('Starting Game Too Often', this, this%f_midletStrings%f_COMMAND_ACTION)
                    end if
                else
                    call this%f_logUtil%jm_putF_3('Already in playing state', this, this%f_COMMAND_ACTION)
                end if
            else if (JR_same(j_command, j_gameCommandsFactory%f_BUY_COMMAND)) then
                j_inApplicationPurchaseFactory => InApplicationPurchaseFactory_jm_getInstance_0()
                jtemp30 => LockableFeatureFactory_jm_getInstance_0()
                j_list => jtemp30%jm_getList_0()
                j_lockableFeature => LockableFeature_jcast(j_list%jm_get_1(0))
                if (((j_list%jm_size_0() > 0) .and. (.not. j_inApplicationPurchaseFactory%jm_isPurchased_1(j_lockableFeature)))) then
                    call j_inApplicationPurchaseFactory%jm_purchase_1(j_lockableFeature)
                else
                    jtemp31 => TextNotificationUtil_jm_getInstance_0()
                    call jtemp31%jm_fireSuccess_1('Already Purchased')
                end if
            else if (JR_same(j_command, j_gameCommandsFactory%f_QUIT_COMMAND)) then
                if (this%f_gameStartTimeHelper%jm_isTimeTNT_0()) then
                    if ((JR_className(j_displayable) == 'HighScoreTextBox')) then
                        j_menuListener => MenuListener_jcast(j_displayable)
                        call j_menuListener%jm_close_0()
                    end if
                    call this%jm_stopGameCanvasRunnableInterface_0()
                    call this%f_gameMidletStateFactory%jm_setCurrentGameState_1(this%f_gameStateFactory%f_NO_GAME_STATE)
                    call this%jm_setDemo_0()
                end if
            else if (JR_same(j_command, this%f_myCommandsFactory%f_RESUME_COMMAND)) then
                call this%jm_unPauseAppBackground_1(.false.)
            else if (JR_same(j_command, this%f_myCommandsFactory%f_PAUSE_COMMAND)) then
                call this%jm_pauseAppBackground_1(.false.)
            else if (JR_same(j_command, this%f_myCommandsFactory%f_SET_DISPLAYABLE)) then
                call this%jm_pauseAppBackground_1(.false.)
                call this%jm_setDisplay_1(j_displayable)
            else if (JR_same(j_command, j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE)) then
                call this%jm_pauseAppBackground_1(.false.)
                j_menuListener => MenuListener_jcast(j_displayable)
                call j_menuListener%jm_open_0()
                call this%jm_setDisplay_1(j_displayable)
            else if (JR_same(j_command, j_gameCommandsFactory%f_START_TRACE)) then
                call this%f_debugInterface%jm_start_0()
                j_gameCanvas => AllBinaryGameCanvas_jcast(j_allbinaryGameCanvasRunnableInterface)
                call j_gameCanvas%jm_addCommand_1(j_gameCommandsFactory%f_STOP_TRACE)
                call j_gameCanvas%jm_removeCommand_1(j_gameCommandsFactory%f_START_TRACE)
            else if (JR_same(j_command, j_gameCommandsFactory%f_STOP_TRACE)) then
                call this%jm_pauseAppBackground_1(.false.)
                call this%f_debugInterface%jm_stop_0()
                call this%jm_unPauseAppBackground_1(.false.)
                j_gameCanvas => AllBinaryGameCanvas_jcast(j_allbinaryGameCanvasRunnableInterface)
                call j_gameCanvas%jm_addCommand_1(j_gameCommandsFactory%f_START_TRACE)
                call j_gameCanvas%jm_removeCommand_1(j_gameCommandsFactory%f_STOP_TRACE)
            else if (JR_same(j_command, j_gameCommandsFactory%f_DEFAULT_OPTIONS)) then
                j_tempDisplayable => j_displayable
                if ((JR_className(j_tempDisplayable) == 'GameOptionsForm')) then
                    jtemp29 => GameFeatureFormUtil_jm_getInstance_0()
                    call jtemp29%jm_setDefault_1(CommandForm_jcast(j_tempDisplayable))
                end if
            else if (JR_same(j_command, GameInputMappingInstructionsCanvas_jstatic_DISPLAY())) then
                j_tempDisplayable => j_displayable
                if ((JR_className(j_tempDisplayable) == 'GameInputMappingCanvas')) then
                    j_gameInputMappingCanvas => GameInputMappingCanvas_jcast(j_tempDisplayable)
                    call j_gameInputMappingCanvas%jm_update_0()
                end if
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_getInputMappingInstructionsCanvas_0())
            else if (jtemp19%jm_isHighScoreCommand_1(j_command)) then
                j_tempDisplayable => j_displayable
                if ((JR_className(j_tempDisplayable) == 'HighScoresCanvas')) then
                    j_highScoresCanvas => HighScoresCanvas_jcast(j_tempDisplayable)
                    call j_highScoresCanvas%jm_updateCommand_1(j_command)
                end if
            else if (JR_same(j_command, jtemp20%f_DISPLAY)) then
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_createHighScoresCanvas_0())
            else if (JR_same(j_command, GameInputMappingInstructionsCanvas_jstatic_CLOSE())) then
                j_menuListener => MenuListener_jcast(j_displayable)
                call j_menuListener%jm_close_0()
                call this%jm_commandAction_2(GameInputMappingCanvas_jstatic_DISPLAY(), NullCanvas_jstatic_NULL_CANVAS())
            else if (JR_same(j_command, GameInputMappingCanvas_jstatic_DISPLAY())) then
                if (J2MEUtil_jm_isHTML_0()) then
                    call this%jm_pauseAppBackground_1(.false.)
                end if
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_getInputMappingCanvas_0())
            else if (JR_same(j_command, GameInputMappingCanvas_jstatic_DEFAULT())) then
                j_tempDisplayable => j_displayable
                if ((JR_className(j_tempDisplayable) == 'GameInputMappingCanvas')) then
                    j_gameInputMappingCanvas => GameInputMappingCanvas_jcast(j_tempDisplayable)
                    call j_gameInputMappingCanvas%jm_setDefault_0()
                end if
            else if (JR_same(j_command, InGameOptionsForm_jstatic_DISPLAY())) then
                call this%jm_pauseAppBackground_1(.false.)
                j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
                call j_progressCanvas%jm_addNormalPortion_2(50, 'In Game Options')
                j_layerManager => this%jm_createGameLayerManager_0()
                j_inGameOptionsFormFactory => InGameOptionsFormFactory_jm_getInstance_0()
                call j_inGameOptionsFormFactory%jm_init_5(this, InGameFeatures_jnew_0(), 'Options In Game', j_layerManager%jm_getBackgroundBasicColor_0(), j_layerManager%jm_getForegroundBasicColor_0())
                j_inGameOptionsForm_t2 => j_inGameOptionsFormFactory%jm_get_0()
                call j_inGameOptionsForm_t2%jm_setItemStateListener_1(j_allbinaryGameCanvasRunnableInterface)
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, j_inGameOptionsForm_t2)
            else if (JR_same(j_command, InGameOptionsForm_jstatic_DEFAULT())) then
                jtemp27 => InGameOptionsFormFactory_jm_getInstance_0()
                j_inGameOptionsForm => InGameOptionsForm_jcast(jtemp27%jm_get_0())
                jtemp28 => GameFeatureFormUtil_jm_getInstance_0()
                call jtemp28%jm_setDefault_1(j_inGameOptionsForm)
            else if (JR_same(j_command, j_gameCommandsFactory%f_DISPLAY_OPTIONS)) then
                call AllBinaryMediaManager_jm_setMuted_1(.true.)
                call this%jm_stopAll_0()
                j_mainFeatureFactory => MainFeatureFactory_jm_getInstance_0()
                this%f_isFullScreen = this%f_features%jm_isFeature_1(j_mainFeatureFactory%f_FULL_SCREEN)
                jtemp26 => ResizableListenerHandler_jm_getInstance_0()
                call jtemp26%jm_fireEvent_1(.true.)
                call this%jm_setResized_1(.false.)
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_getGameOptionsForm_0())
            else if (JR_same(j_command, j_gameCommandsFactory%f_CLOSE_OPTIONS)) then
                jtemp25 => ResizableListenerHandler_jm_getInstance_0()
                call jtemp25%jm_fireEvent_1(.false.)
                call this%jm_commandAction_2(j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS, j_displayable)
                j_stringBuffer => StringMaker_jnew_0()
                jdiscardRef => j_stringBuffer%jm_append_1('Close isFullScreen/change: ')
                jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%f_isFullScreen)
                jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%f_fullScreenUtil%jm_isScreenChange_1(this%f_isFullScreen))
                jdiscardRef => j_stringBuffer%jm_append_1(' isResized: ')
                jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%jm_isResized_0())
                call PreLogUtil_jm_put_3(j_stringBuffer%jm_toString_0(), this, this%f_COMMAND_ACTION)
                if ((this%jm_isResized_0() .or. this%f_fullScreenUtil%jm_isScreenChange_1(this%f_isFullScreen))) then
                    call this%jm_updateFullScreen_0()
                end if
                call AllBinaryMediaManager_jm_setMuted_1(.false.)
            else if (JR_same(j_command, j_gameCommandsFactory%f_DISPLAY_LOAD_FORM)) then
                call this%jm_pauseAppBackground_1(.false.)
                j_keyValuePersistance => GamePersistanceSingleton_jm_getInstance_0()
                call j_keyValuePersistance%jm_clear_0()
                call j_keyValuePersistance%jm_loadAll_1(this%f_abeClientInformation)
                if (JR_same(this%jm_getLoadGameForm_0(), CommandForm_jm_getNullCommandForm_0())) then
                    j_layerManager => this%jm_createGameLayerManager_0()
                    call this%jm_setLoadGameForm_1(LoadGameForm_jnew_4(this, 'Load Game', j_layerManager%jm_getBackgroundBasicColor_0(), j_layerManager%jm_getForegroundBasicColor_0()))
                else
                    jtemp24 => this%jm_getLoadGameForm_0()
                    call jtemp24%jm_update_0()
                end if
                call this%jm_commandAction_2(j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_getLoadGameForm_0())
            else if (JR_same(j_command, j_gameCommandsFactory%f_LOAD_FILE)) then
                j_loadGameForm => LoadGameForm_jcast(this%jm_getLoadGameForm_0())
                j_index = j_loadGameForm%jm_getSelectedId_0()
                if ((j_index /= (-1))) then
                    j_keyValuePersistance => GamePersistanceSingleton_jm_getInstance_0()
                    call this%jm_setStartStateHashtable_1(j_keyValuePersistance%jm_get_1(j_index))
                    j_menuListener => this%jm_getLoadGameForm_0()
                    call j_menuListener%jm_close_0()
                    jtemp22 => BasicMotionGesturesHandler_jm_getInstance_0()
                    call PreLogUtil_jm_put_3(jtemp22%jm_toString_0(), this, this%f_COMMAND_ACTION)
                    call this%jm_commandAction_2(j_gameCommandsFactory%f_START_COMMAND, NullCanvas_jstatic_NULL_CANVAS())
                    jtemp23 => BasicMotionGesturesHandler_jm_getInstance_0()
                    call PreLogUtil_jm_put_3(jtemp23%jm_toString_0(), this, this%f_COMMAND_ACTION)
                end if
            else if (JR_same(j_command, j_gameCommandsFactory%f_DELETE_FILE)) then
                j_loadGameForm => LoadGameForm_jcast(this%jm_getLoadGameForm_0())
                j_index = j_loadGameForm%jm_getSelectedText_0()
                if ((j_index /= (-1))) then
                    j_keyValuePersistance => GamePersistanceSingleton_jm_getInstance_0()
                    call j_keyValuePersistance%jm_delete_2(this%f_abeClientInformation, j_index)
                    call j_keyValuePersistance%jm_clear_0()
                    call j_keyValuePersistance%jm_loadAllSize_2(this%f_abeClientInformation, 1)
                    jtemp21 => this%jm_getLoadGameForm_0()
                    call jtemp21%jm_update_0()
                end if
            else if (JR_same(j_command, j_gameCommandsFactory%f_SAVE)) then
                j_keyValuePersistance => GamePersistanceSingleton_jm_getInstance_0()
                call this%jm_pauseAppBackground_1(.false.)
                call j_keyValuePersistance%jm_save_2(this%f_abeClientInformation, this%jm_getCurrentStateHashtable_0())
                call this%jm_unPauseAppBackground_1(.false.)
            else if (JR_same(j_command, HighScoreUtil_jstatic_SUBMIT_TEXTBOX_COMMAND())) then
                call this%f_logUtil%jm_putF_3('Submitted Score', this, this%f_COMMAND_ACTION)
                if ((JR_className(j_displayable) == 'HighScoreTextBox')) then
                    j_highScoreTextBox => HighScoreTextBox_jcast(j_displayable)
                    j_highScoreTextBox%f_submitted = .true.
                end if
                call j_allbinaryGameCanvasRunnableInterface%jm_setHighScoreSubmitted_1(.true.)
                call this%jm_commandAction_2(j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS, j_displayable)
            else if (JR_same(j_command, j_gameCommandsFactory%f_DISPLAY_ABOUT)) then
                call this%f_aboutCommandProcessor%jm_process_3(this, j_gameCommandsFactory%f_SET_MENU_DISPLAYABLE, this%jm_getAboutCanvas_0())
            else if (JR_same(j_command, j_gameCommandsFactory%f_OPEN_WEB_URL)) then
                call this%f_webCommandProcessor%jm_process_3(this, j_gameCommandsFactory%f_OPEN_WEB_URL, NullCanvas_jstatic_NULL_CANVAS())
            else if (JR_same(j_command, j_gameCommandsFactory%f_TOGGLE_KEYBOARD)) then
                j_virtualKeyboardEventHandler => VirtualKeyboardEventHandler_jm_getInstance_0()
                call j_virtualKeyboardEventHandler%jm_fireEvent_1(j_virtualKeyboardEventHandler%f_SHOW_EVENT)
            else if ((this%f_tsUtil%jm_compareTo_2(j_command%jm_getLabel_0(), j_gameCommandsFactory%f_TOGGLE_FULLSCREEN%jm_getLabel_0()) == 0)) then
                j_mainFeatureFactory => MainFeatureFactory_jm_getInstance_0()
                j_isFullScreen = this%f_features%jm_isFeature_1(j_mainFeatureFactory%f_FULL_SCREEN)
                if (j_isFullScreen) then
                    call this%f_features%jm_removeDefault_1(j_mainFeatureFactory%f_FULL_SCREEN)
                else
                    call this%f_features%jm_addDefault_1(j_mainFeatureFactory%f_FULL_SCREEN)
                end if
                call this%jm_updateFullScreen_0()
            end if
  end subroutine

  recursive subroutine GameMidlet_jm_updateFullScreen_0(this)
    class(GameMidlet), target :: this
    class(MainFeatureFactory), pointer :: j_mainFeatureFactory
    logical :: j_isFullScreen
    class(Displayable), pointer :: j_displayable
    class(Canvas), pointer :: j_canvas
    class(Display), pointer :: jtemp41
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mainFeatureFactory => MainFeatureFactory_jm_getInstance_0()
        j_isFullScreen = this%f_features%jm_isFeature_1(j_mainFeatureFactory%f_FULL_SCREEN)
        jtemp41 => this%jm_getDisplay_0()
        j_displayable => jtemp41%jm_getCurrent_0()
        if ((JR_className(j_displayable) == 'Canvas')) then
            j_canvas => Canvas_jcast(j_displayable)
            call j_canvas%jm_setFullScreenMode_1(j_isFullScreen)
        end if
  end subroutine

  recursive subroutine GameMidlet_jm_onEvent_1(this, j_eventObject)
    class(GameMidlet), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp42
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp42 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp42%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive function GameMidlet_jm_getInputMappingInstructionsCanvas_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(MyCanvas), pointer :: jresult
        jresult => GameInputMappingInstructionsCanvas_jnew_2(this, this%jm_createGameLayerManager_0())
        return
  end function

  recursive function GameMidlet_jm_getInputMappingCanvas_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(MyCanvas), pointer :: jresult
        jresult => GameInputMappingCanvas_jnew_4(this%f_abeClientInformation, this, this%jm_createGameLayerManager_0(), this%jm_getHelpPaintable_0())
        return
  end function

  recursive function GameMidlet_jm_getAboutCanvas_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(MyCanvas), pointer :: jresult
    class(CanvasStrings), pointer :: jtemp43
    class(AboutPaintableFactory), pointer :: jtemp44
        jtemp43 => CanvasStrings_jm_getInstance_0()
        jtemp44 => AboutPaintableFactory_jm_getInstance_0()
        jresult => BasicPaintablesCanvas_jnew_4(this, jtemp43%f_ABOUT, this%jm_createGameLayerManager_0(), jtemp44%f_paintableArray)
        return
  end function

  recursive function GameMidlet_jm_getHelpPaintable_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(HelpPaintable), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function GameMidlet_jm_createHighScoresCanvas_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(HighScoresCanvas), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine GameMidlet_jm_startGameCanvasRunnableInterface_0(this)
    class(GameMidlet), target :: this
    class(ThreadFactoryUtil), pointer :: j_threadFactoryUtil
    class(StringMaker), pointer :: jtemp45
    class(StringMaker), pointer :: jtemp46
    class(StringMaker), pointer :: jtemp47
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_threadFactoryUtil => ThreadFactoryUtil_jm_getInstance_0()
        this%f_thread => j_threadFactoryUtil%jm_getInstanceGameCanvasRunnable_1(this%f_allbinaryGameCanvasRunnableInterface)
        jtemp47 => StringMaker_jnew_0()
        jtemp46 => jtemp47%jm_append_1('Thread Priority: ')
        jtemp45 => jtemp46%jm_appendint_1(this%f_thread%jm_getPriority_0())
        call this%f_logUtil%jm_putF_3(jtemp45%jm_toString_0(), this, 'startGameCanvasRunnableInterface')
        call this%f_allbinaryGameCanvasRunnableInterface%jm_setThread_1(this%f_thread)
        call j_threadFactoryUtil%jm_start_1(this%f_thread)
  end subroutine

  recursive subroutine GameMidlet_jm_stopGameCanvasRunnableInterface_0(this)
    class(GameMidlet), target :: this
    class(GameCanvasRunnableInterface), pointer :: j_gameCanvasRunnableInterface
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(GameNotificationEventHandler), pointer :: jtemp48
    class(ColorChangeEventHandler), pointer :: jtemp49
    class(StringMaker), pointer :: jtemp50
    class(StringMaker), pointer :: jtemp51
    class(StringMaker), pointer :: jtemp52
    class(ThreadUtil), pointer :: jtemp53
    class(MainFeatureFactory), pointer :: jtemp54
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_gameStrings%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        jtemp48 => GameNotificationEventHandler_jm_getInstance_0()
        call jtemp48%jm_removeAllListeners_0()
        jtemp49 => ColorChangeEventHandler_jm_getInstance_0()
        call jtemp49%jm_removeAllListeners_0()
        call GameEventHandlerUtil_jm_removeAllListeners_0()
        j_gameCanvasRunnableInterface => this%f_allbinaryGameCanvasRunnableInterface
        if ((.not. JR_same(j_gameCanvasRunnableInterface, NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()))) then
            jtemp52 => StringMaker_jnew_0()
            jtemp51 => jtemp52%jm_append_1('Set Running False: ')
            jtemp50 => jtemp51%jm_append_1(j_gameCanvasRunnableInterface%jm_toString_0())
            call this%f_logUtil%jm_putF_3(jtemp50%jm_toString_0(), this, this%f_gameStrings%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            call j_gameCanvasRunnableInterface%jm_setRunning_1(.false.)
        else
            call this%f_logUtil%jm_putF_3('StopGame - Could Not Stop', this, this%f_gameStrings%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        end if
        jtemp53 => ThreadUtil_jm_getInstance_0()
        call jtemp53%jm_join_1(this%f_thread)
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        jtemp54 => MainFeatureFactory_jm_getInstance_0()
        if (this%f_features%jm_isFeature_1(jtemp54%f_LOAD_ALL)) then
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Stopped Game Runnable')
        else
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Stopped Main Runnable')
        end if
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END, this, this%f_gameStrings%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
  end subroutine

  recursive function GameMidlet_jm_getGameCanvasRunnableInterface_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(GameCanvasRunnableInterface), pointer :: jresult
        jresult => this%f_allbinaryGameCanvasRunnableInterface
        return
  end function

  recursive subroutine GameMidlet_jm_setGameCanvasRunnableInterface_1(this, j_gameCanvasRunnableInterface)
    class(GameMidlet), target :: this
    class(GameCanvasRunnableInterface), target, optional :: j_gameCanvasRunnableInterface
        this%f_allbinaryGameCanvasRunnableInterface => j_gameCanvasRunnableInterface
  end subroutine

  recursive function GameMidlet_jm_createGameLayerManager_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(AllBinaryGameLayerManager), pointer :: jresult
    class(GameInfo), pointer :: j_gameInfo
    class(GameTypeFactory), pointer :: jtemp55
    class(PlayerTypesFactory), pointer :: jtemp56
        jtemp55 => GameTypeFactory_jm_getInstance_0()
        jtemp56 => PlayerTypesFactory_jm_getInstance_0()
        j_gameInfo => GameInfo_jnew_5(jtemp55%f_SINGLE_PLAYER, GameMode_jstatic_SERVER(), jtemp56%f_PLAYER_TYPE_ONE, 1, 1)
        jresult => AllBinaryGameLayerManager_jnew_3(this%f_basicColorFactory%f_BLACK, this%f_basicColorFactory%f_WHITE, j_gameInfo)
        return
  end function

  recursive function GameMidlet_jm_getGameOptionsForm_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(CommandForm), pointer :: jresult
    class(AllBinaryGameLayerManager), pointer :: j_layerManager
    class(GameOptionsFormFactory), pointer :: jtemp57
        j_layerManager => this%jm_createGameLayerManager_0()
        jtemp57 => GameOptionsFormFactory_jm_getInstance_0()
        jresult => jtemp57%jm_init_4(this, 'Game Options', j_layerManager%jm_getBackgroundBasicColor_0(), j_layerManager%jm_getForegroundBasicColor_0())
        return
  end function

  recursive subroutine GameMidlet_jm_save_0(this)
    class(GameMidlet), target :: this
    class(ABHashtable), pointer :: j_hashtable
    class(GamePersistanceSingleton), pointer :: jtemp58
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_SAVE)
        j_hashtable => this%jm_getCurrentStateHashtable_0()
        jtemp58 => GamePersistanceSingleton_jm_getInstance_0()
        call jtemp58%jm_save_2(this%f_abeClientInformation, j_hashtable)
  end subroutine

  recursive function GameMidlet_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_hashtable
    class(ABHashtable), pointer :: j_currentHashtable
    class(Enumeration), pointer :: j_enumeration
    class(JObject), pointer :: j_key
    class(StdUtil), pointer :: jtemp59
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'getCurrentStateHashtable')
        jtemp59 => StdUtil_jm_getInstance_0()
        j_hashtable => jtemp59%jm_createHashtable_0()
        if ((.not. JR_same(this%f_allbinaryGameCanvasRunnableInterface, NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()))) then
            j_currentHashtable => this%f_allbinaryGameCanvasRunnableInterface%jm_getCurrentStateHashtable_0()
            j_enumeration => j_currentHashtable%jm_keys_0()
            continue
            do while (this%f_enumerationUtil%jm_hasMoreElements_1(j_enumeration))
                j_key => this%f_enumerationUtil%jm_nextElement_1(j_enumeration)
                jdiscardRef => j_hashtable%jm_put_2(j_key, j_currentHashtable%jm_get_1(j_key))
            end do
        end if
        jresult => j_hashtable
        return
  end function

  recursive subroutine GameMidlet_jm_setLoadGameForm_1(this, j_loadGameForm)
    class(GameMidlet), target :: this
    class(LoadGameForm), target, optional :: j_loadGameForm
        this%f_loadGameForm => j_loadGameForm
  end subroutine

  recursive function GameMidlet_jm_getLoadGameForm_0(this) result(jresult)
    class(GameMidlet), target :: this
    class(CommandForm), pointer :: jresult
        jresult => this%f_loadGameForm
        return
  end function

  recursive subroutine GameMidlet_jm_setResized_1(this, j_resized)
    class(GameMidlet), target :: this
    logical, value :: j_resized
        this%f_resized = j_resized
  end subroutine

  recursive function GameMidlet_jm_isResized_0(this) result(jresult)
    class(GameMidlet), target :: this
    logical :: jresult
        jresult = this%f_resized
        return
  end function

  recursive function GameMidlet_jm_isDemoLoading_0(this) result(jresult)
    class(GameMidlet), target :: this
    logical :: jresult
    class(Displayable), pointer :: j_displayable
    class(DemoCanvas), pointer :: j_demoCanvas
    class(Display), pointer :: jtemp60
        if (this%f_startedBefore) then
            jresult = .false.
            return
        end if
        jtemp60 => this%jm_getDisplay_0()
        j_displayable => jtemp60%jm_getCurrent_0()
        if ((JR_className(j_displayable) == 'DemoCanvas')) then
            j_demoCanvas => DemoCanvas_jcast(j_displayable)
            if (j_demoCanvas%jm_isDemoLoading_0()) then
                jresult = .true.
                return
            end if
        end if
        jresult = .false.
        return
  end function
end module GameMidlet_m

