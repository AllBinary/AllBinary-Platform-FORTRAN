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
module StartCanvas_m
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
  use HighScoresPaintable_m
  use NullHighScoresSingletonFactory_m
  use GameState_m
  use GameStateFactory_m
  use Rectangle_m
  use ResizableListenerHandler_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use BasicColorFactory_m
  use MyCommandsFactory_m
  use DisplayChangeEvent_m
  use DisplayChangeEventHandler_m
  use DisplayChangeEventListener_m
  use FormType_m
  use FormTypeFactory_m
  use ScrollSelectionForm_m
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
  use OperatingSystemFactory_m
  use AbeClientInformationInterface_m
  use InApplicationPurchaseFactory_m
  use LockableFeature_m
  use LockableFeatureFactory_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use AllBinaryMediaManager_m
  use EarlySoundsFactory_m
  use CommonSeps_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameCanvasRunnableInterface_m
  use MenuListener_m
  use FormUtil_m
  use NoMenuInputProcessor_m
  use BasicMenuInputProcessor_m
  use NullWaitGameRunnable_m
  use GameRunnable_m
  use GameInputMappingCanvas_m
  implicit none

  type, extends(RunnableCanvas) :: StartCanvas
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    class(Features), pointer :: f_features => null()
    class(OpenGLFeatureFactory), pointer :: f_openGLFeatureFactory => null()
    class(MyCommandsFactory), pointer :: f_myCommandsFactory => null()
    class(GameAdStateFactory), pointer :: f_gameAdStateFactory => null()
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
    class(FormUtil), pointer :: f_formUtil => null()
    class(StatePaintable), pointer :: f_basicGameDemoPaintable => null()
    class(SpecialAnimation), pointer :: f_specialAnimationInterface => null()
    class(Animation), pointer :: f_paintedSpecialAnimationInterface => null()
    class(FullScreenUtil), pointer :: f_fullScreenUtil => null()
    class(HighScoresHelper), pointer :: f_highScoresHelper => null()
    class(HighScoresPaintable), pointer :: f_realHighScoresPaintable => null()
    class(Paintable), pointer :: f_highScoresPaintable => null()
    integer(4) :: f_state = 0
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(HighScoresFactoryInterface), pointer :: f_highScoresFactoryInterface => null()
    class(BasicMenuInputProcessor), pointer :: f_menuInputProcessor => null()
    class(ScrollSelectionForm), pointer :: f_menuForm => null()
    class(BasicBuildGameInitializerFactory), pointer :: f_gameInitializationInterfaceFactoryInterface => null()
    logical :: f_initialized = .false.
    class(Paintable), pointer :: f_defaultPaintableInterface => null()
    class(PaintableInterface), pointer :: f_paintableInterface => null()
    class(InitUpdatePaintable), pointer :: f_overlayPaintable => null()
    integer(4) :: f_tempWait = 0
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
    class(GameRunnable), pointer :: f_gameRunnable => null()
    class(PaintableInterface), pointer :: f_progressPaintable => null()
    logical :: f_isSingleKeyRepeatableProcessing = .false.
    class(GameKey), pointer :: f_NONE => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    character(len=:), allocatable :: f_SET_STATE
    class(BaseGameStatistics), pointer :: f_baseGameStatistics => null()
  contains
    procedure :: jm_onEvent_1 => StartCanvas_jm_onEvent_1
    procedure :: jm_onDisplayChangeEvent_1 => StartCanvas_jm_onDisplayChangeEvent_1
    procedure :: jm_getCustomCommands_0 => StartCanvas_jm_getCustomCommands_0
    procedure :: jm_initCommands_1 => StartCanvas_jm_initCommands_1
    procedure :: jm_initPostPaint_0 => StartCanvas_jm_initPostPaint_0
    procedure :: jm_mediaInit_0 => StartCanvas_jm_mediaInit_0
    procedure :: jm_itemStateChanged_1 => StartCanvas_jm_itemStateChanged_1
    procedure :: jm_initMenu_0 => StartCanvas_jm_initMenu_0
    procedure :: jm_open_0 => StartCanvas_jm_open_0
    procedure :: jm_close_0 => StartCanvas_jm_close_0
    procedure :: jm_getSourceId_0 => StartCanvas_jm_getSourceId_0
    procedure :: jm_keyPressed_1 => StartCanvas_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => StartCanvas_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => StartCanvas_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => StartCanvas_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => StartCanvas_jm_keyReleasedByDevice_2
    procedure :: jm_keyRepeatedByDevice_2 => StartCanvas_jm_keyRepeatedByDevice_2
    procedure :: jm_addGameKeyEvent_2 => StartCanvas_jm_addGameKeyEvent_2
    procedure :: jm_removeGameKeyEvent_2 => StartCanvas_jm_removeGameKeyEvent_2
    procedure :: jm_pause_0 => StartCanvas_jm_pause_0
    procedure :: jm_unPause_0 => StartCanvas_jm_unPause_0
    procedure :: jm_isPausable_0 => StartCanvas_jm_isPausable_0
    procedure :: jm_isGameOver_0 => StartCanvas_jm_isGameOver_0
    procedure :: jm_setLoadStateHashtable_1 => StartCanvas_jm_setLoadStateHashtable_1
    procedure :: jm_getLoadStateHashtable_0 => StartCanvas_jm_getLoadStateHashtable_0
    procedure :: jm_getCurrentStateHashtable_0 => StartCanvas_jm_getCurrentStateHashtable_0
    procedure :: jm_setHighScoreSubmitted_1 => StartCanvas_jm_setHighScoreSubmitted_1
    procedure :: jm_paint_1 => StartCanvas_jm_paint_1
    procedure :: jm_paintThreed_1 => StartCanvas_jm_paintThreed_1
    procedure :: jm_processGameOver_0 => StartCanvas_jm_processGameOver_0
    procedure :: jm_demoStateChange_0 => StartCanvas_jm_demoStateChange_0
    procedure :: jm_updateDemoState_0 => StartCanvas_jm_updateDemoState_0
    procedure :: jm_getNextRandom_0 => StartCanvas_jm_getNextRandom_0
    procedure :: jm_createGameLayerManager_1 => StartCanvas_jm_createGameLayerManager_1
    procedure :: jm_createRunnable_1 => StartCanvas_jm_createRunnable_1
    procedure :: jm_createCanvas_0 => StartCanvas_jm_createCanvas_0
    procedure :: jm_start_0 => StartCanvas_jm_start_0
    procedure :: jm_preDemoProcess_0 => StartCanvas_jm_preDemoProcess_0
    procedure :: jm_process_0 => StartCanvas_jm_process_0
    procedure :: jm_startDemoGame_0 => StartCanvas_jm_startDemoGame_0
    procedure :: jm_processGame_0 => StartCanvas_jm_processGame_0
    procedure :: jm_run_0 => StartCanvas_jm_run_0
    procedure :: jm_setRunning_1 => StartCanvas_jm_setRunning_1
    procedure :: jm_end_0 => StartCanvas_jm_end_0
    procedure :: jm_setGameState_1 => StartCanvas_jm_setGameState_1
    procedure :: jm_getGameState_0 => StartCanvas_jm_getGameState_0
    procedure :: jm_getState_0 => StartCanvas_jm_getState_0
    procedure :: jm_setState_1 => StartCanvas_jm_setState_1
    procedure :: jm_isHighScoreSubmitted_0 => StartCanvas_jm_isHighScoreSubmitted_0
    procedure :: jm_getRealHighScoresPaintable_0 => StartCanvas_jm_getRealHighScoresPaintable_0
    procedure :: jm_setSpecialAnimationInterface_1 => StartCanvas_jm_setSpecialAnimationInterface_1
    procedure :: jm_getSpecialAnimationInterface_0 => StartCanvas_jm_getSpecialAnimationInterface_0
    procedure :: jm_setPaintableInterface_1 => StartCanvas_jm_setPaintableInterface_1
    procedure :: jm_getPaintableInterface_0 => StartCanvas_jm_getPaintableInterface_0
    procedure :: jm_setDefaultPaintableInterface_1 => StartCanvas_jm_setDefaultPaintableInterface_1
    procedure :: jm_getDefaultPaintableInterface_0 => StartCanvas_jm_getDefaultPaintableInterface_0
    procedure :: jm_getHighScoresFactoryInterface_0 => StartCanvas_jm_getHighScoresFactoryInterface_0
    procedure :: jm_setMenuInputProcessor_1 => StartCanvas_jm_setMenuInputProcessor_1
    procedure :: jm_getMenuInputProcessor_0 => StartCanvas_jm_getMenuInputProcessor_0
    procedure :: jm_getMenuForm_0 => StartCanvas_jm_getMenuForm_0
    procedure :: jm_setMenuForm_1 => StartCanvas_jm_setMenuForm_1
    procedure :: jm_isInitialized_0 => StartCanvas_jm_isInitialized_0
    procedure :: jm_getOverlayPaintable_0 => StartCanvas_jm_getOverlayPaintable_0
    procedure :: jm_setBasicGameDemoPaintable_1 => StartCanvas_jm_setBasicGameDemoPaintable_1
    procedure :: jm_getBasicGameDemoPaintable_0 => StartCanvas_jm_getBasicGameDemoPaintable_0
    procedure :: jm_setTempWait_1 => StartCanvas_jm_setTempWait_1
    procedure :: jm_getTempWait_0 => StartCanvas_jm_getTempWait_0
    procedure :: jm_isSingleThread_0 => StartCanvas_jm_isSingleThread_0
    procedure :: jm_isRunningInAnotherThread_0 => StartCanvas_jm_isRunningInAnotherThread_0
    procedure :: jm_getGameInitializationInterfaceFactoryInterface_0 => StartCanvas_jm_getGameInitializationInterfaceFactoryInterface_0
    procedure :: jm_getTitle_0 => StartCanvas_jm_getTitle_0
    procedure :: jm_isPaused_0 => StartCanvas_jm_isPaused_0
    procedure :: jm_getType_0 => StartCanvas_jm_getType_0
  end type

  ! StartCanvas used as a GameCanvasRunnableInterface
  type, extends(GameCanvasRunnableInterface) :: StartCanvas_jas_GameCanvasRunnableInterface
    class(StartCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_initCommands_1 => StartCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1
    procedure :: jm_pause_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_pause_0
    procedure :: jm_unPause_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0
    procedure :: jm_isGameOver_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0
    procedure :: jm_setLoadStateHashtable_1 => StartCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1
    procedure :: jm_getLoadStateHashtable_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0
    procedure :: jm_getCurrentStateHashtable_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0
    procedure :: jm_setHighScoreSubmitted_1 => StartCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1
    procedure :: jm_processGameOver_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0
    procedure :: jm_isHighScoreSubmitted_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0
    procedure :: jm_isInitialized_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0
    procedure :: jm_getTitle_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0
    procedure :: jm_isPaused_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0
    procedure :: jm_getType_0 => StartCanvas_jas_GameCanvasRunnableInterface_jm_getType_0
  end type

  ! StartCanvas used as a MenuListener
  type, extends(MenuListener) :: StartCanvas_jas_MenuListener
    class(StartCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_open_0 => StartCanvas_jas_MenuListener_jm_open_0
    procedure :: jm_close_0 => StartCanvas_jas_MenuListener_jm_close_0
  end type

  ! StartCanvas used as a DisplayChangeEventListener
  type, extends(DisplayChangeEventListener) :: StartCanvas_jas_DisplayChangeEventListener
    class(StartCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_onDisplayChangeEvent_1 => StartCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1
  end type

  integer(4), save :: StartCanvas_jcell_id
  logical, save :: StartCanvas_jset_id = .false.
  character(len=:), allocatable, save :: StartCanvas_jcell_BOT_GAME_STATS
  logical, save :: StartCanvas_jset_BOT_GAME_STATS = .false.

contains

  function StartCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StartCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StartCanvas)
      jresult => object
    end select
  end function

  function StartCanvas_jas_GameCanvasRunnableInterface_jnew(object) result(jresult)
    class(StartCanvas), target :: object
    class(StartCanvas_jas_GameCanvasRunnableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StartCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1(this, j_cmdListener)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    call this%jtarget%jm_initCommands_1(j_cmdListener)
  end subroutine

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_pause_0(this)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_pause_0()
  end subroutine

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0(this)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_unPause_0()
  end subroutine

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isGameOver_0()
  end function

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    call this%jtarget%jm_setLoadStateHashtable_1(j_hashtable)
  end subroutine

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getLoadStateHashtable_0()
  end function

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getCurrentStateHashtable_0()
  end function

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical, value :: j_highScoreSubmitted
    call this%jtarget%jm_setHighScoreSubmitted_1(j_highScoreSubmitted)
  end subroutine

  recursive subroutine StartCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0(this)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_processGameOver_0()
  end subroutine

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isHighScoreSubmitted_0()
  end function

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isInitialized_0()
  end function

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getTitle_0()
  end function

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isPaused_0()
  end function

  recursive function StartCanvas_jas_GameCanvasRunnableInterface_jm_getType_0(this) result(jresult)
    class(StartCanvas_jas_GameCanvasRunnableInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getType_0()
  end function

  function StartCanvas_jas_MenuListener_jnew(object) result(jresult)
    class(StartCanvas), target :: object
    class(StartCanvas_jas_MenuListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StartCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine StartCanvas_jas_MenuListener_jm_open_0(this)
    class(StartCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_open_0()
  end subroutine

  recursive subroutine StartCanvas_jas_MenuListener_jm_close_0(this)
    class(StartCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_close_0()
  end subroutine

  function StartCanvas_jas_DisplayChangeEventListener_jnew(object) result(jresult)
    class(StartCanvas), target :: object
    class(StartCanvas_jas_DisplayChangeEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StartCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine StartCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(StartCanvas_jas_DisplayChangeEventListener), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    call this%jtarget%jm_onDisplayChangeEvent_1(j_displayChangeEvent)
  end subroutine

  function StartCanvas_jstatic_id() result(jresult)
    integer(4) :: jresult
    if (.not. StartCanvas_jset_id) then
      StartCanvas_jset_id = .true.
      StartCanvas_jcell_id = 0
    end if
    jresult = StartCanvas_jcell_id
  end function

  subroutine StartCanvas_jsetstatic_id(jvalue)
    integer(4), value :: jvalue
    StartCanvas_jset_id = .true.
    StartCanvas_jcell_id = jvalue
  end subroutine

  function StartCanvas_jstatic_BOT_GAME_STATS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. StartCanvas_jset_BOT_GAME_STATS) then
      StartCanvas_jset_BOT_GAME_STATS = .true.
      StartCanvas_jcell_BOT_GAME_STATS = 'Bot Game Statistics: '
    end if
    jresult = StartCanvas_jcell_BOT_GAME_STATS
  end function

  subroutine StartCanvas_jsetstatic_BOT_GAME_STATS(jvalue)
    character(len=*), intent(in) :: jvalue
    StartCanvas_jset_BOT_GAME_STATS = .true.
    StartCanvas_jcell_BOT_GAME_STATS = jvalue
  end subroutine

  recursive function StartCanvas_jnew_7(j_abeClientInformation, j_commandListener, j_highScoresFactoryInterface, j_paintable, j_overlayPaintable, j_gameInitializationInterfaceFactoryInterface, j_isContinue) result(this)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(Paintable), target, optional :: j_paintable
    class(InitUpdatePaintable), target, optional :: j_overlayPaintable
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    logical, value :: j_isContinue
    class(StartCanvas), pointer :: this
    class(CurrentDisplayableFactory), pointer :: jtemp4
    class(NullWaitGameRunnable), pointer :: jtemp5
    class(GameInitializationUtil), pointer :: jtemp6
    class(ResizableListenerHandler), pointer :: jtemp7
    class(GameCommandsFactory), pointer :: jtemp8
    class(ChangedGameFeatureListener), pointer :: jtemp9
    class(GameFeatureFactory), pointer :: jtemp10
    class(DisplayChangeEventHandler), pointer :: jtemp11
    class(NullWaitGameRunnable), pointer :: jtemp1
    class(PersistentInputMapping), pointer :: jtemp2
    class(PlatformInputMappingFactory), pointer :: jtemp3
    class(InputFeatureFactory), pointer :: jtemp23
    class(GameKeyFactory), pointer :: jtemp24
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'StartCanvas'
    this%f_SET_STATE = ''
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    this%f_features => Features_jm_getInstance_0()
    this%f_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
    this%f_myCommandsFactory => MyCommandsFactory_jm_getInstance_0()
    this%f_gameAdStateFactory => GameAdStateFactory_jm_getInstance_0()
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
    this%f_formUtil => FormUtil_jm_getInstance_0()
    this%f_basicGameDemoPaintable => StatePaintableFactory_jm_getInstance_0()
    this%f_specialAnimationInterface => SpecialAnimation_jm_getInstance_0()
    this%f_paintedSpecialAnimationInterface => SpecialAnimation_jm_getInstance_0()
    this%f_fullScreenUtil => FullScreenUtil_jm_getInstance_0()
    this%f_highScoresHelper => HighScoresHelper_jnew_0()
    this%f_realHighScoresPaintable => HighScoresPaintable_jnew_0()
    this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
    this%f_state = 0
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(6000)
    
    this%f_menuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_menuForm => ScrollSelectionForm_jm_getNullScrollSelectionForm_0()
    
    
    this%f_defaultPaintableInterface => NullPaintable_jm_getInstance_0()
    this%f_paintableInterface => NullPaintable_jm_getInstance_0()
    
    jtemp1 => NullWaitGameRunnable_jm_getInstance_0()
    this%f_tempWait = jtemp1%f_WAIT
    jtemp3 => PlatformInputMappingFactory_jm_getInstance_0()
    jtemp2 => jtemp3%jm_getPersistentInputMappingInstance_0()
    this%f_inputToGameKeyMapping => jtemp2%jm_getInputMapping_0()
    this%f_gameRunnable => NullWaitGameRunnable_jm_getInstance_0()
    this%f_progressPaintable => ProgressCanvasFactory_jm_getLazyInstance_0()
    jtemp23 => InputFeatureFactory_jm_getInstance_0()
    this%f_isSingleKeyRepeatableProcessing = this%f_features%jm_isFeature_1(jtemp23%f_SINGLE_KEY_REPEAT_PRESS)
    jtemp24 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp24%f_NONE
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_SET_STATE = 'setState'
    this%f_baseGameStatistics => GameStatisticsFactory_jm_getInstance_0()
        jtemp4 => CurrentDisplayableFactory_jm_getInstance_0()
        continue ! super()
        jtemp5 => NullWaitGameRunnable_jm_getInstance_0()
        call this%jm_setWait_1(jtemp5%f_WAIT)
        this%f_gameInitializationInterfaceFactoryInterface => j_gameInitializationInterfaceFactoryInterface
        jtemp6 => GameInitializationUtil_jm_getInstance_0()
        call jtemp6%jm_initDemo_3(j_abeClientInformation, this, j_gameInitializationInterfaceFactoryInterface)
        jtemp7 => ResizableListenerHandler_jm_getInstance_0()
        call jtemp7%jm_fireEvent_1(.false.)
        this%f_overlayPaintable => j_overlayPaintable
        this%f_highScoresFactoryInterface => j_highScoresFactoryInterface
        call this%jm_setDefaultPaintableInterface_1(j_paintable)
        call this%jm_setPaintableInterface_1(this%jm_getDefaultPaintableInterface_0())
        if (j_isContinue) then
            jtemp8 => GameCommandsFactory_jm_getInstance_0()
            call this%jm_addCommand_1(jtemp8%f_CONTINUE_COMMAND)
        end if
        jtemp10 => GameFeatureFactory_jm_getInstance_0()
        jtemp9 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp9%jm_isChangedFeature_1(jtemp10%f_SOUND)) then
            call this%jm_mediaInit_0()
        end if
        jtemp11 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp11%jm_addListenerInterface_1(this)
  end function

  recursive subroutine StartCanvas_jm_onEvent_1(this, j_eventObject)
    class(StartCanvas), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp12 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp12%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine StartCanvas_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(StartCanvas), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(FormType), pointer :: j_formType
    class(Rectangle), pointer :: j_rectangle
    class(FormTypeFactory), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_scrollSelectionForm => this%jm_getMenuForm_0()
            if (associated(j_scrollSelectionForm)) then
                jtemp13 => FormTypeFactory_jm_getInstance_0()
                j_formType => jtemp13%jm_getFormType_0()
                j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
                call j_scrollSelectionForm%jm_init_2(j_rectangle, j_formType)
            end if
            call this%f_overlayPaintable%jm_init_0()
  end subroutine

  recursive function StartCanvas_jm_getCustomCommands_0(this) result(jresult)
    class(StartCanvas), target :: this
    type(JRef), allocatable :: jresult(:)
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(BasicArrayList), pointer :: j_commandList
    class(InApplicationPurchaseFactory), pointer :: j_inApplicationPurchaseFactory
    class(BasicArrayList), pointer :: j_list
    logical :: j_isOverScan
    type(JRef), allocatable :: j_commandArray(:)
    class(LockableFeatureFactory), pointer :: jtemp14
    class(HighScoreCommands), pointer :: jtemp15
    class(GenericOperatingSystem), pointer :: jtemp16
    class(OperatingSystemFactory), pointer :: jtemp17
    class(HighScoreCommands), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        if (J2MEUtil_jm_isHTML_0()) then
            jtemp18 => HighScoreCommands_jm_getInstance_0()
            j_commandArray = [JRef :: JRef(j_gameCommandsFactory%f_START_COMMAND), JRef(jtemp18%f_DISPLAY), JRef(GameInputMappingCanvas_jstatic_DISPLAY()), JRef(j_gameCommandsFactory%f_DISPLAY_ABOUT)]
            jresult = j_commandArray
            return
        else
            j_commandList => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_START_COMMAND)
            j_inApplicationPurchaseFactory => InApplicationPurchaseFactory_jm_getInstance_0()
            if (j_inApplicationPurchaseFactory%jm_isEnabled_0()) then
                jtemp14 => LockableFeatureFactory_jm_getInstance_0()
                j_list => jtemp14%jm_getList_0()
                if (((j_list%jm_size_0() > 0) .and. (.not. j_inApplicationPurchaseFactory%jm_isPurchased_1(LockableFeature_jcast(j_list%jm_get_1(0)))))) then
                    jdiscardBoolean = j_commandList%jm_add_1(j_gameCommandsFactory%f_BUY_COMMAND)
                end if
            end if
            jtemp15 => HighScoreCommands_jm_getInstance_0()
            jdiscardBoolean = j_commandList%jm_add_1(jtemp15%f_DISPLAY)
            continue ! try
                jtemp17 => OperatingSystemFactory_jm_getInstance_0()
                jtemp16 => jtemp17%jm_getOperatingSystemInstance_0()
                j_isOverScan = jtemp16%jm_isOverScan_0()
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

  recursive subroutine StartCanvas_jm_initCommands_1(this, j_cmdListener)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_initPostPaint_0(this)
    class(StartCanvas), target :: this
    continue
  end subroutine

  recursive subroutine StartCanvas_jm_mediaInit_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call AllBinaryMediaManager_jm_init_1(EarlySoundsFactory_jm_getInstance_0())
  end subroutine

  recursive subroutine StartCanvas_jm_itemStateChanged_1(this, j_item)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_initMenu_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_close_0()
        call this%jm_open_0()
  end subroutine

  recursive subroutine StartCanvas_jm_open_0(this)
    class(StartCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp19
    class(GameKeyEventHandler), pointer :: jtemp20
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp19 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp19%jm_addListenerInterface_1(this%jm_getMenuInputProcessor_0())
        jtemp20 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp20%jm_addListener_1(this%jm_getMenuInputProcessor_0())
  end subroutine

  recursive subroutine StartCanvas_jm_close_0(this)
    class(StartCanvas), target :: this
    class(BasicMotionGesturesHandler), pointer :: jtemp21
    class(GameKeyEventHandler), pointer :: jtemp22
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp21 => BasicMotionGesturesHandler_jm_getInstance_0()
        call jtemp21%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
        jtemp22 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp22%jm_removeListener_1(this%jm_getMenuInputProcessor_0())
  end subroutine

  recursive function StartCanvas_jm_getSourceId_0(this) result(jresult)
    class(StartCanvas), target :: this
    integer(4) :: jresult
        jresult = StartCanvas_jstatic_id()
        return
  end function

  recursive subroutine StartCanvas_jm_keyPressed_1(this, j_keyCode)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_keyReleased_1(this, j_keyCode)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_keyRepeated_1(this, j_keyCode)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_keyRepeatedByDevice_2(this, j_keyCode, j_deviceId)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_addGameKeyEvent_2(this, j_keyCode, j_repeated)
    class(StartCanvas), target :: this
    integer(4), value :: j_keyCode
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    class(DownGameKeyEventHandler), pointer :: jtemp28
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
                jtemp28 => DownGameKeyEventHandler_jm_getInstance_0()
                call jtemp28%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp27 => StringMaker_jnew_0()
                jtemp26 => jtemp27%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp25 => jtemp26%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp25%jm_toString_0(), this, this%f_gameInputStrings%f_ADD_KEY_EVENT)
            end if
  end subroutine

  recursive subroutine StartCanvas_jm_removeGameKeyEvent_2(this, j_keyCode, j_repeated)
    class(StartCanvas), target :: this
    integer(4), value :: j_keyCode
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(StringMaker), pointer :: jtemp31
    class(UpGameKeyEventHandler), pointer :: jtemp32
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
                jtemp32 => UpGameKeyEventHandler_jm_getInstance_0()
                call jtemp32%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp31 => StringMaker_jnew_0()
                jtemp30 => jtemp31%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp29 => jtemp30%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp29%jm_toString_0(), this, this%f_gameInputStrings%f_REMOVE_KEY_EVENT)
            end if
  end subroutine

  recursive subroutine StartCanvas_jm_pause_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_close_0()
        call this%jm_setPaused_1(.true.)
  end subroutine

  recursive subroutine StartCanvas_jm_unPause_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_open_0()
        call this%jm_setPaused_1(.false.)
  end subroutine

  recursive function StartCanvas_jm_isPausable_0(this) result(jresult)
    class(StartCanvas), target :: this
    logical :: jresult
    class(CurrentDisplayableFactory), pointer :: jtemp33
        jtemp33 => CurrentDisplayableFactory_jm_getInstance_0()
        if ((jtemp33%jm_getUsedRunnable_0() == NullWaitGameRunnable_jm_getInstance_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function StartCanvas_jm_isGameOver_0(this) result(jresult)
    class(StartCanvas), target :: this
    logical :: jresult
    class(StringMaker), pointer :: jtemp34
    class(StringMaker), pointer :: jtemp35
    class(StringMaker), pointer :: jtemp36
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp36 => StringMaker_jnew_0()
        jtemp35 => jtemp36%jm_append_1(this%f_commonStrings%f_NOT_IMPLEMENTED)
        jtemp34 => jtemp35%jm_append_1(' since not a game')
        call this%f_logUtil%jm_putF_3(jtemp34%jm_toString_0(), this, 'isGameOver')
        jresult = .false.
        return
  end function

  recursive subroutine StartCanvas_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(StartCanvas), target :: this
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

  recursive function StartCanvas_jm_getLoadStateHashtable_0(this) result(jresult)
    class(StartCanvas), target :: this
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

  recursive function StartCanvas_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_setHighScoreSubmitted_1(this, j_isNotUsed)
    class(StartCanvas), target :: this
    logical, value :: j_isNotUsed
    continue
  end subroutine

  recursive subroutine StartCanvas_jm_paint_1(this, j_graphics)
    class(StartCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(StatePaintable), pointer :: jtemp37
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
        jtemp37 => this%jm_getBasicGameDemoPaintable_0()
        call jtemp37%jm_paint_1(j_graphics)
        call this%f_overlayPaintable%jm_paint_1(j_graphics)
        call this%f_progressPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine StartCanvas_jm_paintThreed_1(this, j_graphics)
    class(StartCanvas), target :: this
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

  recursive subroutine StartCanvas_jm_processGameOver_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Not Implemented since not a game', this, 'setGameOver')
  end subroutine

  recursive subroutine StartCanvas_jm_demoStateChange_0(this)
    class(StartCanvas), target :: this
    integer(4) :: j_newState
    class(HighScores), pointer :: j_highScores
    class(HighScoresPaintable), pointer :: jtemp38
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
                    jtemp38 => this%jm_getRealHighScoresPaintable_0()
                    call jtemp38%jm_setHighScores_1(j_highScores)
                end if
            end if
        end if
        call this%jm_setState_1(j_newState)
        call this%jm_updateDemoState_0()
  end subroutine

  recursive subroutine StartCanvas_jm_updateDemoState_0(this)
    class(StartCanvas), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(Integer), pointer :: jtemp39
    class(SmallIntegerSingletonFactory), pointer :: jtemp40
    class(StatePaintable), pointer :: jtemp41
    class(SpecialAnimation), pointer :: jtemp42
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp40 => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp39 => jtemp40%jm_createInstance_1(this%f_state)
        call PreLogUtil_jm_put_3(jtemp39%jm_toString_0(), this, this%f_SET_STATE)
        jtemp41 => this%jm_getBasicGameDemoPaintable_0()
        call jtemp41%jm_setState_1(this%f_state)
        if ((this%f_state == 0)) then
            this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
            this%f_paintedSpecialAnimationInterface => this%jm_getSpecialAnimationInterface_0()
            jtemp42 => this%jm_getSpecialAnimationInterface_0()
            call jtemp42%jm_reset_0()
        else if ((this%f_state == 1)) then
            this%f_paintedSpecialAnimationInterface => SpecialAnimation_jm_getInstance_0()
        else if ((this%f_state == 2)) then
            this%f_highScoresPaintable => this%jm_getRealHighScoresPaintable_0()
        end if
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        call j_gameAdState%jm_processPageAdState_0()
  end subroutine

  recursive function StartCanvas_jm_getNextRandom_0(this) result(jresult)
    class(StartCanvas), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function StartCanvas_jm_createGameLayerManager_1(this, j_randomValue) result(jresult)
    class(StartCanvas), target :: this
    integer(4), value :: j_randomValue
    class(AllBinaryGameLayerManager), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function StartCanvas_jm_createRunnable_1(this, j_randomLevel) result(jresult)
    class(StartCanvas), target :: this
    integer(4), value :: j_randomLevel
    class(GameCanvasRunnableInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine StartCanvas_jm_createCanvas_0(this)
    class(StartCanvas), target :: this
    integer(4) :: j_randomLevel
        this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
        j_randomLevel = this%jm_getNextRandom_0()
  end subroutine

  recursive subroutine StartCanvas_jm_start_0(this)
    class(StartCanvas), target :: this
    continue
  end subroutine

  recursive subroutine StartCanvas_jm_preDemoProcess_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_overlayPaintable%jm_update_0()
  end subroutine

  recursive subroutine StartCanvas_jm_process_0(this)
    class(StartCanvas), target :: this
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
    class(DemoGameMidlet), pointer :: j_demoGameMidlet
    class(BasicMenuInputProcessor), pointer :: jtemp43
    class(SpecialAnimation), pointer :: jtemp44
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp43 => this%jm_getMenuInputProcessor_0()
        jdiscardInt = jtemp43%jm_processInputList_0()
        call this%jm_preDemoProcess_0()
        if ((this%f_state == 0)) then
            jtemp44 => this%jm_getSpecialAnimationInterface_0()
            j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(jtemp44%jm_getAnimationBehavior_0())
            if ((j_indexedAnimationBehavior%f_loopIndex < 1)) then
                call this%f_timeDelayHelper%jm_setStartTimeTNT_0()
            end if
            j_demoGameMidlet => DemoGameMidlet_jcast(this%jm_getCustomCommandListener_0())
        end if
  end subroutine

  recursive subroutine StartCanvas_jm_startDemoGame_0(this)
    class(StartCanvas), target :: this
    continue
  end subroutine

  recursive subroutine StartCanvas_jm_processGame_0(this)
    class(StartCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameRunnable%jm_run_0()
        call this%f_specialAnimationInterface%jm_nextFrame_0()
        call this%jm_process_0()
  end subroutine

  recursive subroutine StartCanvas_jm_run_0(this)
    class(StartCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(MainFeatureFactory), pointer :: jtemp45
    class(OpenGLThreadUtil), pointer :: jtemp46
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
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Demo Thread')
            call this%jm_setCurrentThread_0()
            call this%jm_setRunning_1(.true.)
            jtemp45 => MainFeatureFactory_jm_getInstance_0()
            if (this%f_features%jm_isFeature_1(jtemp45%f_LOAD_ONDEMAND)) then
                call j_progressCanvas%jm_end_0()
            else
                call j_progressCanvas%jm_addNormalPortion_2(50, 'Demo Thread Running')
            end if
            call this%f_fullScreenUtil%jm_initOnRun_2(this, this%jm_getCustomCommandListener_0())
            call this%jm_initMenu_0()
            call this%jm_initPostPaint_0()
            call this%jm_updateDemoState_0()
            if (this%f_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD)) then
                jtemp46 => OpenGLThreadUtil_jm_getInstance_0()
                call jtemp46%jm_onResume_0()
            end if
            if ((this%f_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD) .or. J2MEUtil_jm_isHTML_0())) then
                continue
            else
                do while (this%jm_isRunning_0())
                    call this%f_loopTimeHelper%jm_setStartTimeTNT_0()
                    call this%jm_processGame_0()
                    call this%jm_processLoopSleep_0()
                end do
                call this%jm_end_0()
            end if
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive subroutine StartCanvas_jm_setRunning_1(this, j_running)
    class(StartCanvas), target :: this
    logical, value :: j_running
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
            if ((((this%f_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL) .or. J2MEUtil_jm_isHTML_0())) .and. (.not. j_running))) then
                j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
                call j_currentDisplayableFactory%jm_clearRunnable_0()
                call this%jm_end_0()
            end if
  end subroutine

  recursive subroutine StartCanvas_jm_end_0(this)
    class(StartCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(StringMaker), pointer :: jtemp47
    class(StringMaker), pointer :: jtemp48
    class(StringMaker), pointer :: jtemp49
    class(StringMaker), pointer :: jtemp50
    class(CommonSeps), pointer :: jtemp51
    class(MainFeatureFactory), pointer :: jtemp52
    class(DisplayChangeEventHandler), pointer :: jtemp53
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        jtemp50 => StringMaker_jnew_0()
        jtemp51 => CommonSeps_jm_getInstance_0()
        jtemp49 => jtemp50%jm_append_1(StartCanvas_jstatic_BOT_GAME_STATS())
        jtemp48 => jtemp49%jm_append_1(this%f_baseGameStatistics%jm_toString_0())
        jtemp47 => jtemp48%jm_append_1(jtemp51%f_NEW_LINE)
        call this%f_baseGameStatistics%jm_add_1(jtemp47%jm_toString_0())
        call this%f_baseGameStatistics%jm_init_0()
        jtemp52 => MainFeatureFactory_jm_getInstance_0()
        if (this%f_features%jm_isFeature_1(jtemp52%f_LOAD_ONDEMAND)) then
            call j_progressCanvas%jm_start_0()
        end if
        call this%f_logUtil%jm_putF_3('Demo End', this, this%f_commonStrings%f_RUN)
        call this%jm_close_0()
        jtemp53 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp53%jm_removeListener_1(this)
  end subroutine

  recursive subroutine StartCanvas_jm_setGameState_1(this, j_gameState)
    class(StartCanvas), target :: this
    class(GameState), target, optional :: j_gameState
    continue
  end subroutine

  recursive function StartCanvas_jm_getGameState_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(GameState), pointer :: jresult
        jresult => this%f_gameStateFactory%f_PLAYING_GAME_STATE
        return
  end function

  recursive function StartCanvas_jm_getState_0(this) result(jresult)
    class(StartCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_state
        return
  end function

  recursive subroutine StartCanvas_jm_setState_1(this, j_state)
    class(StartCanvas), target :: this
    integer(4), value :: j_state
        this%f_state = j_state
  end subroutine

  recursive function StartCanvas_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(StartCanvas), target :: this
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

  recursive function StartCanvas_jm_getRealHighScoresPaintable_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(HighScoresPaintable), pointer :: jresult
        jresult => this%f_realHighScoresPaintable
        return
  end function

  recursive subroutine StartCanvas_jm_setSpecialAnimationInterface_1(this, j_specialAnimationInterface)
    class(StartCanvas), target :: this
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

  recursive function StartCanvas_jm_getSpecialAnimationInterface_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(SpecialAnimation), pointer :: jresult
        jresult => this%f_specialAnimationInterface
        return
  end function

  recursive subroutine StartCanvas_jm_setPaintableInterface_1(this, j_paintableInterface)
    class(StartCanvas), target :: this
    class(PaintableInterface), target, optional :: j_paintableInterface
        this%f_paintableInterface => j_paintableInterface
  end subroutine

  recursive function StartCanvas_jm_getPaintableInterface_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(PaintableInterface), pointer :: jresult
        jresult => this%f_paintableInterface
        return
  end function

  recursive subroutine StartCanvas_jm_setDefaultPaintableInterface_1(this, j_defaultPaintableInterface)
    class(StartCanvas), target :: this
    class(Paintable), target, optional :: j_defaultPaintableInterface
        this%f_defaultPaintableInterface => j_defaultPaintableInterface
  end subroutine

  recursive function StartCanvas_jm_getDefaultPaintableInterface_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_defaultPaintableInterface
        return
  end function

  recursive function StartCanvas_jm_getHighScoresFactoryInterface_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(HighScoresFactoryInterface), pointer :: jresult
        jresult => this%f_highScoresFactoryInterface
        return
  end function

  recursive subroutine StartCanvas_jm_setMenuInputProcessor_1(this, j_menuInputProcessor)
    class(StartCanvas), target :: this
    class(BasicMenuInputProcessor), target, optional :: j_menuInputProcessor
        this%f_menuInputProcessor => j_menuInputProcessor
  end subroutine

  recursive function StartCanvas_jm_getMenuInputProcessor_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(BasicMenuInputProcessor), pointer :: jresult
        jresult => this%f_menuInputProcessor
        return
  end function

  recursive function StartCanvas_jm_getMenuForm_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(ScrollSelectionForm), pointer :: jresult
        jresult => this%f_menuForm
        return
  end function

  recursive subroutine StartCanvas_jm_setMenuForm_1(this, j_menuForm)
    class(StartCanvas), target :: this
    class(ScrollSelectionForm), target, optional :: j_menuForm
        this%f_menuForm => j_menuForm
  end subroutine

  recursive function StartCanvas_jm_isInitialized_0(this) result(jresult)
    class(StartCanvas), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function

  recursive function StartCanvas_jm_getOverlayPaintable_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_overlayPaintable
        return
  end function

  recursive subroutine StartCanvas_jm_setBasicGameDemoPaintable_1(this, j_basicGameDemoPaintable)
    class(StartCanvas), target :: this
    class(StatePaintable), target, optional :: j_basicGameDemoPaintable
        this%f_basicGameDemoPaintable => j_basicGameDemoPaintable
  end subroutine

  recursive function StartCanvas_jm_getBasicGameDemoPaintable_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(StatePaintable), pointer :: jresult
        jresult => this%f_basicGameDemoPaintable
        return
  end function

  recursive subroutine StartCanvas_jm_setTempWait_1(this, j_tempWait)
    class(StartCanvas), target :: this
    integer(4), value :: j_tempWait
        this%f_tempWait = j_tempWait
  end subroutine

  recursive function StartCanvas_jm_getTempWait_0(this) result(jresult)
    class(StartCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_tempWait
        return
  end function

  recursive function StartCanvas_jm_isSingleThread_0(this) result(jresult)
    class(StartCanvas), target :: this
    logical :: jresult
    class(OpenGLFeatureUtil), pointer :: jtemp54
        jtemp54 => OpenGLFeatureUtil_jm_getInstance_0()
        jresult = (jtemp54%jm_isAnyThreed_0() .or. SWTUtil_jstatic_isSWT())
        return
  end function

  recursive function StartCanvas_jm_isRunningInAnotherThread_0(this) result(jresult)
    class(StartCanvas), target :: this
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

  recursive function StartCanvas_jm_getGameInitializationInterfaceFactoryInterface_0(this) result(jresult)
    class(StartCanvas), target :: this
    class(BasicBuildGameInitializerFactory), pointer :: jresult
        jresult => this%f_gameInitializationInterfaceFactoryInterface
        return
  end function

  recursive function StartCanvas_jm_getTitle_0(this) result(jresult)
    class(StartCanvas), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%RunnableCanvas%jm_getTitle_0()
        return
  end function

  recursive function StartCanvas_jm_isPaused_0(this) result(jresult)
    class(StartCanvas), target :: this
    logical :: jresult
        jresult = this%RunnableCanvas%jm_isPaused_0()
        return
  end function

  recursive function StartCanvas_jm_getType_0(this) result(jresult)
    class(StartCanvas), target :: this
    integer(4) :: jresult
        jresult = this%RunnableCanvas%jm_getType_0()
        return
  end function
end module StartCanvas_m

