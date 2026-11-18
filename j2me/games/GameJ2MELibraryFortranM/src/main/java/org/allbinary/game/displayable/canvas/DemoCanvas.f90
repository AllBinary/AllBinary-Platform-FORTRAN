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
module DemoCanvas_m
  use JR_m
  use J2MEUtil_m
  use Animation_m
  use IndexedAnimationBehavior_m
  use SpecialAnimation_m
  use GameAdStateFactory_m
  use BaseGameStatistics_m
  use CustomGameMenuUtil_m
  use FullScreenUtil_m
  use GameStatisticsFactory_m
  use RunnableCanvas_m
  use GameAdState_m
  use GameInfo_m
  use GameCommandsFactory_m
  use ChangedGameFeatureListener_m
  use Features_m
  use GameFeatureFactory_m
  use InputFeatureFactory_m
  use MainFeatureFactory_m
  use BasicBuildGameInitializerFactory_m
  use GameInitializationUtil_m
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
  use AllBinaryGameLayerManager_m
  use SWTUtil_m
  use DemoGameMidlet_m
  use HighScoreCommands_m
  use HighScores_m
  use HighScoresFactoryInterface_m
  use HighScoresHelper_m
  use HighScoresHelperBase_m
  use HighScoresPaintable_m
  use NullHighScoresSingletonFactory_m
  use GameState_m
  use GameStateFactory_m
  use Rectangle_m
  use ResizableListenerHandler_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use BasicColor_m
  use BasicColorFactory_m
  use MyCommandsFactory_m
  use DisplayChangeEvent_m
  use DisplayChangeEventHandler_m
  use DisplayChangeEventListener_m
  use FullScreenPaintableFactory_m
  use CommandCurrentSelectionFormFactory_m
  use FormType_m
  use FormTypeFactory_m
  use ScrollSelectionForm_m
  use ScrollSelectionFormNoneFactory_m
  use CommandTextItemArrayFactory_m
  use ABCustomItem_m
  use CurrentDisplayableFactory_m
  use OpenGLFeatureFactory_m
  use OpenGLFeatureUtil_m
  use OpenGLThreadUtil_m
  use InitUpdatePaintable_m
  use NullPaintable_m
  use Paintable_m
  use PaintableInterface_m
  use StatePaintable_m
  use StatePaintableFactory_m
  use BasicMotionGesturesHandler_m
  use ForcedLogUtil_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use OperatingSystemFactory_m
  use AbeClientInformationInterface_m
  use InApplicationPurchaseFactory_m
  use LockableFeature_m
  use LockableFeatureFactory_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use AllBinaryMediaManager_m
  use EarlySoundsFactory_m
  use PrimaryPlayerQueueFactory_m
  use SecondaryPlayerQueueFactory_m
  use CommonSeps_m
  use NullThread_m
  use ThreadFactoryUtil_m
  use ThreadUtil_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Thread_m
  use GameCanvasRunnableInterface_m
  use MenuListener_m
  use DemoPaintableInterface_m
  use FormUtil_m
  use NullGameCanvas_m
  use AllBinaryGameCanvas_m
  use NoMenuInputProcessor_m
  use BasicMenuInputProcessor_m
  use DemoGameStartupRunnable_m
  use NullWaitGameRunnable_m
  use GameRunnable_m
  use GameInputMappingCanvas_m
  use DemoLimitedCommandTextItemArrayFactory_m
  use CommandFormInputProcessor_m
  use DemoCanvasProgressUtil_m
  use DemoGameRunnable_m
  implicit none

  type, extends(RunnableCanvas) :: DemoCanvas
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    class(MyCommandsFactory), pointer :: f_myCommandsFactory => null()
    class(GameAdStateFactory), pointer :: f_gameAdStateFactory => null()
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
    class(ThreadFactoryUtil), pointer :: f_threadFactoryUtil => null()
    class(FormUtil), pointer :: f_formUtil => null()
    class(Paintable), pointer :: f_fullscreenPaintable => null()
    class(StatePaintable), pointer :: f_basicGameDemoPaintable => null()
    class(SpecialAnimation), pointer :: f_specialAnimationInterface => null()
    class(Animation), pointer :: f_paintedSpecialAnimationInterface => null()
    class(FullScreenUtil), pointer :: f_fullScreenUtil => null()
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
    class(HighScoresHelperBase), pointer :: f_highScoresHelper => null()
    class(HighScoresPaintable), pointer :: f_realHighScoresPaintable => null()
    class(Paintable), pointer :: f_highScoresPaintable => null()
    integer(4) :: f_state = 0
    class(Thread), pointer :: f_canvasThread => null()
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(BasicColor), pointer :: f_basicColor => null()
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
    class(HighScoresFactoryInterface), pointer :: f_highScoresFactoryInterface => null()
    class(BasicMenuInputProcessor), pointer :: f_menuInputProcessor => null()
    class(ScrollSelectionForm), pointer :: f_menuForm => null()
    class(BasicBuildGameInitializerFactory), pointer :: f_gameInitializationInterfaceFactoryInterface => null()
    logical :: f_initialized = .false.
    class(DemoGameStartupRunnable), pointer :: f_demoGameRunnable => null()
    class(Paintable), pointer :: f_defaultPaintableInterface => null()
    class(PaintableInterface), pointer :: f_paintableInterface => null()
    class(InitUpdatePaintable), pointer :: f_overlayPaintable => null()
    class(PaintableInterface), pointer :: f_progressPaintable => null()
    integer(4) :: f_tempWait = 0
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
    class(GameRunnable), pointer :: f_gameRunnable => null()
    logical :: f_isSingleKeyRepeatableProcessing = .false.
    class(GameKey), pointer :: f_NONE => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    integer(4) :: f_lastKeyNotMapped = 0
    character(len=:), allocatable :: f_SET_STATE
    class(BaseGameStatistics), pointer :: f_baseGameStatistics => null()
  contains
    procedure :: jm_onEvent_1 => DemoCanvas_jm_onEvent_1
    procedure :: jm_onDisplayChangeEvent_1 => DemoCanvas_jm_onDisplayChangeEvent_1
    procedure :: jm_getCustomCommands_0 => DemoCanvas_jm_getCustomCommands_0
    procedure :: jm_initCommands_1 => DemoCanvas_jm_initCommands_1
    procedure :: jm_initPostPaint_0 => DemoCanvas_jm_initPostPaint_0
    procedure :: jm_mediaInit_0 => DemoCanvas_jm_mediaInit_0
    procedure :: jm_itemStateChanged_1 => DemoCanvas_jm_itemStateChanged_1
    procedure :: jm_initMenu_0 => DemoCanvas_jm_initMenu_0
    procedure :: jm_open_0 => DemoCanvas_jm_open_0
    procedure :: jm_close_0 => DemoCanvas_jm_close_0
    procedure :: jm_getSourceId_0 => DemoCanvas_jm_getSourceId_0
    procedure :: jm_keyPressed_1 => DemoCanvas_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => DemoCanvas_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => DemoCanvas_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => DemoCanvas_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => DemoCanvas_jm_keyReleasedByDevice_2
    procedure :: jm_keyRepeatedByDevice_2 => DemoCanvas_jm_keyRepeatedByDevice_2
    procedure :: jm_addGameKeyEvent_2 => DemoCanvas_jm_addGameKeyEvent_2
    procedure :: jm_removeGameKeyEvent_2 => DemoCanvas_jm_removeGameKeyEvent_2
    procedure :: jm_pause_0 => DemoCanvas_jm_pause_0
    procedure :: jm_unPause_0 => DemoCanvas_jm_unPause_0
    procedure :: jm_isPausable_0 => DemoCanvas_jm_isPausable_0
    procedure :: jm_isGameOver_0 => DemoCanvas_jm_isGameOver_0
    procedure :: jm_setLoadStateHashtable_1 => DemoCanvas_jm_setLoadStateHashtable_1
    procedure :: jm_getLoadStateHashtable_0 => DemoCanvas_jm_getLoadStateHashtable_0
    procedure :: jm_getCurrentStateHashtable_0 => DemoCanvas_jm_getCurrentStateHashtable_0
    procedure :: jm_setHighScoreSubmitted_1 => DemoCanvas_jm_setHighScoreSubmitted_1
    procedure :: jm_paint_1 => DemoCanvas_jm_paint_1
    procedure :: jm_paintThreed_1 => DemoCanvas_jm_paintThreed_1
    procedure :: jm_processGameOver_0 => DemoCanvas_jm_processGameOver_0
    procedure :: jm_demoStateChange_0 => DemoCanvas_jm_demoStateChange_0
    procedure :: jm_updateDemoState_0 => DemoCanvas_jm_updateDemoState_0
    procedure :: jm_getNextRandom_0 => DemoCanvas_jm_getNextRandom_0
    procedure :: jm_createGameLayerManager_1 => DemoCanvas_jm_createGameLayerManager_1
    procedure :: jm_createRunnable_1 => DemoCanvas_jm_createRunnable_1
    procedure :: jm_create_0 => DemoCanvas_jm_create_0
    procedure :: jm_start_0 => DemoCanvas_jm_start_0
    procedure :: jm_preDemoProcess_0 => DemoCanvas_jm_preDemoProcess_0
    procedure :: jm_process_0 => DemoCanvas_jm_process_0
    procedure :: jm_startDemoGame_0 => DemoCanvas_jm_startDemoGame_0
    procedure :: jm_stopGameDemo_0 => DemoCanvas_jm_stopGameDemo_0
    procedure :: jm_showGamePaintable_0 => DemoCanvas_jm_showGamePaintable_0
    procedure :: jm_isReadyForStateChange_0 => DemoCanvas_jm_isReadyForStateChange_0
    procedure :: jm_processGame_0 => DemoCanvas_jm_processGame_0
    procedure :: jm_run_0 => DemoCanvas_jm_run_0
    procedure :: jm_run3_0 => DemoCanvas_jm_run3_0
    procedure :: jm_setRunning_1 => DemoCanvas_jm_setRunning_1
    procedure :: jm_end_0 => DemoCanvas_jm_end_0
    procedure :: jm_setGameState_1 => DemoCanvas_jm_setGameState_1
    procedure :: jm_getGameState_0 => DemoCanvas_jm_getGameState_0
    procedure :: jm_getGameCanvasRunnableInterface_0 => DemoCanvas_jm_getGameCanvasRunnableInterface_0
    procedure :: jm_isDemoLoading_0 => DemoCanvas_jm_isDemoLoading_0
    procedure :: jm_getState_0 => DemoCanvas_jm_getState_0
    procedure :: jm_setState_1 => DemoCanvas_jm_setState_1
    procedure :: jm_isHighScoreSubmitted_0 => DemoCanvas_jm_isHighScoreSubmitted_0
    procedure :: jm_getRealHighScoresPaintable_0 => DemoCanvas_jm_getRealHighScoresPaintable_0
    procedure :: jm_setSpecialAnimationInterface_1 => DemoCanvas_jm_setSpecialAnimationInterface_1
    procedure :: jm_getSpecialAnimationInterface_0 => DemoCanvas_jm_getSpecialAnimationInterface_0
    procedure :: jm_setPaintableInterface_1 => DemoCanvas_jm_setPaintableInterface_1
    procedure :: jm_getPaintableInterface_0 => DemoCanvas_jm_getPaintableInterface_0
    procedure :: jm_setDefaultPaintableInterface_1 => DemoCanvas_jm_setDefaultPaintableInterface_1
    procedure :: jm_getDefaultPaintableInterface_0 => DemoCanvas_jm_getDefaultPaintableInterface_0
    procedure :: jm_getHighScoresFactoryInterface_0 => DemoCanvas_jm_getHighScoresFactoryInterface_0
    procedure :: jm_setMenuInputProcessor_1 => DemoCanvas_jm_setMenuInputProcessor_1
    procedure :: jm_getMenuInputProcessor_0 => DemoCanvas_jm_getMenuInputProcessor_0
    procedure :: jm_getMenuForm_0 => DemoCanvas_jm_getMenuForm_0
    procedure :: jm_setMenuForm_1 => DemoCanvas_jm_setMenuForm_1
    procedure :: jm_isInitialized_0 => DemoCanvas_jm_isInitialized_0
    procedure :: jm_getOverlayPaintable_0 => DemoCanvas_jm_getOverlayPaintable_0
    procedure :: jm_setBasicGameDemoPaintable_1 => DemoCanvas_jm_setBasicGameDemoPaintable_1
    procedure :: jm_getBasicGameDemoPaintable_0 => DemoCanvas_jm_getBasicGameDemoPaintable_0
    procedure :: jm_setTempWait_1 => DemoCanvas_jm_setTempWait_1
    procedure :: jm_getTempWait_0 => DemoCanvas_jm_getTempWait_0
    procedure :: jm_isSingleThread_0 => DemoCanvas_jm_isSingleThread_0
    procedure :: jm_isRunningInAnotherThread_0 => DemoCanvas_jm_isRunningInAnotherThread_0
    procedure :: jm_getGameInitializationInterfaceFactoryInterface_0 => DemoCanvas_jm_getGameInitializationInterfaceFactoryInterface_0
    procedure :: jm_getType_0 => DemoCanvas_jm_getType_0
    procedure :: jm_getTitle_0 => DemoCanvas_jm_getTitle_0
    procedure :: jm_isPaused_0 => DemoCanvas_jm_isPaused_0
  end type

  ! DemoCanvas used as a GameCanvasRunnableInterface
  type, extends(GameCanvasRunnableInterface) :: DemoCanvas_jas_GameCanvasRunnableInterface
    class(DemoCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_initCommands_1 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1
    procedure :: jm_pause_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_pause_0
    procedure :: jm_unPause_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0
    procedure :: jm_isGameOver_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0
    procedure :: jm_setLoadStateHashtable_1 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1
    procedure :: jm_getLoadStateHashtable_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0
    procedure :: jm_getCurrentStateHashtable_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0
    procedure :: jm_setHighScoreSubmitted_1 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1
    procedure :: jm_processGameOver_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0
    procedure :: jm_isHighScoreSubmitted_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0
    procedure :: jm_isInitialized_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0
    procedure :: jm_getType_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_getType_0
    procedure :: jm_getTitle_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0
    procedure :: jm_isPaused_0 => DemoCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0
  end type

  ! DemoCanvas used as a MenuListener
  type, extends(MenuListener) :: DemoCanvas_jas_MenuListener
    class(DemoCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_open_0 => DemoCanvas_jas_MenuListener_jm_open_0
    procedure :: jm_close_0 => DemoCanvas_jas_MenuListener_jm_close_0
  end type

  ! DemoCanvas used as a DisplayChangeEventListener
  type, extends(DisplayChangeEventListener) :: DemoCanvas_jas_DisplayChangeEventListener
    class(DemoCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_onDisplayChangeEvent_1 => DemoCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1
  end type

  ! DemoCanvas used as a DemoPaintableInterface
  type, extends(DemoPaintableInterface) :: DemoCanvas_jas_DemoPaintableInterface
    class(DemoCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_showGamePaintable_0 => DemoCanvas_jas_DemoPaintableInterface_jm_showGamePaintable_0
  end type

  integer(4), save :: DemoCanvas_jcell_id
  logical, save :: DemoCanvas_jset_id = .false.
  character(len=:), allocatable, save :: DemoCanvas_jcell_BOT_GAME_STATS
  logical, save :: DemoCanvas_jset_BOT_GAME_STATS = .false.
  integer(4), save :: DemoCanvas_jcell_TYPE
  logical, save :: DemoCanvas_jset_TYPE = .false.

contains

  function DemoCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoCanvas)
      jresult => object
    end select
  end function

  function DemoCanvas_jas_GameCanvasRunnableInterface_jnew(object) result(jresult)
    class(DemoCanvas), target :: object
    class(DemoCanvas_jas_GameCanvasRunnableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DemoCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1(this, j_cmdListener)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    call this%jtarget%jm_initCommands_1(j_cmdListener)
  end subroutine

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_pause_0(this)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_pause_0()
  end subroutine

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0(this)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_unPause_0()
  end subroutine

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isGameOver_0()
  end function

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    call this%jtarget%jm_setLoadStateHashtable_1(j_hashtable)
  end subroutine

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getLoadStateHashtable_0()
  end function

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getCurrentStateHashtable_0()
  end function

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical, value :: j_highScoreSubmitted
    call this%jtarget%jm_setHighScoreSubmitted_1(j_highScoreSubmitted)
  end subroutine

  recursive subroutine DemoCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0(this)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_processGameOver_0()
  end subroutine

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isHighScoreSubmitted_0()
  end function

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isInitialized_0()
  end function

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_getType_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getType_0()
  end function

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getTitle_0()
  end function

  recursive function DemoCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0(this) result(jresult)
    class(DemoCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isPaused_0()
  end function

  function DemoCanvas_jas_MenuListener_jnew(object) result(jresult)
    class(DemoCanvas), target :: object
    class(DemoCanvas_jas_MenuListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DemoCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine DemoCanvas_jas_MenuListener_jm_open_0(this)
    class(DemoCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_open_0()
  end subroutine

  recursive subroutine DemoCanvas_jas_MenuListener_jm_close_0(this)
    class(DemoCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_close_0()
  end subroutine

  function DemoCanvas_jas_DisplayChangeEventListener_jnew(object) result(jresult)
    class(DemoCanvas), target :: object
    class(DemoCanvas_jas_DisplayChangeEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DemoCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine DemoCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(DemoCanvas_jas_DisplayChangeEventListener), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    call this%jtarget%jm_onDisplayChangeEvent_1(j_displayChangeEvent)
  end subroutine

  function DemoCanvas_jas_DemoPaintableInterface_jnew(object) result(jresult)
    class(DemoCanvas), target :: object
    class(DemoCanvas_jas_DemoPaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DemoCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine DemoCanvas_jas_DemoPaintableInterface_jm_showGamePaintable_0(this)
    class(DemoCanvas_jas_DemoPaintableInterface), target :: this
    call this%jtarget%jm_showGamePaintable_0()
  end subroutine

  function DemoCanvas_jstatic_id() result(jresult)
    integer(4) :: jresult
    if (.not. DemoCanvas_jset_id) then
      DemoCanvas_jset_id = .true.
      DemoCanvas_jcell_id = 0
    end if
    jresult = DemoCanvas_jcell_id
  end function

  subroutine DemoCanvas_jsetstatic_id(jvalue)
    integer(4), value :: jvalue
    DemoCanvas_jset_id = .true.
    DemoCanvas_jcell_id = jvalue
  end subroutine

  function DemoCanvas_jstatic_BOT_GAME_STATS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. DemoCanvas_jset_BOT_GAME_STATS) then
      DemoCanvas_jset_BOT_GAME_STATS = .true.
      DemoCanvas_jcell_BOT_GAME_STATS = 'Bot Game Statistics: '
    end if
    jresult = DemoCanvas_jcell_BOT_GAME_STATS
  end function

  subroutine DemoCanvas_jsetstatic_BOT_GAME_STATS(jvalue)
    character(len=*), intent(in) :: jvalue
    DemoCanvas_jset_BOT_GAME_STATS = .true.
    DemoCanvas_jcell_BOT_GAME_STATS = jvalue
  end subroutine

  function DemoCanvas_jstatic_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. DemoCanvas_jset_TYPE) then
      DemoCanvas_jset_TYPE = .true.
      DemoCanvas_jcell_TYPE = 3
    end if
    jresult = DemoCanvas_jcell_TYPE
  end function

  subroutine DemoCanvas_jsetstatic_TYPE(jvalue)
    integer(4), value :: jvalue
    DemoCanvas_jset_TYPE = .true.
    DemoCanvas_jcell_TYPE = jvalue
  end subroutine

  recursive function DemoCanvas_jnew_7(j_abeClientInformation, j_commandListener, j_highScoresFactoryInterface, j_paintable, j_overlayPaintable, j_gameInitializationInterfaceFactoryInterface, j_isContinue) result(this)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(Paintable), target, optional :: j_paintable
    class(InitUpdatePaintable), target, optional :: j_overlayPaintable
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    logical, value :: j_isContinue
    class(DemoCanvas), pointer :: this
    class(CurrentDisplayableFactory), pointer :: jtemp5
    class(NullWaitGameRunnable), pointer :: jtemp6
    class(GameInitializationUtil), pointer :: jtemp7
    class(ResizableListenerHandler), pointer :: jtemp8
    class(GameCommandsFactory), pointer :: jtemp9
    class(ChangedGameFeatureListener), pointer :: jtemp10
    class(GameFeatureFactory), pointer :: jtemp11
    class(DisplayChangeEventHandler), pointer :: jtemp12
    class(FullScreenPaintableFactory), pointer :: jtemp1
    class(NullWaitGameRunnable), pointer :: jtemp2
    class(PersistentInputMapping), pointer :: jtemp3
    class(PlatformInputMappingFactory), pointer :: jtemp4
    class(Features), pointer :: jtemp34
    class(InputFeatureFactory), pointer :: jtemp35
    class(GameKeyFactory), pointer :: jtemp36
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DemoCanvas'
    this%f_SET_STATE = ''
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    this%f_myCommandsFactory => MyCommandsFactory_jm_getInstance_0()
    this%f_gameAdStateFactory => GameAdStateFactory_jm_getInstance_0()
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
    this%f_threadFactoryUtil => ThreadFactoryUtil_jm_getInstance_0()
    this%f_formUtil => FormUtil_jm_getInstance_0()
    jtemp1 => FullScreenPaintableFactory_jm_getInstance_0()
    this%f_fullscreenPaintable => jtemp1%f_paintable
    this%f_basicGameDemoPaintable => StatePaintableFactory_jm_getInstance_0()
    this%f_specialAnimationInterface => SpecialAnimation_jm_getInstance_0()
    this%f_paintedSpecialAnimationInterface => SpecialAnimation_jm_getInstance_0()
    this%f_fullScreenUtil => FullScreenUtil_jm_getInstance_0()
    this%f_gameCanvas => NullGameCanvas_jm_getInstance_0()
    this%f_highScoresHelper => HighScoresHelper_jnew_0()
    this%f_realHighScoresPaintable => HighScoresPaintable_jnew_0()
    this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
    this%f_state = 0
    this%f_canvasThread => NullThread_jstatic_NULL_THREAD()
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(6000)
    this%f_basicColor => this%f_basicColorFactory%f_RED
    
    
    this%f_menuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_menuForm => ScrollSelectionForm_jm_getNullScrollSelectionForm_0()
    
    
    
    this%f_defaultPaintableInterface => NullPaintable_jm_getInstance_0()
    this%f_paintableInterface => NullPaintable_jm_getInstance_0()
    
    this%f_progressPaintable => ProgressCanvasFactory_jm_getLazyInstance_0()
    jtemp2 => NullWaitGameRunnable_jm_getInstance_0()
    this%f_tempWait = jtemp2%f_WAIT
    jtemp4 => PlatformInputMappingFactory_jm_getInstance_0()
    jtemp3 => jtemp4%jm_getPersistentInputMappingInstance_0()
    this%f_inputToGameKeyMapping => jtemp3%jm_getInputMapping_0()
    this%f_gameRunnable => NullWaitGameRunnable_jm_getInstance_0()
    jtemp35 => InputFeatureFactory_jm_getInstance_0()
    jtemp34 => Features_jm_getInstance_0()
    this%f_isSingleKeyRepeatableProcessing = jtemp34%jm_isFeature_1(jtemp35%f_SINGLE_KEY_REPEAT_PRESS)
    jtemp36 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp36%f_NONE
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_lastKeyNotMapped = (-1)
    this%f_SET_STATE = 'setState'
    this%f_baseGameStatistics => GameStatisticsFactory_jm_getInstance_0()
        jtemp5 => CurrentDisplayableFactory_jm_getInstance_0()
        continue ! super()
        this%f_abeClientInformation => j_abeClientInformation
        jtemp6 => NullWaitGameRunnable_jm_getInstance_0()
        call this%jm_setWait_1(jtemp6%f_WAIT)
        this%f_gameInitializationInterfaceFactoryInterface => j_gameInitializationInterfaceFactoryInterface
        jtemp7 => GameInitializationUtil_jm_getInstance_0()
        call jtemp7%jm_initDemo_3(j_abeClientInformation, this, j_gameInitializationInterfaceFactoryInterface)
        jtemp8 => ResizableListenerHandler_jm_getInstance_0()
        call jtemp8%jm_fireEvent_1(.false.)
        this%f_overlayPaintable => j_overlayPaintable
        this%f_highScoresFactoryInterface => j_highScoresFactoryInterface
        call this%jm_setDefaultPaintableInterface_1(j_paintable)
        call this%jm_setPaintableInterface_1(this%jm_getDefaultPaintableInterface_0())
        if (j_isContinue) then
            jtemp9 => GameCommandsFactory_jm_getInstance_0()
            call this%jm_addCommand_1(jtemp9%f_CONTINUE_COMMAND)
        end if
        jtemp11 => GameFeatureFactory_jm_getInstance_0()
        jtemp10 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp10%jm_isChangedFeature_1(jtemp11%f_SOUND)) then
            call this%jm_mediaInit_0()
        end if
        this%f_demoGameRunnable => DemoGameStartupRunnable_jnew_1(this)
        jtemp12 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp12%jm_addListenerInterface_1(this)
  end function

  recursive subroutine DemoCanvas_jm_onEvent_1(this, j_eventObject)
    class(DemoCanvas), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp13%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine DemoCanvas_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(DemoCanvas), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(FormType), pointer :: j_formType
    class(Rectangle), pointer :: j_rectangle
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(FormTypeFactory), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp16 => StringMaker_jnew_0()
            jtemp15 => jtemp16%jm_append_1(this%f_commonLabels%f_START_LABEL)
            jtemp14 => jtemp15%jm_append_1(JR_toString(this%f_displayInfo))
            call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, this%f_canvasStrings%f_ON_DISPLAY_CHANGE_EVENT)
            j_scrollSelectionForm => this%jm_getMenuForm_0()
            if (associated(j_scrollSelectionForm)) then
                jtemp17 => FormTypeFactory_jm_getInstance_0()
                j_formType => jtemp17%jm_getFormType_0()
                j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
                call j_scrollSelectionForm%jm_init_2(j_rectangle, j_formType)
            end if
            call this%f_overlayPaintable%jm_init_0()
  end subroutine

  recursive function DemoCanvas_jm_getCustomCommands_0(this) result(jresult)
    class(DemoCanvas), target :: this
    type(JRef), allocatable :: jresult(:)
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(BasicArrayList), pointer :: j_commandList
    class(InApplicationPurchaseFactory), pointer :: j_inApplicationPurchaseFactory
    class(BasicArrayList), pointer :: j_list
    logical :: j_isOverScan
    type(JRef), allocatable :: j_commandArray(:)
    class(LockableFeatureFactory), pointer :: jtemp18
    class(HighScoreCommands), pointer :: jtemp19
    class(GenericOperatingSystem), pointer :: jtemp20
    class(OperatingSystemFactory), pointer :: jtemp21
    class(HighScoreCommands), pointer :: jtemp22
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        if (J2MEUtil_jm_isHTML_0()) then
            jtemp22 => HighScoreCommands_jm_getInstance_0()
            j_commandArray = [JRef :: JRef(j_gameCommandsFactory%f_START_COMMAND), JRef(jtemp22%f_DISPLAY), JRef(GameInputMappingCanvas_jstatic_DISPLAY()), JRef(j_gameCommandsFactory%f_DISPLAY_ABOUT)]
            jresult = j_commandArray
            return
        else
            j_commandList => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_START_COMMAND)
            j_inApplicationPurchaseFactory => InApplicationPurchaseFactory_jm_getInstance_0()
            if (j_inApplicationPurchaseFactory%jm_isEnabled_0()) then
                jtemp18 => LockableFeatureFactory_jm_getInstance_0()
                j_list => jtemp18%jm_getList_0()
                if (((j_list%jm_size_0() > 0) .and. (.not. j_inApplicationPurchaseFactory%jm_isPurchased_1(LockableFeature_jcast(j_list%jm_get_1(0)))))) then
                    jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_BUY_COMMAND)
                end if
            end if
            jtemp19 => HighScoreCommands_jm_getInstance_0()
            jdiscardBoolean = j_commandList%jm_add_1(jtemp19%f_DISPLAY)
            continue ! try
                jtemp21 => OperatingSystemFactory_jm_getInstance_0()
                jtemp20 => jtemp21%jm_getOperatingSystemInstance_0()
                j_isOverScan = jtemp20%jm_isOverScan_0()
                if (SWTUtil_jstatic_isSWT()) then
                    jdiscardBoolean = j_commandList%jm_add_1(GameInputMappingCanvas_jstatic_DISPLAY())
                else if ((.not. j_isOverScan)) then
                    jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_DISPLAY_OPTIONS)
                    jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_DISPLAY_LOAD_FORM)
                    jdiscardBoolean = j_commandList%jm_add_1(GameInputMappingCanvas_jstatic_DISPLAY())
                end if
            jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_DISPLAY_ABOUT)
            j_commandArray = j_commandList%jm_toArray_0()
            jresult = j_commandArray
            return
        end if
  end function

  recursive subroutine DemoCanvas_jm_initCommands_1(this, j_cmdListener)
    class(DemoCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    type(JRef), allocatable :: j_commandArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        j_commandArray = this%jm_getCustomCommands_0()
        j_size = size(j_commandArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            call this%jm_addCommand_1(Command_jcast(j_commandArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        jdiscardBoolean = CustomGameMenuUtil_jm_add_1(this)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine DemoCanvas_jm_initPostPaint_0(this)
    class(DemoCanvas), target :: this
    continue
  end subroutine

  recursive subroutine DemoCanvas_jm_mediaInit_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call AllBinaryMediaManager_jm_init_1(EarlySoundsFactory_jm_getInstance_0())
  end subroutine

  recursive subroutine DemoCanvas_jm_itemStateChanged_1(this, j_item)
    class(DemoCanvas), target :: this
    class(Item), target, optional :: j_item
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine

  recursive subroutine DemoCanvas_jm_initMenu_0(this)
    class(DemoCanvas), target :: this
    class(CommandTextItemArrayFactory), pointer :: j_commandTextItemArrayFactory
    type(JRef), allocatable :: j_items(:)
    class(FormType), pointer :: j_formType
    class(Rectangle), pointer :: j_rectangle
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(FormType), pointer :: j_formType2
    class(Rectangle), pointer :: j_rectangle2
    class(DemoLimitedCommandTextItemArrayFactory), pointer :: jtemp23
    class(FormTypeFactory), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    class(StringUtil), pointer :: jtemp28
    class(FormTypeFactory), pointer :: jtemp29
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_close_0()
        jtemp23 => DemoLimitedCommandTextItemArrayFactory_jm_getInstance_0()
        j_commandTextItemArrayFactory => jtemp23%jm_getCommandTextItemArrayFactory_0()
        j_items = j_commandTextItemArrayFactory%jm_getInstance_3(this%jm_getCommandStack_0(), this%f_basicColorFactory%f_BLACK, this%f_basicColorFactory%f_WHITE)
        jtemp24 => FormTypeFactory_jm_getInstance_0()
        j_formType => jtemp24%jm_getFormType_0()
        j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
        jtemp27 => StringMaker_jnew_0()
        jtemp26 => jtemp27%jm_append_1(this%f_commonLabels%f_START_LABEL)
        jtemp25 => jtemp26%jm_append_1(JR_toString(this%f_displayInfo))
        call PreLogUtil_jm_put_3(jtemp25%jm_toString_0(), this, 'initMenu')
        jtemp28 => StringUtil_jm_getInstance_0()
        j_scrollSelectionForm => CommandCurrentSelectionFormFactory_jm_getInstance_8(jtemp28%f_EMPTY_STRING, j_items, j_rectangle, j_formType, 15, .true., this%f_basicColorFactory%f_BLACK, this%f_basicColorFactory%f_WHITE)
        call this%jm_setMenuForm_1(j_scrollSelectionForm)
        jtemp29 => FormTypeFactory_jm_getInstance_0()
        j_formType2 => jtemp29%jm_getFormType_0()
        j_rectangle2 => this%f_formUtil%jm_createFormRectangle_0()
        call j_scrollSelectionForm%jm_init_2(j_rectangle2, j_formType2)
        if ((.not. JR_same(this%jm_getMenuForm_0(), ScrollSelectionFormNoneFactory_jm_getInstance_0()))) then
            call this%jm_setMenuInputProcessor_1(CommandFormInputProcessor_jnew_4(BasicArrayListD_jnew_0(), (-1), this, this%jm_getMenuForm_0()))
        end if
        call this%jm_open_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_open_0(this)
    class(DemoCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp30
    class(GameKeyEventHandler), pointer :: jtemp31
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp30 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp30%jm_addListenerInterface_1(this%jm_getMenuInputProcessor_0())
        jtemp31 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp31%jm_addListener_1(this%jm_getMenuInputProcessor_0())
  end subroutine

  recursive subroutine DemoCanvas_jm_close_0(this)
    class(DemoCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp32
    class(GameKeyEventHandler), pointer :: jtemp33
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp32 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp32%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
        jtemp33 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp33%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
  end subroutine

  recursive function DemoCanvas_jm_getSourceId_0(this) result(jresult)
    class(DemoCanvas), target :: this
    integer(4) :: jresult
        jresult = DemoCanvas_jstatic_id()
        return
  end function

  recursive subroutine DemoCanvas_jm_keyPressed_1(this, j_keyCode)
    class(DemoCanvas), target :: this
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

  recursive subroutine DemoCanvas_jm_keyReleased_1(this, j_keyCode)
    class(DemoCanvas), target :: this
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

  recursive subroutine DemoCanvas_jm_keyRepeated_1(this, j_keyCode)
    class(DemoCanvas), target :: this
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

  recursive subroutine DemoCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(DemoCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_addGameKeyEvent_2(j_keyCode, .false.)
  end subroutine

  recursive subroutine DemoCanvas_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(DemoCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeGameKeyEvent_2(j_keyCode, .false.)
  end subroutine

  recursive subroutine DemoCanvas_jm_keyRepeatedByDevice_2(this, j_keyCode, j_deviceId)
    class(DemoCanvas), target :: this
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
            call this%jm_addGameKeyEvent_2(j_keyCode, .true.)
        end if
  end subroutine

  recursive subroutine DemoCanvas_jm_addGameKeyEvent_2(this, j_keyCode, j_repeated)
    class(DemoCanvas), target :: this
    integer(4), value :: j_keyCode
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(StringMaker), pointer :: jtemp39
    class(DownGameKeyEventHandler), pointer :: jtemp40
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_NONE))) then
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this, j_gameKey)
                jtemp40 => DownGameKeyEventHandler_jm_getInstance_0()
                call jtemp40%jm_fireEvent_1(j_gameKeyEvent)
            else
                if ((this%f_lastKeyNotMapped /= j_keyCode)) then
                    this%f_lastKeyNotMapped = j_keyCode
                    jtemp39 => StringMaker_jnew_0()
                    jtemp38 => jtemp39%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                    jtemp37 => jtemp38%jm_appendint_1(j_keyCode)
                    call this%f_logUtil%jm_putF_3(jtemp37%jm_toString_0(), this, this%f_gameInputStrings%f_ADD_KEY_EVENT)
                end if
            end if
  end subroutine

  recursive subroutine DemoCanvas_jm_removeGameKeyEvent_2(this, j_keyCode, j_repeated)
    class(DemoCanvas), target :: this
    integer(4), value :: j_keyCode
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp41
    class(StringMaker), pointer :: jtemp42
    class(StringMaker), pointer :: jtemp43
    class(UpGameKeyEventHandler), pointer :: jtemp44
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_NONE))) then
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this, j_gameKey)
                jtemp44 => UpGameKeyEventHandler_jm_getInstance_0()
                call jtemp44%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp43 => StringMaker_jnew_0()
                jtemp42 => jtemp43%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp41 => jtemp42%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp41%jm_toString_0(), this, this%f_gameInputStrings%f_REMOVE_KEY_EVENT)
            end if
  end subroutine

  recursive subroutine DemoCanvas_jm_pause_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_close_0()
        call this%jm_setPaused_1(.true.)
        this%f_gameRunnable => NullWaitGameRunnable_jm_getInstance_0()
        call this%f_gameCanvas%jm_pause_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_unPause_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_open_0()
        call this%f_gameCanvas%jm_unPause_0()
        this%f_gameRunnable => this%f_gameCanvas%f_gameRunnable
        call this%jm_setPaused_1(.false.)
  end subroutine

  recursive function DemoCanvas_jm_isPausable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(CurrentDisplayableFactory), pointer :: jtemp45
        jtemp45 => CurrentDisplayableFactory_jm_getInstance_0()
        if ((jtemp45%jm_getUsedRunnable_0() == NullWaitGameRunnable_jm_getInstance_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function DemoCanvas_jm_isGameOver_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(StringMaker), pointer :: jtemp46
    class(StringMaker), pointer :: jtemp47
    class(StringMaker), pointer :: jtemp48
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp48 => StringMaker_jnew_0()
        jtemp47 => jtemp48%jm_append_1(this%f_commonStrings%f_NOT_IMPLEMENTED)
        jtemp46 => jtemp47%jm_append_1(' since not a game')
        call this%f_logUtil%jm_putF_3(jtemp46%jm_toString_0(), this, 'isGameOver')
        jresult = .false.
        return
  end function

  recursive subroutine DemoCanvas_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(DemoCanvas), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Trying to continue a demo lol - only continue a game canvas not the demo', this, 'setLoadStateHashtable')
  end subroutine

  recursive function DemoCanvas_jm_getLoadStateHashtable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(ABHashtable), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Trying to continue a demo lol - only continue a game canvas not the demo', this, 'getLoadStateHashtable')
        jresult => this%f_stdUtil%f_NULL_TABLE
        return
  end function

  recursive function DemoCanvas_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(ABHashtable), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Trying to save the AI lol', this, 'getCurrentStateHashtable')
        jresult => this%f_stdUtil%f_NULL_TABLE
        return
  end function

  recursive subroutine DemoCanvas_jm_setHighScoreSubmitted_1(this, j_isNotUsed)
    class(DemoCanvas), target :: this
    logical, value :: j_isNotUsed
    continue
  end subroutine

  recursive subroutine DemoCanvas_jm_paint_1(this, j_graphics)
    class(DemoCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(StatePaintable), pointer :: jtemp49
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_paintableInterface%jm_paint_1(j_graphics)
        call this%f_paintedSpecialAnimationInterface%jm_paintXY_3(j_graphics, 0, 0)
        call this%f_highScoresPaintable%jm_paint_1(j_graphics)
        jtemp49 => this%jm_getBasicGameDemoPaintable_0()
        call jtemp49%jm_paint_1(j_graphics)
        call this%f_overlayPaintable%jm_paint_1(j_graphics)
        call this%f_fullscreenPaintable%jm_paint_1(j_graphics)
        call this%f_progressPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine DemoCanvas_jm_paintThreed_1(this, j_graphics)
    class(DemoCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_paintableInterface%jm_paintThreed_1(j_graphics)
        call this%f_paintedSpecialAnimationInterface%jm_paintThreedXYZ_4(j_graphics, 0, 0, 0)
  end subroutine

  recursive subroutine DemoCanvas_jm_processGameOver_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Not Implemented since not a game', this, 'setGameOver')
  end subroutine

  recursive subroutine DemoCanvas_jm_demoStateChange_0(this)
    class(DemoCanvas), target :: this
    integer(4) :: j_newState
    class(HighScores), pointer :: j_highScores
    class(HighScoresPaintable), pointer :: jtemp50
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_newState = (this%f_state + 1)
        if ((j_newState > 2)) then
            j_newState = 0
        else if ((j_newState == 2)) then
            if ((.not. this%f_highScoresHelper%jm_isAnyHighScores_0())) then
                j_newState = 0
            else
                j_highScores => this%f_highScoresHelper%jm_getNextHighScores_0()
                if (JR_same(j_highScores, NullHighScoresSingletonFactory_jm_getInstance_0())) then
                    j_newState = 0
                else
                    jtemp50 => this%jm_getRealHighScoresPaintable_0()
                    call jtemp50%jm_setHighScores_1(j_highScores)
                end if
            end if
        end if
        call this%jm_setState_1(j_newState)
        call this%jm_updateDemoState_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_updateDemoState_0(this)
    class(DemoCanvas), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(Integer), pointer :: jtemp51
    class(SmallIntegerSingletonFactory), pointer :: jtemp52
    class(StatePaintable), pointer :: jtemp53
    class(SpecialAnimation), pointer :: jtemp54
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp52 => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp51 => jtemp52%jm_createInstance_1(this%f_state)
        call PreLogUtil_jm_put_3(jtemp51%jm_toString_0(), this, this%f_SET_STATE)
        jtemp53 => this%jm_getBasicGameDemoPaintable_0()
        call jtemp53%jm_setState_1(this%f_state)
        if ((this%f_state == 0)) then
            this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
            this%f_paintedSpecialAnimationInterface => this%jm_getSpecialAnimationInterface_0()
            if (((.not. this%f_demoGameRunnable%jm_isRunning_0()) .and. this%f_gameCanvas%jm_isInitialized_0())) then
                jtemp54 => this%jm_getSpecialAnimationInterface_0()
                call jtemp54%jm_reset_0()
            end if
        else if ((this%f_state == 1)) then
            this%f_paintedSpecialAnimationInterface => SpecialAnimation_jm_getInstance_0()
        else if ((this%f_state == 2)) then
            this%f_highScoresPaintable => this%jm_getRealHighScoresPaintable_0()
        end if
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        call j_gameAdState%jm_processPageAdState_0()
  end subroutine

  recursive function DemoCanvas_jm_getNextRandom_0(this) result(jresult)
    class(DemoCanvas), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function DemoCanvas_jm_createGameLayerManager_1(this, j_randomValue) result(jresult)
    class(DemoCanvas), target :: this
    integer(4), value :: j_randomValue
    class(AllBinaryGameLayerManager), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function DemoCanvas_jm_createRunnable_1(this, j_randomLevel) result(jresult)
    class(DemoCanvas), target :: this
    integer(4), value :: j_randomLevel
    class(GameCanvasRunnableInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine DemoCanvas_jm_create_0(this)
    class(DemoCanvas), target :: this
    integer(4) :: j_randomLevel
    class(GameInfo), pointer :: j_gameInfo
    class(AllBinaryGameLayerManager), pointer :: jtemp55
    class(HighScoresPaintable), pointer :: jtemp56
    class(AllBinaryGameLayerManager), pointer :: jtemp57
    class(HighScoresFactoryInterface), pointer :: jtemp58
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call PreLogUtil_jm_put_3(this%f_commonStrings%f_START, this, 'create')
        this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
        j_randomLevel = this%jm_getNextRandom_0()
        this%f_gameCanvas => AllBinaryGameCanvas_jcast(this%jm_createRunnable_1(j_randomLevel))
        jtemp55 => this%f_gameCanvas%jm_getLayerManager_0()
        this%f_basicColor => jtemp55%jm_getForegroundBasicColor_0()
        jtemp56 => this%jm_getRealHighScoresPaintable_0()
        call jtemp56%jm_setBasicColorP_1(this%f_basicColor)
        call this%f_gameCanvas%jm_setGameCanvasStartListener_1(DemoCanvas_jas_DemoPaintableInterface_jnew(this))
        jtemp57 => this%f_gameCanvas%jm_getLayerManager_0()
        j_gameInfo => jtemp57%jm_getGameInfo_0()
        jtemp58 => this%jm_getHighScoresFactoryInterface_0()
        call jtemp58%jm_fetchHighScores_2(j_gameInfo, this%f_highScoresHelper)
  end subroutine

  recursive subroutine DemoCanvas_jm_start_0(this)
    class(DemoCanvas), target :: this
    class(AllBinaryGameCanvas), pointer :: j_gameCanvas
    class(StringMaker), pointer :: jtemp59
    class(StringMaker), pointer :: jtemp60
    class(StringMaker), pointer :: jtemp61
    class(NullWaitGameRunnable), pointer :: jtemp62
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCanvas => this%f_gameCanvas
        jtemp61 => StringMaker_jnew_0()
        jtemp60 => jtemp61%jm_append_1('Game Thread in DemoCanvas: ')
        jtemp59 => jtemp60%jm_append_1(JR_toString(this%f_stringUtil))
        call PreLogUtil_jm_put_3(jtemp59%jm_toString_0(), this, this%f_commonStrings%f_START)
        this%f_canvasThread => this%f_threadFactoryUtil%jm_getInstanceGameCanvasRunnable_1(j_gameCanvas)
        call this%f_gameCanvas%jm_setThread_1(this%f_canvasThread)
        call this%f_threadFactoryUtil%jm_start_1(this%f_canvasThread)
        jtemp62 => NullWaitGameRunnable_jm_getInstance_0()
        if ((this%jm_getWait_0() == jtemp62%f_WAIT)) then
            call this%jm_setWait_1(this%jm_getTempWait_0())
        end if
  end subroutine

  recursive subroutine DemoCanvas_jm_preDemoProcess_0(this)
    class(DemoCanvas), target :: this
    class(PrimaryPlayerQueueFactory), pointer :: jtemp63
    class(SecondaryPlayerQueueFactory), pointer :: jtemp64
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((.not. this%f_gameCanvas%jm_isInitialized_0()) .or. (this%f_gameCanvas%jm_getTitle_0() == NullGameCanvas_jstatic_NO_GAME()))) then
            if (AllBinaryMediaManager_jm_update_0()) then
                jtemp63 => PrimaryPlayerQueueFactory_jm_getInstance_0()
                if ((.not. jtemp63%jm_process_0())) then
                    jtemp64 => SecondaryPlayerQueueFactory_jm_getInstance_0()
                    call jtemp64%jm_process_0()
                end if
            end if
        end if
        call this%f_overlayPaintable%jm_update_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_process_0(this)
    class(DemoCanvas), target :: this
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
    class(DemoGameMidlet), pointer :: j_demoGameMidlet
    class(Thread), pointer :: j_thread
    integer(4) :: j_randomLevel
    class(GameInfo), pointer :: j_gameInfo
    class(BasicMenuInputProcessor), pointer :: jtemp65
    class(SpecialAnimation), pointer :: jtemp66
    class(AllBinaryGameLayerManager), pointer :: jtemp67
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RunnableCanvas%jm_process_0()
        jtemp65 => this%jm_getMenuInputProcessor_0()
        jdiscardInt = jtemp65%jm_processInputList_0()
        call this%jm_preDemoProcess_0()
        if ((this%f_state == 0)) then
            jtemp66 => this%jm_getSpecialAnimationInterface_0()
            j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(jtemp66%jm_getAnimationBehavior_0())
            if ((j_indexedAnimationBehavior%f_loopIndex < 1)) then
                call this%f_timeDelayHelper%jm_setStartTimeTNT_0()
            end if
            j_demoGameMidlet => DemoGameMidlet_jcast(this%jm_getCustomCommandListener_0())
            if (((.not. JR_same(this%f_gameCanvas, NullGameCanvas_jm_getInstance_0())) .and. this%f_gameCanvas%jm_isGameOver_0())) then
                call this%jm_stopGameDemo_0()
                j_randomLevel = this%jm_getNextRandom_0()
                jtemp67 => this%f_gameCanvas%jm_getLayerManager_0()
                j_gameInfo => jtemp67%jm_getGameInfo_0()
                call j_gameInfo%jm_setCurrentLevel_1(j_randomLevel)
                call this%f_gameCanvas%jm_setGameOver_1(.false.)
                call this%jm_start_0()
            else if ((JR_same(this%f_gameCanvas, NullGameCanvas_jm_getInstance_0()) .and. j_demoGameMidlet%jm_isReady_0())) then
                if ((.not. this%f_demoGameRunnable%jm_isRunning_0())) then
                    call this%jm_startDemoGame_0()
                    call this%f_demoGameRunnable%jm_setRunning_1(.true.)
                    j_thread => this%f_threadFactoryUtil%jm_getInstanceForRunnable_1(this%f_demoGameRunnable)
                    call this%f_demoGameRunnable%jm_setThread_1(j_thread)
                    call this%f_threadFactoryUtil%jm_start_1(j_thread)
                end if
            end if
        end if
  end subroutine

  recursive subroutine DemoCanvas_jm_startDemoGame_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call DemoCanvasProgressUtil_jm_showProgress_1(this)
  end subroutine

  recursive subroutine DemoCanvas_jm_stopGameDemo_0(this)
    class(DemoCanvas), target :: this
    class(ThreadUtil), pointer :: jtemp68
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_same(this%f_gameCanvas, NullGameCanvas_jm_getInstance_0()))) then
            call this%f_logUtil%jm_putF_3('Set Running False', this, 'stopGameDemo')
            call this%f_gameCanvas%jm_setRunning_1(.false.)
        end if
        jtemp68 => ThreadUtil_jm_getInstance_0()
        call jtemp68%jm_join_1(this%f_canvasThread)
  end subroutine

  recursive subroutine DemoCanvas_jm_showGamePaintable_0(this)
    class(DemoCanvas), target :: this
    character(len=:), allocatable :: j_METHOD_NAME
    logical :: j_isDefault
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'showGamePaintable'
        call PreLogUtil_jm_put_3(this%f_commonStrings%f_START, this, j_METHOD_NAME)
        j_isDefault = J2MEUtil_jm_isHTML_0()
        if ((((.not. JR_same(this%f_gameCanvas, NullGameCanvas_jm_getInstance_0())) .and. (((this%f_gameCanvas%jm_isRunning_0() .or. j_isDefault) .or. SWTUtil_jstatic_isSWT()))) .and. (.not. ((this%f_gameCanvas%jm_getType_0() == NullGameCanvas_jstatic_TYPE()))))) then
            this%f_gameRunnable => this%f_gameCanvas%f_gameRunnable
            call PreLogUtil_jm_put_3('Showing Game', this, j_METHOD_NAME)
            call this%jm_setPaintableInterface_1(this%f_gameCanvas)
        else
            this%f_gameRunnable => NullWaitGameRunnable_jm_getInstance_0()
            call PreLogUtil_jm_put_3('Not Showing Game', this, j_METHOD_NAME)
            call this%jm_setPaintableInterface_1(this%jm_getDefaultPaintableInterface_0())
        end if
  end subroutine

  recursive function DemoCanvas_jm_isReadyForStateChange_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
        jresult = ((.not. this%f_demoGameRunnable%jm_isRunning_0()) .and. this%f_gameCanvas%jm_isInitialized_0())
        return
  end function

  recursive subroutine DemoCanvas_jm_processGame_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameRunnable%jm_run_0()
        if (((.not. this%f_specialAnimationInterface%jm_isComplete_0()) .and. this%jm_isReadyForStateChange_0())) then
            call this%f_specialAnimationInterface%jm_nextFrame_0()
        end if
        if ((this%f_timeDelayHelper%jm_isTimeTNT_0() .and. this%jm_isReadyForStateChange_0())) then
            call this%jm_demoStateChange_0()
        else
            call this%jm_process_0()
        end if
  end subroutine

  recursive subroutine DemoCanvas_jm_run_0(this)
    class(DemoCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(DemoGameRunnable), pointer :: j_demoGameRunnable
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(MainFeatureFactory), pointer :: jtemp69
    class(OpenGLThreadUtil), pointer :: jtemp70
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
        continue ! try
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            j_features => Features_jm_getInstance_0()
            j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Demo Thread')
            call this%jm_setCurrentThread_0()
            call this%jm_setRunning_1(.true.)
            jtemp69 => MainFeatureFactory_jm_getInstance_0()
            if (j_features%jm_isFeature_1(jtemp69%f_LOAD_ONDEMAND)) then
                call j_progressCanvas%jm_end_0()
            else
                call j_progressCanvas%jm_addNormalPortion_2(50, 'Demo Thread Running')
            end if
            call this%f_fullScreenUtil%jm_initOnRun_2(this, this%jm_getCustomCommandListener_0())
            call this%jm_initMenu_0()
            call this%jm_initPostPaint_0()
            call this%jm_updateDemoState_0()
            if (j_features%jm_isDefault_1(j_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD)) then
                do while ((JR_same(this%f_gameCanvas, NullGameCanvas_jm_getInstance_0()) .or. (.not. this%f_gameCanvas%jm_isInitialized_0())))
                    call this%f_loopTimeHelper%jm_setStartTimeTNT_0()
                    call this%jm_processGame_0()
                    call this%jm_processLoopSleep_0()
                end do
                j_demoGameRunnable => DemoGameRunnable_jnew_1(this)
                j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
                call j_currentDisplayableFactory%jm_setRunnable_1(j_demoGameRunnable)
                call j_currentDisplayableFactory%jm_setMyCanvas_1(this)
                jtemp70 => OpenGLThreadUtil_jm_getInstance_0()
                call jtemp70%jm_onResume_0()
            end if
            if ((j_features%jm_isDefault_1(j_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD) .or. J2MEUtil_jm_isHTML_0())) then
                j_demoGameRunnable => DemoGameRunnable_jnew_1(this)
                j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
                call j_currentDisplayableFactory%jm_setRunnable_1(j_demoGameRunnable)
                call j_currentDisplayableFactory%jm_setMyCanvas_1(this)
            else
                do while (this%jm_isRunning_0())
                    call this%jm_run3_0()
                end do
                call this%jm_end_0()
            end if
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive subroutine DemoCanvas_jm_run3_0(this)
    class(DemoCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_loopTimeHelper%jm_setStartTimeTNT_0()
        call this%jm_processGame_0()
        call this%jm_processLoopSleep_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_setRunning_1(this, j_running)
    class(DemoCanvas), target :: this
    logical, value :: j_running
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RunnableCanvas%jm_setRunning_1(j_running)
        continue ! try
            j_features => Features_jm_getInstance_0()
            j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
            if (j_running) then
                continue
            else
                if ((((j_features%jm_isDefault_1(j_openGLFeatureFactory%f_OPENGL) .or. J2MEUtil_jm_isHTML_0())) .or. SWTUtil_jstatic_isSWT())) then
                    j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
                    call j_currentDisplayableFactory%jm_clearRunnable_0()
                    call this%jm_end_0()
                end if
            end if
  end subroutine

  recursive subroutine DemoCanvas_jm_end_0(this)
    class(DemoCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(Features), pointer :: j_features
    class(StringMaker), pointer :: jtemp71
    class(StringMaker), pointer :: jtemp72
    class(StringMaker), pointer :: jtemp73
    class(StringMaker), pointer :: jtemp74
    class(CommonSeps), pointer :: jtemp75
    class(MainFeatureFactory), pointer :: jtemp76
    class(DisplayChangeEventHandler), pointer :: jtemp77
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        j_features => Features_jm_getInstance_0()
        jtemp74 => StringMaker_jnew_0()
        jtemp75 => CommonSeps_jm_getInstance_0()
        jtemp73 => jtemp74%jm_append_1(DemoCanvas_jstatic_BOT_GAME_STATS())
        jtemp72 => jtemp73%jm_append_1(this%f_baseGameStatistics%jm_toString_0())
        jtemp71 => jtemp72%jm_append_1(jtemp75%f_NEW_LINE)
        call this%f_baseGameStatistics%jm_add_1(jtemp71%jm_toString_0())
        call this%f_baseGameStatistics%jm_init_0()
        jtemp76 => MainFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isFeature_1(jtemp76%f_LOAD_ONDEMAND)) then
            call j_progressCanvas%jm_start_0()
        end if
        call this%f_logUtil%jm_putF_3('Demo End', this, this%f_commonStrings%f_RUN)
        call this%jm_close_0()
        jtemp77 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp77%jm_removeListener_1(this)
        call this%jm_stopGameDemo_0()
  end subroutine

  recursive subroutine DemoCanvas_jm_setGameState_1(this, j_gameState)
    class(DemoCanvas), target :: this
    class(GameState), target, optional :: j_gameState
    continue
  end subroutine

  recursive function DemoCanvas_jm_getGameState_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(GameState), pointer :: jresult
        jresult => this%f_gameStateFactory%f_PLAYING_GAME_STATE
        return
  end function

  recursive function DemoCanvas_jm_getGameCanvasRunnableInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(AllBinaryGameCanvas), pointer :: jresult
        jresult => this%f_gameCanvas
        return
  end function

  recursive function DemoCanvas_jm_isDemoLoading_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(AllBinaryGameCanvas), pointer :: j_gameCanvas
        j_gameCanvas => this%f_gameCanvas
        if (JR_same(j_gameCanvas, NullGameCanvas_jm_getInstance_0())) then
            jresult = .true.
            return
        else if (j_gameCanvas%jm_isInitialized_0()) then
            jresult = .false.
            return
        end if
        jresult = .true.
        return
  end function

  recursive function DemoCanvas_jm_getState_0(this) result(jresult)
    class(DemoCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_state
        return
  end function

  recursive subroutine DemoCanvas_jm_setState_1(this, j_state)
    class(DemoCanvas), target :: this
    integer(4), value :: j_state
        this%f_state = j_state
  end subroutine

  recursive function DemoCanvas_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Wow the AI got a high score!', this, 'isHighScoreSubmitted')
        jresult = .false.
        return
  end function

  recursive function DemoCanvas_jm_getRealHighScoresPaintable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(HighScoresPaintable), pointer :: jresult
        jresult => this%f_realHighScoresPaintable
        return
  end function

  recursive subroutine DemoCanvas_jm_setSpecialAnimationInterface_1(this, j_specialAnimationInterface)
    class(DemoCanvas), target :: this
    class(SpecialAnimation), target, optional :: j_specialAnimationInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_specialAnimationInterface%jm_setFrame_1(0)
        this%f_specialAnimationInterface => j_specialAnimationInterface
  end subroutine

  recursive function DemoCanvas_jm_getSpecialAnimationInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(SpecialAnimation), pointer :: jresult
        jresult => this%f_specialAnimationInterface
        return
  end function

  recursive subroutine DemoCanvas_jm_setPaintableInterface_1(this, j_paintableInterface)
    class(DemoCanvas), target :: this
    class(PaintableInterface), target, optional :: j_paintableInterface
        this%f_paintableInterface => j_paintableInterface
  end subroutine

  recursive function DemoCanvas_jm_getPaintableInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(PaintableInterface), pointer :: jresult
        jresult => this%f_paintableInterface
        return
  end function

  recursive subroutine DemoCanvas_jm_setDefaultPaintableInterface_1(this, j_defaultPaintableInterface)
    class(DemoCanvas), target :: this
    class(Paintable), target, optional :: j_defaultPaintableInterface
        this%f_defaultPaintableInterface => j_defaultPaintableInterface
  end subroutine

  recursive function DemoCanvas_jm_getDefaultPaintableInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_defaultPaintableInterface
        return
  end function

  recursive function DemoCanvas_jm_getHighScoresFactoryInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(HighScoresFactoryInterface), pointer :: jresult
        jresult => this%f_highScoresFactoryInterface
        return
  end function

  recursive subroutine DemoCanvas_jm_setMenuInputProcessor_1(this, j_menuInputProcessor)
    class(DemoCanvas), target :: this
    class(BasicMenuInputProcessor), target, optional :: j_menuInputProcessor
        this%f_menuInputProcessor => j_menuInputProcessor
  end subroutine

  recursive function DemoCanvas_jm_getMenuInputProcessor_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(BasicMenuInputProcessor), pointer :: jresult
        jresult => this%f_menuInputProcessor
        return
  end function

  recursive function DemoCanvas_jm_getMenuForm_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(ScrollSelectionForm), pointer :: jresult
        jresult => this%f_menuForm
        return
  end function

  recursive subroutine DemoCanvas_jm_setMenuForm_1(this, j_menuForm)
    class(DemoCanvas), target :: this
    class(ScrollSelectionForm), target, optional :: j_menuForm
        this%f_menuForm => j_menuForm
  end subroutine

  recursive function DemoCanvas_jm_isInitialized_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function

  recursive function DemoCanvas_jm_getOverlayPaintable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_overlayPaintable
        return
  end function

  recursive subroutine DemoCanvas_jm_setBasicGameDemoPaintable_1(this, j_basicGameDemoPaintable)
    class(DemoCanvas), target :: this
    class(StatePaintable), target, optional :: j_basicGameDemoPaintable
        this%f_basicGameDemoPaintable => j_basicGameDemoPaintable
  end subroutine

  recursive function DemoCanvas_jm_getBasicGameDemoPaintable_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(StatePaintable), pointer :: jresult
        jresult => this%f_basicGameDemoPaintable
        return
  end function

  recursive subroutine DemoCanvas_jm_setTempWait_1(this, j_tempWait)
    class(DemoCanvas), target :: this
    integer(4), value :: j_tempWait
        this%f_tempWait = j_tempWait
  end subroutine

  recursive function DemoCanvas_jm_getTempWait_0(this) result(jresult)
    class(DemoCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_tempWait
        return
  end function

  recursive function DemoCanvas_jm_isSingleThread_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(OpenGLFeatureUtil), pointer :: jtemp78
        jtemp78 => OpenGLFeatureUtil_jm_getInstance_0()
        jresult = (jtemp78%jm_isAnyThreed_0() .or. SWTUtil_jstatic_isSWT())
        return
  end function

  recursive function DemoCanvas_jm_isRunningInAnotherThread_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
        j_features => Features_jm_getInstance_0()
        j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isDefault_1(j_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD)) then
            jresult = .true.
            return
        else
            jresult = this%jm_isRunning_0()
            return
        end if
  end function

  recursive function DemoCanvas_jm_getGameInitializationInterfaceFactoryInterface_0(this) result(jresult)
    class(DemoCanvas), target :: this
    class(BasicBuildGameInitializerFactory), pointer :: jresult
        jresult => this%f_gameInitializationInterfaceFactoryInterface
        return
  end function

  recursive function DemoCanvas_jm_getType_0(this) result(jresult)
    class(DemoCanvas), target :: this
    integer(4) :: jresult
        jresult = DemoCanvas_jstatic_TYPE()
        return
  end function

  recursive function DemoCanvas_jm_getTitle_0(this) result(jresult)
    class(DemoCanvas), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%RunnableCanvas%jm_getTitle_0()
        return
  end function

  recursive function DemoCanvas_jm_isPaused_0(this) result(jresult)
    class(DemoCanvas), target :: this
    logical :: jresult
        jresult = this%RunnableCanvas%jm_isPaused_0()
        return
  end function
end module DemoCanvas_m

