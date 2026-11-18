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
module AllBinaryGameCanvas_m
  use JR_m
  use NullCommandListener_m
  use AndroidUtil_m
  use J2MEUtil_m
  use GameAdStateFactory_m
  use BaseGameStatistics_m
  use GameStatisticsFactory_m
  use Processor_m
  use RunnableCanvas_m
  use DebugFactory_m
  use NoDebug_m
  use GameAdState_m
  use GameInfo_m
  use GameStrings_m
  use GameTypeFactory_m
  use Intermission_m
  use IntermissionCompositeInterface_m
  use IntermissionEnableListenerInterface_m
  use IntermissionInterface_m
  use PlayerTypesFactory_m
  use GameCommandsFactory_m
  use InGameFeatures_m
  use InGameOptionsForm_m
  use ChangedGameFeatureListener_m
  use GameInitializedEvent_m
  use GameInitializedEventHandler_m
  use Features_m
  use GameFeatureFactory_m
  use GameFeatureUtil_m
  use InputFeatureFactory_m
  use MainFeatureFactory_m
  use SensorFeatureFactory_m
  use TouchFeatureFactory_m
  use GameLevelDisplayChangeEventListenersFactory_m
  use BasicBuildGameInitializerFactory_m
  use GameInitializationUtil_m
  use GameInputStrings_m
  use InputProcessor_m
  use NoPlayerGameInput_m
  use PlayerGameInput_m
  use GameKeyEventHandler_m
  use AllBinaryGameLayerManager_m
  use SWTUtil_m
  use ColorFillBasePaintable_m
  use ColorFillPaintableFactory_m
  use ResourceLoadingLevel_m
  use ResourceLoadingLevelFactory_m
  use HighScore_m
  use HighScoresHelperBaseInterface_m
  use HighScoresFactoryInterface_m
  use HighScoresPaintable_m
  use NullHighScoresSingletonFactory_m
  use HighScoreTextBox_m
  use GameState_m
  use GameStateFactory_m
  use GraphicsStrings_m
  use Rectangle_m
  use ScreenCapture_m
  use ScreenCaptureFactory_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use CanvasStrings_m
  use DisplayInfoSingleton_m
  use GameTickDisplayInfoSingleton_m
  use MyCommandsFactory_m
  use DisplayChangeEvent_m
  use DisplayChangeEventHandler_m
  use DisplayChangeEventListener_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use CommandCurrentSelectionFormFactory_m
  use FormPaintable_m
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
  use NullInitUpdatePaintable_m
  use NullPaintable_m
  use Paintable_m
  use PaintableInterface_m
  use OpenGLImageSpecificFactory_m
  use SensorGameUpdateProcessor_m
  use SingleSensorGameUpdateProcessor_m
  use BaseTouchInput_m
  use NoButtonsTouchInputFactory_m
  use TouchButtonFactory_m
  use TouchButtonsPaintableFactory_m
  use TouchScreenFactory_m
  use BasicMotionGesturesHandler_m
  use ForcedLogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use OperatingSystemFactory_m
  use AbeClientInformationInterface_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use AllBinaryMediaManager_m
  use PlayerQueue_m
  use PrimaryPlayerQueueFactory_m
  use SecondaryPlayerQueueFactory_m
  use SelectSound_m
  use CommonSeps_m
  use SecondaryThreadPool_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use Integer_m
  use Thread_m
  use AllBinaryGameCanvasInterface_m
  use GameCanvasRunnableInterface_m
  use MenuListener_m
  use PopupMenuInterface_m
  use GameCanvasRunnable_m
  use GameCanvasPauseRunnable_m
  use FormUtil_m
  use MyFormUtil_m
  use EndGameInfo_m
  use NoMenuInputProcessor_m
  use BasicMenuInputProcessor_m
  use DemoGameBehavior_m
  use BaseMenuBehavior_m
  use BaseGameBehavior_m
  use BasicPopupMenuPaintable_m
  use PopupMenuInputProcessor_m
  use InGameMenuBehavior_m
  use GameLimitedCommandTextItemArrayFactory_m
  use PopupCommandFormInputProcessor_m
  use NullWaitGameRunnable_m
  use GameProcessor_m
  use CheatGameInputProcessor_m
  use EndGameProcessor_m
  use StartIntermissionProcessor_m
  use EndGamePaintable_m
  use NullDemoPaintable_m
  use DemoPaintableInterface_m
  use GameCanvasInputProcessor_m
  use FormInputProcessor_m
  use SaveHighScoreRunnable_m
  implicit none

  type, extends(RunnableCanvas) :: AllBinaryGameCanvas
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(TouchFeatureFactory), pointer :: f_touchFeatureFactory => null()
    class(OpenGLFeatureFactory), pointer :: f_openGLFeatureFactory => null()
    class(TouchButtonFactory), pointer :: f_touchButtonFactory => null()
    class(GameAdStateFactory), pointer :: f_gameAdStateFactory => null()
    class(GameStrings), pointer :: f_gameStrings => null()
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
    class(GameTickDisplayInfoSingleton), pointer :: f_gameTickDisplayInfoSingleton => null()
    class(GameCanvasRunnable), pointer :: f_gameRunnable => null()
    class(GameCanvasPauseRunnable), pointer :: f_gamePauseRunnable => null()
    class(FormUtil), pointer :: f_formUtil => null()
    class(MyFormUtil), pointer :: f_myFormUtil => null()
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(Paintable), pointer :: f_gameSpecificPaintable => null()
    class(SensorGameUpdateProcessor), pointer :: f_sensorGameUpdateProcessor => null()
    class(EndGameInfo), pointer :: f_endGameInfo => null()
    class(IntermissionInterface), pointer :: f_startIntermissionInterface => null()
    class(IntermissionInterface), pointer :: f_endLevelIntermissionInterface => null()
    class(AllBinaryGameLayerManager), pointer :: f_gameLayerManager => null()
    class(GameState), pointer :: f_gameState => null()
    logical :: f_gameOver = .false.
    logical :: f_initialized = .false.
    class(TimeDelayHelper), pointer :: f_gameStateTimeHelper => null()
    class(HighScoresHelperBaseInterface), pointer :: f_highScoresHelper => null()
    logical :: f_highScoreSubmitted = .false.
    class(HighScoresPaintable), pointer :: f_realHighScoresPaintable => null()
    class(Paintable), pointer :: f_highScoresPaintable => null()
    class(BasicArrayList), pointer :: f_localPlayerGameInputList => null()
    logical :: f_isCheating = .false.
    class(ABHashtable), pointer :: f_hashtable => null()
    logical :: f_isSingleKeyRepeatableProcessing = .false.
    class(BasicBuildGameInitializerFactory), pointer :: f_gameInitializationInterfaceFactoryInterface => null()
    class(Paintable), pointer :: f_touchButtonsPaintable => null()
    class(Paintable), pointer :: f_touchPaintable => null()
    class(PlayerGameInput), pointer :: f_cheatProcessor => null()
    class(Processor), pointer :: f_gameInputProcessor => null()
    class(Processor), pointer :: f_endGameProcessor => null()
    class(Processor), pointer :: f_realEndGameProcessor => null()
    class(Processor), pointer :: f_startIntermissionProcessor => null()
    class(Processor), pointer :: f_realStartIntermissionProcessor => null()
    class(Paintable), pointer :: f_endGamePaintable => null()
    class(Paintable), pointer :: f_endGameStatePaintable => null()
    class(Paintable), pointer :: f_nonBotPaintable => null()
    class(Paintable), pointer :: f_intermissionPaintable => null()
    class(InitUpdatePaintable), pointer :: f_startIntermissionPaintable => null()
    class(Processor), pointer :: f_mainStateProcessor => null()
    class(Processor), pointer :: f_processGameProcessor => null()
    class(HighScoresFactoryInterface), pointer :: f_highScoresFactoryInterface => null()
    integer(4) :: f_startLevel = 0
    class(BasicMenuInputProcessor), pointer :: f_mainMenuInputProcessor => null()
    class(BasicMenuInputProcessor), pointer :: f_popupMenuInputProcessor => null()
    class(BasicMenuInputProcessor), pointer :: f_menuInputProcessor => null()
    class(ScrollSelectionForm), pointer :: f_menuForm => null()
    class(Paintable), pointer :: f_formPaintable => null()
    class(Paintable), pointer :: f_openMenuPaintable => null()
    class(Paintable), pointer :: f_menuPaintable => null()
    class(BaseTouchInput), pointer :: f_currentTouchInputFactory => null()
    class(ColorFillBasePaintable), pointer :: f_colorFillPaintable => null()
    class(BaseGameStatistics), pointer :: f_baseGameStatistics => null()
    class(PlayerQueue), pointer :: f_primaryPlayerQueue => null()
    class(PlayerQueue), pointer :: f_secondaryPlayerQueue => null()
    character(len=:), allocatable :: f_BUILD_GAME
    class(GameTypeFactory), pointer :: f_gameTypeFactory => null()
    class(ScreenCapture), pointer :: f_screenCapture => null()
    class(BasicMotionGesturesHandler), pointer :: f_basicMotionGesturesHandler => null()
    class(GameKeyEventHandler), pointer :: f_gameKeyEventHandler => null()
    class(DemoGameBehavior), pointer :: f_gameBehavior => null()
    class(BaseMenuBehavior), pointer :: f_menuBehavior => null()
    class(PaintableInterface), pointer :: f_progressPaintable => null()
    integer(4) :: f_fontHeightP = 0
    class(DemoPaintableInterface), pointer :: f_gameCanvasStartListener => null()
    class(InputProcessor), pointer :: f_rawGameInputProcessor => null()
    class(InputProcessor), pointer :: f_rawInputProcessor => null()
    class(InputProcessor), pointer :: f_inputProcessor => null()
    integer(8) :: f_YIELD_SLEEP = 0_8
  contains
    procedure :: jm_updateMeasurement_1 => AllBinaryGameCanvas_jm_updateMeasurement_1
    procedure :: jm_getInGameMenuBehavior_0 => AllBinaryGameCanvas_jm_getInGameMenuBehavior_0
    procedure :: jm_setCurrentThread_0 => AllBinaryGameCanvas_jm_setCurrentThread_0
    procedure :: jm_onEvent_1 => AllBinaryGameCanvas_jm_onEvent_1
    procedure :: jm_onDisplayChangeEvent_1 => AllBinaryGameCanvas_jm_onDisplayChangeEvent_1
    procedure :: jm_updateMenuFromEvent_1 => AllBinaryGameCanvas_jm_updateMenuFromEvent_1
    procedure :: jm_processSleep_0 => AllBinaryGameCanvas_jm_processSleep_0
    procedure :: jm_initPopupMenu_0 => AllBinaryGameCanvas_jm_initPopupMenu_0
    procedure :: jm_initMenu_0 => AllBinaryGameCanvas_jm_initMenu_0
    procedure :: jm_initMenu2_0 => AllBinaryGameCanvas_jm_initMenu2_0
    procedure :: jm_updateMenu_0 => AllBinaryGameCanvas_jm_updateMenu_0
    procedure :: jm_updateMenu2_0 => AllBinaryGameCanvas_jm_updateMenu2_0
    procedure :: jm_pause_0 => AllBinaryGameCanvas_jm_pause_0
    procedure :: jm_unPause_0 => AllBinaryGameCanvas_jm_unPause_0
    procedure :: jm_isPausable_0 => AllBinaryGameCanvas_jm_isPausable_0
    procedure :: jm_popupMenu_0 => AllBinaryGameCanvas_jm_popupMenu_0
    procedure :: jm_popupMenu2_0 => AllBinaryGameCanvas_jm_popupMenu2_0
    procedure :: jm_toggleMenu_0 => AllBinaryGameCanvas_jm_toggleMenu_0
    procedure :: jm_closeMenu_0 => AllBinaryGameCanvas_jm_closeMenu_0
    procedure :: jm_closeMenu2_0 => AllBinaryGameCanvas_jm_closeMenu2_0
    procedure :: jm_open_0 => AllBinaryGameCanvas_jm_open_0
    procedure :: jm_close_0 => AllBinaryGameCanvas_jm_close_0
    procedure :: jm_processorInit_0 => AllBinaryGameCanvas_jm_processorInit_0
    procedure :: jm_setProcessGameProcessorInit_0 => AllBinaryGameCanvas_jm_setProcessGameProcessorInit_0
    procedure :: jm_initSpecialPaint_0 => AllBinaryGameCanvas_jm_initSpecialPaint_0
    procedure :: jm_init_2 => AllBinaryGameCanvas_jm_init_2
    procedure :: jm_notifyIntermission_1 => AllBinaryGameCanvas_jm_notifyIntermission_1
    procedure :: jm_mediaInit_0 => AllBinaryGameCanvas_jm_mediaInit_0
    procedure :: jm_initConfigurable_1 => AllBinaryGameCanvas_jm_initConfigurable_1
    procedure :: jm_initApp_1 => AllBinaryGameCanvas_jm_initApp_1
    procedure :: jm_initTouch_0 => AllBinaryGameCanvas_jm_initTouch_0
    procedure :: jm_updateCurrentTouchInputFactory_1 => AllBinaryGameCanvas_jm_updateCurrentTouchInputFactory_1
    procedure :: jm_updateTouch_0 => AllBinaryGameCanvas_jm_updateTouch_0
    procedure :: jm_updateTouch2_0 => AllBinaryGameCanvas_jm_updateTouch2_0
    procedure :: jm_postInitTouch_0 => AllBinaryGameCanvas_jm_postInitTouch_0
    procedure :: jm_initCommands_1 => AllBinaryGameCanvas_jm_initCommands_1
    procedure :: jm_addCommands_0 => AllBinaryGameCanvas_jm_addCommands_0
    procedure :: jm_itemStateChanged_1 => AllBinaryGameCanvas_jm_itemStateChanged_1
    procedure :: jm_updateScreenButtonPaintable_0 => AllBinaryGameCanvas_jm_updateScreenButtonPaintable_0
    procedure :: jm_updateScreenButtonPaintable2_0 => AllBinaryGameCanvas_jm_updateScreenButtonPaintable2_0
    procedure :: jm_getLayerManager_0 => AllBinaryGameCanvas_jm_getLayerManager_0
    procedure :: jm_setLayerManager_1 => AllBinaryGameCanvas_jm_setLayerManager_1
    procedure :: jm_isGameOver_0 => AllBinaryGameCanvas_jm_isGameOver_0
    procedure :: jm_setGameOver_1 => AllBinaryGameCanvas_jm_setGameOver_1
    procedure :: jm_processGameOver_0 => AllBinaryGameCanvas_jm_processGameOver_0
    procedure :: jm_isHighScoreSubmitted_0 => AllBinaryGameCanvas_jm_isHighScoreSubmitted_0
    procedure :: jm_setHighScoreSubmitted_1 => AllBinaryGameCanvas_jm_setHighScoreSubmitted_1
    procedure :: jm_getGameState_0 => AllBinaryGameCanvas_jm_getGameState_0
    procedure :: jm_setGameState_1 => AllBinaryGameCanvas_jm_setGameState_1
    procedure :: jm_updateGameState_0 => AllBinaryGameCanvas_jm_updateGameState_0
    procedure :: jm_updateGameKeyEventProcessor_0 => AllBinaryGameCanvas_jm_updateGameKeyEventProcessor_0
    procedure :: jm_removeAllGameKeyInputListenersOnBuild_0 => AllBinaryGameCanvas_jm_removeAllGameKeyInputListenersOnBuild_0
    procedure :: jm_removeAllGameKeyInputListeners_0 => AllBinaryGameCanvas_jm_removeAllGameKeyInputListeners_0
    procedure :: jm_removeAllGameKeyInputListeners2_0 => AllBinaryGameCanvas_jm_removeAllGameKeyInputListeners2_0
    procedure :: jm_removeKeyInputListener_1 => AllBinaryGameCanvas_jm_removeKeyInputListener_1
    procedure :: jm_updateEndGameProcessor_0 => AllBinaryGameCanvas_jm_updateEndGameProcessor_0
    procedure :: jm_updateEndGameProcessor2_0 => AllBinaryGameCanvas_jm_updateEndGameProcessor2_0
    procedure :: jm_buildGameInit_1 => AllBinaryGameCanvas_jm_buildGameInit_1
    procedure :: jm_cleanupGame_0 => AllBinaryGameCanvas_jm_cleanupGame_0
    procedure :: jm_loadResourceLoadingLevel_1 => AllBinaryGameCanvas_jm_loadResourceLoadingLevel_1
    procedure :: jm_loadResources_1 => AllBinaryGameCanvas_jm_loadResources_1
    procedure :: jm_updateColor_0 => AllBinaryGameCanvas_jm_updateColor_0
    procedure :: jm_buildGame_1 => AllBinaryGameCanvas_jm_buildGame_1
    procedure :: jm_buildGame2_0 => AllBinaryGameCanvas_jm_buildGame2_0
    procedure :: jm_addKeyInputListener_1 => AllBinaryGameCanvas_jm_addKeyInputListener_1
    procedure :: jm_setGameCanvasStartListener_1 => AllBinaryGameCanvas_jm_setGameCanvasStartListener_1
    procedure :: jm_loadState_0 => AllBinaryGameCanvas_jm_loadState_0
    procedure :: jm_getLoadStateHashtable_0 => AllBinaryGameCanvas_jm_getLoadStateHashtable_0
    procedure :: jm_setLoadStateHashtable_1 => AllBinaryGameCanvas_jm_setLoadStateHashtable_1
    procedure :: jm_getCurrentStateHashtable_0 => AllBinaryGameCanvas_jm_getCurrentStateHashtable_0
    procedure :: jm_paintGameOver_1 => AllBinaryGameCanvas_jm_paintGameOver_1
    procedure :: jm_draw_1 => AllBinaryGameCanvas_jm_draw_1
    procedure :: jm_clear_1 => AllBinaryGameCanvas_jm_clear_1
    procedure :: jm_paint_1 => AllBinaryGameCanvas_jm_paint_1
    procedure :: jm_paintThreed_1 => AllBinaryGameCanvas_jm_paintThreed_1
    procedure :: jm_processEndLevelIntermissionGameState_0 => AllBinaryGameCanvas_jm_processEndLevelIntermissionGameState_0
    procedure :: jm_nonBotPaint_1 => AllBinaryGameCanvas_jm_nonBotPaint_1
    procedure :: jm_paintIntermission_1 => AllBinaryGameCanvas_jm_paintIntermission_1
    procedure :: jm_keyPressed_1 => AllBinaryGameCanvas_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => AllBinaryGameCanvas_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => AllBinaryGameCanvas_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => AllBinaryGameCanvas_jm_keyPressedByDevice_2
    procedure :: jm_keyRepeatedByDevice_2 => AllBinaryGameCanvas_jm_keyRepeatedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => AllBinaryGameCanvas_jm_keyReleasedByDevice_2
    procedure :: jm_handleRawKey_3 => AllBinaryGameCanvas_jm_handleRawKey_3
    procedure :: jm_endProgress_1 => AllBinaryGameCanvas_jm_endProgress_1
    procedure :: jm_processPlayingGame_0 => AllBinaryGameCanvas_jm_processPlayingGame_0
    procedure :: jm_threadInit_0 => AllBinaryGameCanvas_jm_threadInit_0
    procedure :: jm_processGame_0 => AllBinaryGameCanvas_jm_processGame_0
    procedure :: jm_notifyDonePainting_0 => AllBinaryGameCanvas_jm_notifyDonePainting_0
    procedure :: jm_shouldWait_0 => AllBinaryGameCanvas_jm_shouldWait_0
    procedure :: jm_run_0 => AllBinaryGameCanvas_jm_run_0
    procedure :: jm_run2_0 => AllBinaryGameCanvas_jm_run2_0
    procedure :: jm_run3_0 => AllBinaryGameCanvas_jm_run3_0
    procedure :: jm_setRunning_1 => AllBinaryGameCanvas_jm_setRunning_1
    procedure :: jm_end_0 => AllBinaryGameCanvas_jm_end_0
    procedure :: jm_endGameThread_0 => AllBinaryGameCanvas_jm_endGameThread_0
    procedure :: jm_createHighScore_1 => AllBinaryGameCanvas_jm_createHighScore_1
    procedure :: jm_setHighScore_5 => AllBinaryGameCanvas_jm_setHighScore_5
    procedure :: jm_setHighScore2_5 => AllBinaryGameCanvas_jm_setHighScore2_5
    procedure :: jm_getGameStateTimeHelper_0 => AllBinaryGameCanvas_jm_getGameStateTimeHelper_0
    procedure :: jm_setInitialized_1 => AllBinaryGameCanvas_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => AllBinaryGameCanvas_jm_isInitialized_0
    procedure :: jm_getSourceId_0 => AllBinaryGameCanvas_jm_getSourceId_0
    procedure :: jm_setProgressPaintable_1 => AllBinaryGameCanvas_jm_setProgressPaintable_1
    procedure :: jm_getStartIntermissionInterface_0 => AllBinaryGameCanvas_jm_getStartIntermissionInterface_0
    procedure :: jm_getEndLevelIntermissionInterface_0 => AllBinaryGameCanvas_jm_getEndLevelIntermissionInterface_0
    procedure :: jm_setTouchPaintableP_1 => AllBinaryGameCanvas_jm_setTouchPaintableP_1
    procedure :: jm_getTouchPaintableP_0 => AllBinaryGameCanvas_jm_getTouchPaintableP_0
    procedure :: jm_setEndGamePaintable_1 => AllBinaryGameCanvas_jm_setEndGamePaintable_1
    procedure :: jm_getEndGamePaintable_0 => AllBinaryGameCanvas_jm_getEndGamePaintable_0
    procedure :: jm_setIntermissionPaintable_1 => AllBinaryGameCanvas_jm_setIntermissionPaintable_1
    procedure :: jm_getIntermissionPaintable_0 => AllBinaryGameCanvas_jm_getIntermissionPaintable_0
    procedure :: jm_getEndGameInfoP_0 => AllBinaryGameCanvas_jm_getEndGameInfoP_0
    procedure :: jm_setHighScoresPaintable_1 => AllBinaryGameCanvas_jm_setHighScoresPaintable_1
    procedure :: jm_getHighScoresPaintable_0 => AllBinaryGameCanvas_jm_getHighScoresPaintable_0
    procedure :: jm_getRealHighScoresPaintable_0 => AllBinaryGameCanvas_jm_getRealHighScoresPaintable_0
    procedure :: jm_clearPlayerGameInputList_0 => AllBinaryGameCanvas_jm_clearPlayerGameInputList_0
    procedure :: jm_addPlayerGameInput_1 => AllBinaryGameCanvas_jm_addPlayerGameInput_1
    procedure :: jm_setMenuInputProcessor_1 => AllBinaryGameCanvas_jm_setMenuInputProcessor_1
    procedure :: jm_getMenuInputProcessor_0 => AllBinaryGameCanvas_jm_getMenuInputProcessor_0
    procedure :: jm_getMenuForm_0 => AllBinaryGameCanvas_jm_getMenuForm_0
    procedure :: jm_setMenuForm_1 => AllBinaryGameCanvas_jm_setMenuForm_1
    procedure :: jm_getStartLevel_0 => AllBinaryGameCanvas_jm_getStartLevel_0
    procedure :: jm_setStartLevel_1 => AllBinaryGameCanvas_jm_setStartLevel_1
    procedure :: jm_setTouchButtonsPaintable_1 => AllBinaryGameCanvas_jm_setTouchButtonsPaintable_1
    procedure :: jm_getTouchButtonsPaintable_0 => AllBinaryGameCanvas_jm_getTouchButtonsPaintable_0
    procedure :: jm_setGameInputProcessor_1 => AllBinaryGameCanvas_jm_setGameInputProcessor_1
    procedure :: jm_getGameInputProcessor_0 => AllBinaryGameCanvas_jm_getGameInputProcessor_0
    procedure :: jm_setEndGameProcessor_1 => AllBinaryGameCanvas_jm_setEndGameProcessor_1
    procedure :: jm_getEndGameProcessor_0 => AllBinaryGameCanvas_jm_getEndGameProcessor_0
    procedure :: jm_setEndGameStatePaintable_1 => AllBinaryGameCanvas_jm_setEndGameStatePaintable_1
    procedure :: jm_getEndGameStatePaintable_0 => AllBinaryGameCanvas_jm_getEndGameStatePaintable_0
    procedure :: jm_setNonBotPaintableP_1 => AllBinaryGameCanvas_jm_setNonBotPaintableP_1
    procedure :: jm_getNonBotPaintableP_0 => AllBinaryGameCanvas_jm_getNonBotPaintableP_0
    procedure :: jm_setStartIntermissionPaintable_1 => AllBinaryGameCanvas_jm_setStartIntermissionPaintable_1
    procedure :: jm_getStartIntermissionPaintable_0 => AllBinaryGameCanvas_jm_getStartIntermissionPaintable_0
    procedure :: jm_setMainStateProcessor_1 => AllBinaryGameCanvas_jm_setMainStateProcessor_1
    procedure :: jm_getMainStateProcessor_0 => AllBinaryGameCanvas_jm_getMainStateProcessor_0
    procedure :: jm_setProcessGameProcessor_1 => AllBinaryGameCanvas_jm_setProcessGameProcessor_1
    procedure :: jm_getProcessGameProcessor_0 => AllBinaryGameCanvas_jm_getProcessGameProcessor_0
    procedure :: jm_setOpenMenuPaintable_1 => AllBinaryGameCanvas_jm_setOpenMenuPaintable_1
    procedure :: jm_getOpenMenuPaintable_0 => AllBinaryGameCanvas_jm_getOpenMenuPaintable_0
    procedure :: jm_setPopupMenuInputProcessor_1 => AllBinaryGameCanvas_jm_setPopupMenuInputProcessor_1
    procedure :: jm_getPopupMenuInputProcessor_0 => AllBinaryGameCanvas_jm_getPopupMenuInputProcessor_0
    procedure :: jm_getSensorGameUpdateProcessor_0 => AllBinaryGameCanvas_jm_getSensorGameUpdateProcessor_0
    procedure :: jm_getRawGameInputProcessor_0 => AllBinaryGameCanvas_jm_getRawGameInputProcessor_0
    procedure :: jm_getRawInputProcessor_0 => AllBinaryGameCanvas_jm_getRawInputProcessor_0
    procedure :: jm_setInputProcessor_1 => AllBinaryGameCanvas_jm_setInputProcessor_1
    procedure :: jm_getInputProcessor_0 => AllBinaryGameCanvas_jm_getInputProcessor_0
    procedure :: jm_setMenuPaintable_1 => AllBinaryGameCanvas_jm_setMenuPaintable_1
    procedure :: jm_getMenuPaintable_0 => AllBinaryGameCanvas_jm_getMenuPaintable_0
    procedure :: jm_setFormPaintable_1 => AllBinaryGameCanvas_jm_setFormPaintable_1
    procedure :: jm_getFormPaintable_0 => AllBinaryGameCanvas_jm_getFormPaintable_0
    procedure :: jm_setGameSpecificPaintableP_1 => AllBinaryGameCanvas_jm_setGameSpecificPaintableP_1
    procedure :: jm_getGameSpecificPaintableP_0 => AllBinaryGameCanvas_jm_getGameSpecificPaintableP_0
    procedure :: jm_isSingleThread_0 => AllBinaryGameCanvas_jm_isSingleThread_0
    procedure :: jm_isRunningInAnotherThread_0 => AllBinaryGameCanvas_jm_isRunningInAnotherThread_0
    procedure :: jm_getType_0 => AllBinaryGameCanvas_jm_getType_0
    procedure :: jm_getTitle_0 => AllBinaryGameCanvas_jm_getTitle_0
    procedure :: jm_isPaused_0 => AllBinaryGameCanvas_jm_isPaused_0
  end type

  ! AllBinaryGameCanvas used as a AllBinaryGameCanvasInterface
  type, extends(AllBinaryGameCanvasInterface) :: AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_getLayerManager_0 => AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface_jm_getLayerManager_0
  end type

  ! AllBinaryGameCanvas used as a GameCanvasRunnableInterface
  type, extends(GameCanvasRunnableInterface) :: AllBinaryGameCanvas_jas_GameCanvasRunnableInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_pause_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_pause_0
    procedure :: jm_unPause_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0
    procedure :: jm_initCommands_1 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1
    procedure :: jm_isGameOver_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0
    procedure :: jm_processGameOver_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0
    procedure :: jm_isHighScoreSubmitted_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0
    procedure :: jm_setHighScoreSubmitted_1 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1
    procedure :: jm_getLoadStateHashtable_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0
    procedure :: jm_setLoadStateHashtable_1 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1
    procedure :: jm_getCurrentStateHashtable_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0
    procedure :: jm_isInitialized_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0
    procedure :: jm_getType_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getType_0
    procedure :: jm_getTitle_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0
    procedure :: jm_isPaused_0 => AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0
  end type

  ! AllBinaryGameCanvas used as a MenuListener
  type, extends(MenuListener) :: AllBinaryGameCanvas_jas_MenuListener
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_open_0 => AllBinaryGameCanvas_jas_MenuListener_jm_open_0
    procedure :: jm_close_0 => AllBinaryGameCanvas_jas_MenuListener_jm_close_0
  end type

  ! AllBinaryGameCanvas used as a IntermissionCompositeInterface
  type, extends(IntermissionCompositeInterface) :: AllBinaryGameCanvas_jas_IntermissionCompositeInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_getStartIntermissionInterface_0 => AllBinaryGameCanvas_jas_IntermissionCompositeInterface_jm_getStartIntermissionInterface_0
    procedure :: jm_getEndLevelIntermissionInterface_0 => AllBinaryGameCanvas_jas_IntermissionCompositeInterface_jm_getEndLevelIntermissionInterface_0
  end type

  ! AllBinaryGameCanvas used as a IntermissionEnableListenerInterface
  type, extends(IntermissionEnableListenerInterface) :: AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_notifyIntermission_1 => AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface_jm_notifyIntermission_1
  end type

  ! AllBinaryGameCanvas used as a PopupMenuInterface
  type, extends(PopupMenuInterface) :: AllBinaryGameCanvas_jas_PopupMenuInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_popupMenu_0 => AllBinaryGameCanvas_jas_PopupMenuInterface_jm_popupMenu_0
    procedure :: jm_toggleMenu_0 => AllBinaryGameCanvas_jas_PopupMenuInterface_jm_toggleMenu_0
    procedure :: jm_closeMenu_0 => AllBinaryGameCanvas_jas_PopupMenuInterface_jm_closeMenu_0
  end type

  ! AllBinaryGameCanvas used as a DisplayChangeEventListener
  type, extends(DisplayChangeEventListener) :: AllBinaryGameCanvas_jas_DisplayChangeEventListener
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_onDisplayChangeEvent_1 => AllBinaryGameCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1
  end type

  ! AllBinaryGameCanvas used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: AllBinaryGameCanvas_jas_UpdateMyFontInterface
    class(AllBinaryGameCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => AllBinaryGameCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  integer(4), save :: AllBinaryGameCanvas_jcell_id
  logical, save :: AllBinaryGameCanvas_jset_id = .false.
  integer(4), save :: AllBinaryGameCanvas_jcell_TYPE
  logical, save :: AllBinaryGameCanvas_jset_TYPE = .false.

contains

  function AllBinaryGameCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryGameCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryGameCanvas)
      jresult => object
    end select
  end function

  function AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive function AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface_jm_getLayerManager_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_AllBinaryGameCanvasInterface), target :: this
    class(AllBinaryGameLayerManager), pointer :: jresult
    jresult => this%jtarget%jm_getLayerManager_0()
  end function

  function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_pause_0(this)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_pause_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_unPause_0(this)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_unPause_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_initCommands_1(this, j_cmdListener)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    call this%jtarget%jm_initCommands_1(j_cmdListener)
  end subroutine

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isGameOver_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isGameOver_0()
  end function

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_processGameOver_0(this)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    call this%jtarget%jm_processGameOver_0()
  end subroutine

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isHighScoreSubmitted_0()
  end function

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical, value :: j_highScoreSubmitted
    call this%jtarget%jm_setHighScoreSubmitted_1(j_highScoreSubmitted)
  end subroutine

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getLoadStateHashtable_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getLoadStateHashtable_0()
  end function

  recursive subroutine AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    call this%jtarget%jm_setLoadStateHashtable_1(j_hashtable)
  end subroutine

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    jresult => this%jtarget%jm_getCurrentStateHashtable_0()
  end function

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isInitialized_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isInitialized_0()
  end function

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getType_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getType_0()
  end function

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_getTitle_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getTitle_0()
  end function

  recursive function AllBinaryGameCanvas_jas_GameCanvasRunnableInterface_jm_isPaused_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_GameCanvasRunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isPaused_0()
  end function

  function AllBinaryGameCanvas_jas_MenuListener_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_MenuListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_MenuListener_jm_open_0(this)
    class(AllBinaryGameCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_open_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jas_MenuListener_jm_close_0(this)
    class(AllBinaryGameCanvas_jas_MenuListener), target :: this
    call this%jtarget%jm_close_0()
  end subroutine

  function AllBinaryGameCanvas_jas_IntermissionCompositeInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_IntermissionCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive function AllBinaryGameCanvas_jas_IntermissionCompositeInterface_jm_getStartIntermissionInterface_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_IntermissionCompositeInterface), target :: this
    class(IntermissionInterface), pointer :: jresult
    jresult => this%jtarget%jm_getStartIntermissionInterface_0()
  end function

  recursive function AllBinaryGameCanvas_jas_IntermissionCompositeInterface_jm_getEndLevelIntermissionInterface_0(this) result(jresult)
    class(AllBinaryGameCanvas_jas_IntermissionCompositeInterface), target :: this
    class(IntermissionInterface), pointer :: jresult
    jresult => this%jtarget%jm_getEndLevelIntermissionInterface_0()
  end function

  function AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface_jm_notifyIntermission_1(this, j_enable)
    class(AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface), target :: this
    logical, value :: j_enable
    call this%jtarget%jm_notifyIntermission_1(j_enable)
  end subroutine

  function AllBinaryGameCanvas_jas_PopupMenuInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_PopupMenuInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_PopupMenuInterface_jm_popupMenu_0(this)
    class(AllBinaryGameCanvas_jas_PopupMenuInterface), target :: this
    call this%jtarget%jm_popupMenu_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jas_PopupMenuInterface_jm_toggleMenu_0(this)
    class(AllBinaryGameCanvas_jas_PopupMenuInterface), target :: this
    call this%jtarget%jm_toggleMenu_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jas_PopupMenuInterface_jm_closeMenu_0(this)
    class(AllBinaryGameCanvas_jas_PopupMenuInterface), target :: this
    call this%jtarget%jm_closeMenu_0()
  end subroutine

  function AllBinaryGameCanvas_jas_DisplayChangeEventListener_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_DisplayChangeEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_DisplayChangeEventListener_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(AllBinaryGameCanvas_jas_DisplayChangeEventListener), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    call this%jtarget%jm_onDisplayChangeEvent_1(j_displayChangeEvent)
  end subroutine

  function AllBinaryGameCanvas_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(AllBinaryGameCanvas), target :: object
    class(AllBinaryGameCanvas_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(AllBinaryGameCanvas_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function AllBinaryGameCanvas_jstatic_id() result(jresult)
    integer(4) :: jresult
    if (.not. AllBinaryGameCanvas_jset_id) then
      AllBinaryGameCanvas_jset_id = .true.
      AllBinaryGameCanvas_jcell_id = 0
    end if
    jresult = AllBinaryGameCanvas_jcell_id
  end function

  subroutine AllBinaryGameCanvas_jsetstatic_id(jvalue)
    integer(4), value :: jvalue
    AllBinaryGameCanvas_jset_id = .true.
    AllBinaryGameCanvas_jcell_id = jvalue
  end subroutine

  function AllBinaryGameCanvas_jstatic_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. AllBinaryGameCanvas_jset_TYPE) then
      AllBinaryGameCanvas_jset_TYPE = .true.
      AllBinaryGameCanvas_jcell_TYPE = 2
    end if
    jresult = AllBinaryGameCanvas_jcell_TYPE
  end function

  subroutine AllBinaryGameCanvas_jsetstatic_TYPE(jvalue)
    integer(4), value :: jvalue
    AllBinaryGameCanvas_jset_TYPE = .true.
    AllBinaryGameCanvas_jcell_TYPE = jvalue
  end subroutine

  recursive function AllBinaryGameCanvas_jnew_5(j_commandListener, j_gameLayerManager, j_highScoresFactoryInterface, j_gameInitializationInterfaceFactoryInterface, j_buffered) result(this)
    class(CommandListener), target, optional :: j_commandListener
    class(AllBinaryGameLayerManager), target, optional :: j_gameLayerManager
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    logical, value :: j_buffered
    class(AllBinaryGameCanvas), pointer :: this
    class(CanvasStrings), pointer :: jtemp2
    class(GameInfo), pointer :: jtemp3
    class(GameInfo), pointer :: jtemp4
    class(DisplayChangeEventHandler), pointer :: jtemp5
    class(ColorFillPaintableFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinaryGameCanvas'
    this%f_BUILD_GAME = ''
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    this%f_touchFeatureFactory => TouchFeatureFactory_jm_getInstance_0()
    this%f_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
    this%f_touchButtonFactory => TouchButtonFactory_jm_getInstance_0()
    this%f_gameAdStateFactory => GameAdStateFactory_jm_getInstance_0()
    this%f_gameStrings => GameStrings_jm_getInstance_0()
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
    this%f_gameTickDisplayInfoSingleton => GameTickDisplayInfoSingleton_jm_getInstance_0()
    this%f_gameRunnable => GameCanvasRunnable_jnew_1(this)
    this%f_gamePauseRunnable => GameCanvasPauseRunnable_jnew_1(this)
    this%f_formUtil => FormUtil_jm_getInstance_0()
    this%f_myFormUtil => MyFormUtil_jm_getInstance_0()
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    this%f_gameSpecificPaintable => NullPaintable_jm_getInstance_0()
    this%f_sensorGameUpdateProcessor => SingleSensorGameUpdateProcessor_jnew_0()
    this%f_endGameInfo => EndGameInfo_jnew_0()
    this%f_startIntermissionInterface => Intermission_jnew_0()
    this%f_endLevelIntermissionInterface => Intermission_jnew_0()
    this%f_gameLayerManager => AllBinaryGameLayerManager_jm_getNullInstance_0()
    this%f_gameState => this%f_gameStateFactory%f_NO_GAME_STATE
    
    
    this%f_gameStateTimeHelper => TimeDelayHelper_jnew_1(0)
    
    
    this%f_realHighScoresPaintable => HighScoresPaintable_jnew_0()
    this%f_highScoresPaintable => NullPaintable_jm_getInstance_0()
    this%f_localPlayerGameInputList => BasicArrayListD_jnew_0()
    
    this%f_hashtable => this%f_stdUtil%f_NULL_TABLE
    
    this%f_gameInitializationInterfaceFactoryInterface => BasicBuildGameInitializerFactory_jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY()
    this%f_touchButtonsPaintable => NullPaintable_jm_getInstance_0()
    this%f_touchPaintable => NullPaintable_jm_getInstance_0()
    this%f_cheatProcessor => NoPlayerGameInput_jm_getInstance_0()
    this%f_gameInputProcessor => Processor_jm_getInstance_0()
    this%f_endGameProcessor => Processor_jm_getInstance_0()
    this%f_realEndGameProcessor => Processor_jm_getInstance_0()
    this%f_startIntermissionProcessor => Processor_jm_getInstance_0()
    this%f_realStartIntermissionProcessor => Processor_jm_getInstance_0()
    this%f_endGamePaintable => NullPaintable_jm_getInstance_0()
    this%f_endGameStatePaintable => NullPaintable_jm_getInstance_0()
    this%f_nonBotPaintable => NullPaintable_jm_getInstance_0()
    this%f_intermissionPaintable => NullPaintable_jm_getInstance_0()
    this%f_startIntermissionPaintable => NullInitUpdatePaintable_jm_getInstance_0()
    this%f_mainStateProcessor => Processor_jm_getInstance_0()
    this%f_processGameProcessor => Processor_jm_getInstance_0()
    
    
    this%f_mainMenuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_popupMenuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_menuInputProcessor => NoMenuInputProcessor_jm_getInstance_0()
    this%f_menuForm => ScrollSelectionForm_jm_getNullScrollSelectionForm_0()
    this%f_formPaintable => NullPaintable_jm_getInstance_0()
    this%f_openMenuPaintable => NullPaintable_jm_getInstance_0()
    this%f_menuPaintable => NullPaintable_jm_getInstance_0()
    this%f_currentTouchInputFactory => NoButtonsTouchInputFactory_jm_getInstance_0()
    jtemp1 => ColorFillPaintableFactory_jm_getInstance_0()
    this%f_colorFillPaintable => jtemp1%jm_getInstance_2(this%f_basicColorFactory%f_BLACK, .true.)
    this%f_baseGameStatistics => GameStatisticsFactory_jm_getInstance_0()
    this%f_primaryPlayerQueue => PrimaryPlayerQueueFactory_jm_getInstance_0()
    this%f_secondaryPlayerQueue => SecondaryPlayerQueueFactory_jm_getInstance_0()
    this%f_BUILD_GAME = 'buildGame'
    this%f_gameTypeFactory => GameTypeFactory_jm_getInstance_0()
    this%f_screenCapture => ScreenCaptureFactory_jm_getInstance_0()
    this%f_basicMotionGesturesHandler => BasicMotionGesturesHandler_jm_getInstance_0()
    this%f_gameKeyEventHandler => GameKeyEventHandler_jm_getInstance_0()
    
    
    this%f_progressPaintable => ProgressCanvasFactory_jm_getLazyInstance_0()
    
    this%f_gameCanvasStartListener => NullDemoPaintable_jstatic_NULL_DEMO_PAINTABLE()
    this%f_rawGameInputProcessor => GameCanvasInputProcessor_jnew_1(this)
    this%f_rawInputProcessor => FormInputProcessor_jnew_1(this)
    this%f_inputProcessor => this%jm_getRawGameInputProcessor_0()
    this%f_YIELD_SLEEP = 100_8
        jtemp2 => CanvasStrings_jm_getInstance_0()
        continue ! super()
        this%f_highScoresHelper => j_highScoresFactoryInterface%jm_createHighScoresHelper_0()
        this%f_gameInitializationInterfaceFactoryInterface => j_gameInitializationInterfaceFactoryInterface
        call this%jm_init_2(j_gameLayerManager, j_buffered)
        this%f_highScoresFactoryInterface => j_highScoresFactoryInterface
        jtemp3 => this%f_gameLayerManager%jm_getGameInfo_0()
        jtemp4 => this%f_gameLayerManager%jm_getGameInfo_0()
        if (((jtemp3%jm_getGameType_0() == this%f_gameTypeFactory%f_BOT) .or. (jtemp4%jm_getGameType_0() == this%f_gameTypeFactory%f_NONE))) then
            this%f_gameBehavior => DemoGameBehavior_jm_getInstance_0()
            this%f_menuBehavior => BaseMenuBehavior_jm_getInstance_0()
        else
            this%f_gameBehavior => BaseGameBehavior_jm_getInstance_0()
            this%f_menuBehavior => this%jm_getInGameMenuBehavior_0()
        end if
        call this%jm_initPopupMenu_0()
        call this%jm_initMenu_0()
        call this%jm_initSpecialPaint_0()
        jtemp5 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp5%jm_addListenerInterface_1(this)
  end function

  recursive subroutine AllBinaryGameCanvas_jm_updateMeasurement_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(Rectangle), pointer :: j_popupMenuRectangle
    class(BasicPopupMenuPaintable), pointer :: j_basicPopupMenuPaintable
    class(PopupMenuInputProcessor), pointer :: j_popupMenuInputProcessor
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_font => j_graphics%jm_getFont_0()
            jtemp11 => StringMaker_jnew_0()
            jtemp10 => jtemp11%jm_append_1(this%f_commonStrings%f_START)
            jtemp9 => jtemp10%jm_append_1(this%f_canvasStrings%f_FD_WIDTH)
            jtemp8 => jtemp9%jm_appendint_1(MyFontProcessor_jm_defaultCharWidth_1(j_font))
            jtemp7 => jtemp8%jm_append_1(this%f_canvasStrings%f_FD_HEIGHT)
            jtemp6 => jtemp7%jm_appendint_1(j_font%jm_getHeight_0())
            call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, this%f_canvasStrings%f_UPDATE_MEASUREMENT)
            this%f_fontHeightP = j_font%jm_getHeight_0()
            call this%f_myFormUtil%jm_updateMeasurement_1(j_graphics)
            j_popupMenuRectangle => this%f_myFormUtil%jm_getPopupMenuRectangle_0()
            j_basicPopupMenuPaintable => BasicPopupMenuPaintable_jcast(this%jm_getOpenMenuPaintable_0())
            call j_basicPopupMenuPaintable%jm_init_1(j_popupMenuRectangle)
            if ((.not. JR_same(this%jm_getPopupMenuInputProcessor_0(), NoMenuInputProcessor_jm_getInstance_0()))) then
                j_popupMenuInputProcessor => PopupMenuInputProcessor_jcast(this%jm_getPopupMenuInputProcessor_0())
                call j_popupMenuInputProcessor%jm_init_1(j_popupMenuRectangle)
            end if
            this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getInGameMenuBehavior_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(BaseMenuBehavior), pointer :: jresult
        jresult => InGameMenuBehavior_jm_getInstance_0()
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setCurrentThread_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (J2MEUtil_jm_isHTML_0()) then
            call this%RunnableCanvas%jm_setCurrentThreadFake_0()
        else
            call this%RunnableCanvas%jm_setCurrentThread_0()
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_onEvent_1(this, j_eventObject)
    class(AllBinaryGameCanvas), target :: this
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

  recursive subroutine AllBinaryGameCanvas_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(AllBinaryGameCanvas), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(DisplayInfoSingleton), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp16 => DisplayInfoSingleton_jm_getInstance_0()
            jtemp15 => StringMaker_jnew_0()
            jtemp14 => jtemp15%jm_append_1(this%f_commonStrings%f_START)
            jtemp13 => jtemp14%jm_append_1(jtemp16%jm_toString_0())
            call this%f_logUtil%jm_putF_3(jtemp13%jm_toString_0(), this, this%f_canvasStrings%f_UPDATE_MEASUREMENT)
            this%f_myFontProcessor => this%f_updateMyFontProcessor
            call this%f_menuBehavior%jm_onDisplayChangeEvent_2(this, j_displayChangeEvent)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateMenuFromEvent_1(this, j_displayChangeEvent)
    class(AllBinaryGameCanvas), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    class(FormType), pointer :: j_formType
    class(Rectangle), pointer :: j_rectangle
    class(FormTypeFactory), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp17 => FormTypeFactory_jm_getInstance_0()
        j_formType => jtemp17%jm_getFormType_0()
        j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
        call this%f_menuForm%jm_init_2(j_rectangle, j_formType)
        if ((.not. JR_same(this%f_currentTouchInputFactory, NoButtonsTouchInputFactory_jm_getInstance_0()))) then
            call this%f_touchButtonFactory%jm_toggle_2(this%jm_isPaused_0(), this%f_currentTouchInputFactory%jm_getList_0())
        end if
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_processSleep_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RunnableCanvas%jm_processSleep_0()
        if (AllBinaryMediaManager_jm_update_0()) then
            if ((.not. this%f_primaryPlayerQueue%jm_process_0())) then
                jdiscardBoolean = this%f_secondaryPlayerQueue%jm_process_0()
            end if
        end if
        if ((this%f_menuInputProcessor%jm_processInputList_0() /= (-1))) then
            call this%f_runnableCanvasRefreshHelper%jm_process_0()
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initPopupMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(Features), pointer :: j_features
    class(Rectangle), pointer :: j_popupMenuRectangle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (JR_same(this%f_popupMenuInputProcessor, NoMenuInputProcessor_jm_getInstance_0())) then
            j_features => Features_jm_getInstance_0()
            j_popupMenuRectangle => this%f_myFormUtil%jm_getPopupMenuRectangle_0()
            if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_TOUCH_ENABLED)) then
                call this%jm_setOpenMenuPaintable_1(BasicPopupMenuPaintable_jnew_3(j_popupMenuRectangle, this%f_gameLayerManager%jm_getBackgroundBasicColor_0(), this%f_gameLayerManager%jm_getForegroundBasicColor_0()))
                call this%jm_setPopupMenuInputProcessor_1(PopupMenuInputProcessor_jnew_4(BasicArrayListD_jnew_0(), (-1), this, j_popupMenuRectangle))
            end if
        else
            continue
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_menuBehavior%jm_initMenu_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initMenu2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(FormType), pointer :: j_formType
    class(GameLimitedCommandTextItemArrayFactory), pointer :: j_gameLimitedCommandTextItemArrayFactory
    class(CommandTextItemArrayFactory), pointer :: j_commandTextItemArrayFactory
    type(JRef), allocatable :: j_items(:)
    class(Rectangle), pointer :: j_rectangle
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(Features), pointer :: j_features
    class(FormTypeFactory), pointer :: jtemp18
    class(StringUtil), pointer :: jtemp19
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_closeMenu_0()
        jtemp18 => FormTypeFactory_jm_getInstance_0()
        j_formType => jtemp18%jm_getFormType_0()
        j_gameLimitedCommandTextItemArrayFactory => GameLimitedCommandTextItemArrayFactory_jm_getInstance_0()
        j_commandTextItemArrayFactory => j_gameLimitedCommandTextItemArrayFactory%jm_getCommandTextItemArrayFactory_0()
        j_items = j_commandTextItemArrayFactory%jm_getInstance_3(this%jm_getCommandStack_0(), this%f_gameLayerManager%jm_getBackgroundBasicColor_0(), this%f_gameLayerManager%jm_getForegroundBasicColor_0())
        j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
        jtemp19 => StringUtil_jm_getInstance_0()
        call this%jm_setMenuForm_1(CommandCurrentSelectionFormFactory_jm_getInstance_8(jtemp19%f_EMPTY_STRING, j_items, j_rectangle, j_formType, 25, .false., this%f_gameLayerManager%jm_getBackgroundBasicColor_0(), this%f_gameLayerManager%jm_getForegroundBasicColor_0()))
        j_scrollSelectionForm => this%jm_getMenuForm_0()
        j_features => Features_jm_getInstance_0()
        if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_TOUCH_ENABLED)) then
            this%f_mainMenuInputProcessor => PopupCommandFormInputProcessor_jnew_5(BasicArrayListD_jnew_0(), (-1), this, j_scrollSelectionForm, PopupMenuInputProcessor_jcast(this%jm_getPopupMenuInputProcessor_0()))
        else
            continue
        end if
        call this%jm_setMenuInputProcessor_1(this%jm_getPopupMenuInputProcessor_0())
        if ((.not. JR_same(j_scrollSelectionForm, ScrollSelectionFormNoneFactory_jm_getInstance_0()))) then
            call this%jm_setFormPaintable_1(FormPaintable_jnew_1(j_scrollSelectionForm))
        else
            continue
        end if
        call this%jm_closeMenu_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_menuBehavior%jm_updateMenu_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateMenu2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(GameLimitedCommandTextItemArrayFactory), pointer :: j_gameLimitedCommandTextItemArrayFactory
    class(CommandTextItemArrayFactory), pointer :: j_commandTextItemArrayFactory
    type(JRef), allocatable :: j_items(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(FormType), pointer :: j_formType
    class(Rectangle), pointer :: j_rectangle
    class(FormTypeFactory), pointer :: jtemp20
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scrollSelectionForm => this%jm_getMenuForm_0()
        call j_scrollSelectionForm%jm_deleteAll_0()
        j_gameLimitedCommandTextItemArrayFactory => GameLimitedCommandTextItemArrayFactory_jm_getInstance_0()
        j_commandTextItemArrayFactory => j_gameLimitedCommandTextItemArrayFactory%jm_getCommandTextItemArrayFactory_0()
        j_items = j_commandTextItemArrayFactory%jm_getInstance_3(this%jm_getCommandStack_0(), this%f_gameLayerManager%jm_getBackgroundBasicColor_0(), this%f_gameLayerManager%jm_getForegroundBasicColor_0())
        j_size = size(j_items, 1)
        j_index = 0
        do while ((j_index < j_size))
            jdiscardInt = j_scrollSelectionForm%jm_append_1(ABCustomItem_jcast(j_items((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        jtemp20 => FormTypeFactory_jm_getInstance_0()
        j_formType => jtemp20%jm_getFormType_0()
        j_rectangle => this%f_formUtil%jm_createFormRectangle_0()
        call j_scrollSelectionForm%jm_init_2(j_rectangle, j_formType)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_pause_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(BasicArrayListUtil), pointer :: jtemp21
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_pause_1(this)
        call this%jm_closeMenu_0()
        call this%RunnableCanvas%jm_pause_0()
        jtemp21 => BasicArrayListUtil_jm_getInstance_0()
        call this%f_touchButtonFactory%jm_toggle_2(this%jm_isPaused_0(), jtemp21%jm_getImmutableInstance_0())
        call this%f_tsUtil%jm_gc_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_unPause_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(BasicArrayListUtil), pointer :: jtemp22
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_gameStrings%f_UNPAUSE)
        call this%jm_closeMenu_0()
        call this%f_tsUtil%jm_gc_0()
        call this%RunnableCanvas%jm_unPause_0()
        jtemp22 => BasicArrayListUtil_jm_getInstance_0()
        call this%f_touchButtonFactory%jm_toggle_2(this%jm_isPaused_0(), jtemp22%jm_getImmutableInstance_0())
        call this%f_gameBehavior%jm_unPause_1(this)
  end subroutine

  recursive function AllBinaryGameCanvas_jm_isPausable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
    class(CurrentDisplayableFactory), pointer :: jtemp23
        jtemp23 => CurrentDisplayableFactory_jm_getInstance_0()
        if ((jtemp23%jm_getUsedRunnable_0() == NullWaitGameRunnable_jm_getInstance_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine AllBinaryGameCanvas_jm_popupMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_menuBehavior%jm_popupMenu_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_popupMenu2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_primaryPlayerQueue%jm_add_1(SelectSound_jm_getInstance_0())
        call this%jm_setMenuPaintable_1(this%jm_getFormPaintable_0())
        call this%jm_setMenuInputProcessor_1(this%f_mainMenuInputProcessor)
        call this%f_basicMotionGesturesHandler%jm_addListenerInterface_1(this%f_mainMenuInputProcessor)
        call this%f_gameKeyEventHandler%jm_addListener_1(this%f_mainMenuInputProcessor)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_toggleMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_gameStrings%f_TOGGLE_MENU)
        if (JR_same(this%jm_getMenuPaintable_0(), this%jm_getOpenMenuPaintable_0())) then
            call this%jm_pause_0()
            call this%jm_updateMenu_0()
            call this%jm_popupMenu_0()
        else if (JR_same(this%jm_getMenuPaintable_0(), this%jm_getFormPaintable_0())) then
            call this%f_primaryPlayerQueue%jm_add_1(SelectSound_jm_getInstance_0())
            call this%jm_unPause_0()
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_closeMenu_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_menuBehavior%jm_closeMenu_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_closeMenu2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setMenuPaintable_1(this%jm_getOpenMenuPaintable_0())
        call this%f_basicMotionGesturesHandler%jm_removeListener_1(this%f_mainMenuInputProcessor)
        call this%f_gameKeyEventHandler%jm_removeListener_1(this%f_mainMenuInputProcessor)
        call this%jm_setMenuInputProcessor_1(this%jm_getPopupMenuInputProcessor_0())
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_open_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicMotionGesturesHandler%jm_addListenerInterface_1(this%f_menuInputProcessor)
        call this%f_gameKeyEventHandler%jm_addListener_1(this%f_menuInputProcessor)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_close_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicMotionGesturesHandler%jm_removeListener_1(this%f_menuInputProcessor)
        call this%f_gameKeyEventHandler%jm_removeListener_1(this%f_menuInputProcessor)
        call this%f_primaryPlayerQueue%jm_clear_0()
        call this%f_secondaryPlayerQueue%jm_clear_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_processorInit_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setMainStateProcessor_1(Processor_jm_getInstance_0())
        call this%jm_setProcessGameProcessorInit_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setProcessGameProcessorInit_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setProcessGameProcessor_1(GameProcessor_jnew_1(this))
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initSpecialPaint_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_menuBehavior%jm_initSpecialPaint_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_init_2(this, j_gameLayerManager, j_buffered)
    class(AllBinaryGameCanvas), target :: this
    class(AllBinaryGameLayerManager), target, optional :: j_gameLayerManager
    logical, value :: j_buffered
    character(len=:), allocatable :: j_BUFF_MESSAGE
    class(Features), pointer :: j_features
    class(GameFeatureFactory), pointer :: jtemp24
    class(IntermissionInterface), pointer :: jtemp25
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameStateTimeHelper%jm_setStartTimeTNT_0()
        call this%jm_setHighScoreSubmitted_1(.false.)
        call this%jm_setLayerManager_1(j_gameLayerManager)
        if ((.not. j_buffered)) then
            j_BUFF_MESSAGE = 'XXX Not Buffering Causes Concurrency Issues XXX'
            call this%f_logUtil%jm_putF_3(j_BUFF_MESSAGE, this, this%f_commonStrings%f_CONSTRUCTOR)
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        call this%jm_setGameInputProcessor_1(Processor_jm_getInstance_0())
        j_features => Features_jm_getInstance_0()
        jtemp24 => GameFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isFeature_1(jtemp24%f_CHEATING)) then
            this%f_isCheating = .true.
            this%f_cheatProcessor => CheatGameInputProcessor_jnew_1(this)
            call this%f_gameKeyEventHandler%jm_addListener_1(this%f_cheatProcessor)
        else
            this%f_isCheating = .false.
            this%f_cheatProcessor => NoPlayerGameInput_jm_getInstance_0()
        end if
        this%f_realEndGameProcessor => EndGameProcessor_jnew_1(this)
        call this%jm_setEndGameProcessor_1(Processor_jm_getInstance_0())
        this%f_realStartIntermissionProcessor => StartIntermissionProcessor_jnew_1(this)
        this%f_startIntermissionProcessor => Processor_jm_getInstance_0()
        call this%jm_setEndGameStatePaintable_1(EndGamePaintable_jnew_1(this))
        call this%jm_setEndGamePaintable_1(NullPaintable_jm_getInstance_0())
        call this%jm_setIntermissionPaintable_1(NullPaintable_jm_getInstance_0())
        jtemp25 => this%jm_getStartIntermissionInterface_0()
        call jtemp25%jm_setListener_1(AllBinaryGameCanvas_jas_IntermissionEnableListenerInterface_jnew(this))
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_notifyIntermission_1(this, j_enable)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_enable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_enable) then
            this%f_startIntermissionProcessor => this%f_realStartIntermissionProcessor
        else
            this%f_startIntermissionProcessor => Processor_jm_getInstance_0()
        end if
        if (j_enable) then
            call this%jm_setIntermissionPaintable_1(this%jm_getStartIntermissionPaintable_0())
        else
            call this%jm_setIntermissionPaintable_1(NullPaintable_jm_getInstance_0())
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_mediaInit_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initConfigurable_1(this, j_abeClientInformation)
    class(AllBinaryGameCanvas), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(GameFeatureFactory), pointer :: j_gameFeatureFactory
    class(ChangedGameFeatureListener), pointer :: j_changedGameFeatureListener
    class(Features), pointer :: j_features
    class(SensorFeatureFactory), pointer :: j_sensorFeatureFactory
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(GameInitializationUtil), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    class(StringMaker), pointer :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_addNormalPortion_2(50, 'Setting Configurables')
        jtemp26 => GameInitializationUtil_jm_getInstance_0()
        call jtemp26%jm_initGame_3(j_abeClientInformation, this, this%f_gameInitializationInterfaceFactoryInterface)
        j_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
        j_changedGameFeatureListener => ChangedGameFeatureListener_jm_getInstance_0()
        if (j_changedGameFeatureListener%jm_isChangedFeature_1(j_gameFeatureFactory%f_SOUND)) then
            j_features => Features_jm_getInstance_0()
            jtemp29 => StringMaker_jnew_0()
            jtemp28 => jtemp29%jm_append_1('Sound Changing To: ')
            jtemp27 => jtemp28%jm_appendboolean_1(j_features%jm_isFeature_1(j_gameFeatureFactory%f_SOUND))
            call this%f_logUtil%jm_putF_3(jtemp27%jm_toString_0(), this, 'initConfigurable')
            call this%jm_mediaInit_0()
            call j_changedGameFeatureListener%jm_remove_1(j_gameFeatureFactory%f_SOUND)
        end if
        j_sensorFeatureFactory => SensorFeatureFactory_jm_getInstance_0()
        if (((j_changedGameFeatureListener%jm_isChangedFeature_1(j_sensorFeatureFactory%f_ORIENTATION_SENSORS) .or. j_changedGameFeatureListener%jm_isChangedFeature_1(j_sensorFeatureFactory%f_NO_ORIENTATION)) .or. j_changedGameFeatureListener%jm_isChangedFeature_1(j_sensorFeatureFactory%f_SIMULATED_ORIENTATION_SENSORS))) then
            call j_changedGameFeatureListener%jm_remove_1(j_sensorFeatureFactory%f_NO_ORIENTATION)
            call j_changedGameFeatureListener%jm_remove_1(j_sensorFeatureFactory%f_ORIENTATION_SENSORS)
            call j_changedGameFeatureListener%jm_remove_1(j_sensorFeatureFactory%f_SIMULATED_ORIENTATION_SENSORS)
        end if
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        call this%jm_loadResourceLoadingLevel_1(j_resourceLoadingLevelFactory%f_LOAD_GAME)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initApp_1(this, j_abeClientInformation)
    class(AllBinaryGameCanvas), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_initConfigurable_1(j_abeClientInformation)
        call this%jm_processorInit_0()
        call this%f_sensorGameUpdateProcessor%jm_process_1(this%f_gameLayerManager)
        call this%f_sensorGameUpdateProcessor%jm_sendNotifications_1(this%f_gameLayerManager)
        call this%jm_initTouch_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initTouch_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(GameInitializedEvent), pointer :: j_gameInitializedEvent
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(GameInitializationUtil), pointer :: jtemp30
    class(GameInitializedEventHandler), pointer :: jtemp31
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp30 => GameInitializationUtil_jm_getInstance_0()
        j_gameInitializedEvent => jtemp30%f_EVENT
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        call j_gameInitializedEvent%jm_setResourceLoadingLevel_1(j_resourceLoadingLevelFactory%f_LOAD_TOUCH)
        jtemp31 => GameInitializedEventHandler_jm_getInstance_0()
        call jtemp31%jm_fireEvent_1(j_gameInitializedEvent)
        call this%f_touchButtonFactory%jm_defaultList_0()
        call this%jm_updateTouch_0()
        call this%jm_postInitTouch_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateCurrentTouchInputFactory_1(this, j_nextTouchInput)
    class(AllBinaryGameCanvas), target :: this
    class(BaseTouchInput), target, optional :: j_nextTouchInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_same(j_nextTouchInput, this%f_currentTouchInputFactory))) then
            this%f_currentTouchInputFactory => j_nextTouchInput
            call PreLogUtil_jm_put_3(this%f_currentTouchInputFactory%jm_toString_0(), this, this%f_gameInputStrings%f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            call this%f_touchButtonFactory%jm_toggle_2(this%jm_isPaused_0(), this%f_currentTouchInputFactory%jm_getList_0())
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateTouch_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_updateTouch_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateTouch2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(Features), pointer :: j_features
    class(GameInfo), pointer :: jtemp32
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)) then
            jtemp32 => this%f_gameLayerManager%jm_getGameInfo_0()
            if (((jtemp32%jm_getCurrentLevel_0() - this%jm_getStartLevel_0()) == 1)) then
                call this%jm_setTouchPaintableP_1(NullPaintable_jm_getInstance_0())
            end if
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_postInitTouch_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setTouchButtonsPaintable_1(TouchButtonsPaintableFactory_jm_getInstance_1(this%f_gameLayerManager%jm_getForegroundBasicColor_0()))
        call this%jm_updateScreenButtonPaintable_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_initCommands_1(this, j_cmdListener)
    class(AllBinaryGameCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        call this%jm_addCommands_0()
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_addCommands_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(MyCommandsFactory), pointer :: j_myCommandsFactory
    logical :: j_isOverScan
    class(GenericOperatingSystem), pointer :: jtemp33
    class(OperatingSystemFactory), pointer :: jtemp34
    class(TouchScreenFactory), pointer :: jtemp35
    class(InGameFeatures), pointer :: jtemp36
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        j_myCommandsFactory => MyCommandsFactory_jm_getInstance_0()
        if ((DebugFactory_jm_getInstance_0() /= NoDebug_jm_getInstance_0())) then
            call this%jm_addCommand_1(j_gameCommandsFactory%f_START_TRACE)
        end if
        call this%jm_addCommand_1(j_gameCommandsFactory%f_RESTART_COMMAND)
        call this%jm_addCommand_1(j_myCommandsFactory%f_PAUSE_COMMAND)
        call this%jm_addCommand_1(j_gameCommandsFactory%f_QUIT_COMMAND)
        jtemp34 => OperatingSystemFactory_jm_getInstance_0()
        jtemp33 => jtemp34%jm_getOperatingSystemInstance_0()
        j_isOverScan = jtemp33%jm_isOverScan_0()
        if (J2MEUtil_jm_isHTML_0()) then
            continue
        else if (SWTUtil_jstatic_isSWT()) then
            continue
        else if ((.not. j_isOverScan)) then
            jtemp35 => TouchScreenFactory_jm_getInstance_0()
            jtemp36 => InGameFeatures_jnew_0()
            if ((jtemp35%jm_isTouch_0() .and. jtemp36%jm_isAny_0())) then
                call this%jm_addCommand_1(InGameOptionsForm_jstatic_DISPLAY())
            end if
            call this%jm_addCommand_1(j_gameCommandsFactory%f_SAVE)
            call this%jm_addCommand_1(j_gameCommandsFactory%f_DISPLAY_LOAD_FORM)
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_itemStateChanged_1(this, j_item)
    class(AllBinaryGameCanvas), target :: this
    class(Item), target, optional :: j_item
    character(len=:), allocatable :: j_itemLabel
    class(GameFeatureUtil), pointer :: j_gameFeatureUtil
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(StringMaker), pointer :: jtemp39
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_itemLabel = j_item%jm_getLabel_0()
            jtemp39 => StringMaker_jnew_0()
            jtemp38 => jtemp39%jm_append_1(this%f_commonLabels%f_ITEM_LABEL)
            jtemp37 => jtemp38%jm_append_1(j_itemLabel)
            call this%f_logUtil%jm_putF_3(jtemp37%jm_toString_0(), this, 'itemStateChanged')
            if ((JR_className(j_item) == 'ChoiceGroup')) then
                j_gameFeatureUtil => GameFeatureUtil_jm_getInstance_0()
                if (j_gameFeatureUtil%jm_isExclusive_1(j_itemLabel)) then
                    call j_gameFeatureUtil%jm_updateExclusiveForChoiceGroup_1(ChoiceGroup_jcast(j_item))
                else
                    call j_gameFeatureUtil%jm_updateMultiple_1(ChoiceGroup_jcast(j_item))
                end if
            end if
            call this%f_sensorGameUpdateProcessor%jm_process_1(this%f_gameLayerManager)
            call this%jm_updateTouch_0()
            call this%jm_updateScreenButtonPaintable_0()
            call this%f_sensorGameUpdateProcessor%jm_sendNotifications_1(this%f_gameLayerManager)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateScreenButtonPaintable_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_updateScreenButtonPaintable_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateScreenButtonPaintable2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(Features), pointer :: j_features
    class(GameInfo), pointer :: jtemp40
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)) then
            call this%jm_setTouchPaintableP_1(this%jm_getTouchButtonsPaintable_0())
            jtemp40 => this%f_gameLayerManager%jm_getGameInfo_0()
            call this%jm_setStartLevel_1(jtemp40%jm_getCurrentLevel_0())
        else if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_SHOW_SCREEN_BUTTONS)) then
            call this%jm_setTouchPaintableP_1(this%jm_getTouchButtonsPaintable_0())
        else if (j_features%jm_isFeature_1(this%f_touchFeatureFactory%f_HIDE_SCREEN_BUTTONS)) then
            call this%jm_setTouchPaintableP_1(NullPaintable_jm_getInstance_0())
        else
            call this%jm_setTouchPaintableP_1(NullPaintable_jm_getInstance_0())
        end if
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getLayerManager_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(AllBinaryGameLayerManager), pointer :: jresult
        jresult => this%f_gameLayerManager
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setLayerManager_1(this, j_layerManager)
    class(AllBinaryGameCanvas), target :: this
    class(AllBinaryGameLayerManager), target, optional :: j_layerManager
        this%f_gameLayerManager => j_layerManager
  end subroutine

  recursive function AllBinaryGameCanvas_jm_isGameOver_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
        jresult = this%f_gameOver
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setGameOver_1(this, j_gameOver)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_gameOver
        this%f_gameOver = j_gameOver
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_processGameOver_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call PreLogUtil_jm_put_3(this%f_commonStrings%f_START, this, this%f_gameStrings%f_SET_GAME_OVER)
        call this%jm_setGameOver_1(.true.)
        call this%jm_removePauseCommand_0()
        call this%jm_setGameState_1(this%f_gameStateFactory%f_SHOW_END_RESULT_GAME_STATE)
        call this%jm_setEndGamePaintable_1(this%jm_getEndGameStatePaintable_0())
  end subroutine

  recursive function AllBinaryGameCanvas_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
        jresult = this%f_highScoreSubmitted
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_highScoreSubmitted
    class(StringMaker), pointer :: jtemp41
    class(StringMaker), pointer :: jtemp42
    class(StringMaker), pointer :: jtemp43
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_highScoreSubmitted = j_highScoreSubmitted
        if (j_highScoreSubmitted) then
            call this%f_highScoresHelper%jm_setSelectedHighScores_1(NullHighScoresSingletonFactory_jm_getInstance_0())
        end if
        jtemp43 => StringMaker_jnew_0()
        jtemp42 => jtemp43%jm_append_1('isHighScoreSubmitted: ')
        jtemp41 => jtemp42%jm_appendboolean_1(j_highScoreSubmitted)
        call this%f_logUtil%jm_putF_3(jtemp41%jm_toString_0(), this, 'setHighScoreSubmitted')
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getGameState_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(GameState), pointer :: jresult
        jresult => this%f_gameState
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setGameState_1(this, j_gameState)
    class(AllBinaryGameCanvas), target :: this
    class(GameState), target, optional :: j_gameState
    class(StringMaker), pointer :: jtemp44
    class(StringMaker), pointer :: jtemp45
    class(StringMaker), pointer :: jtemp46
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp46 => StringMaker_jnew_0()
        jtemp45 => jtemp46%jm_append_1(this%f_gameStrings%f_GAME_STATE)
        jtemp44 => jtemp45%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp44%jm_toString_0(), this, this%f_gameStrings%f_SET_GAME_STATE)
        this%f_gameState => j_gameState
        call this%f_gameStateTimeHelper%jm_setStartTimeTNT_0()
        call this%jm_updateEndGameProcessor_0()
        call this%jm_updateGameKeyEventProcessor_0()
        call this%f_gameBehavior%jm_setGameState_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateGameState_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(GameInfo), pointer :: jtemp47
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        jtemp47 => this%f_gameLayerManager%jm_getGameInfo_0()
        call j_gameAdState%jm_processAdState_2(this%f_gameState, jtemp47%jm_getGameType_0())
        if ((.not. JR_same(this%f_gameState, this%f_gameStateFactory%f_PLAYING_GAME_STATE))) then
            call j_gameAdState%jm_processPageAdState_0()
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateGameKeyEventProcessor_0(this)
    class(AllBinaryGameCanvas), target :: this
        if (((.not. JR_same(this%jm_getGameState_0(), this%f_gameStateFactory%f_PLAYING_GAME_STATE)) .or. this%f_isCheating)) then
            continue
        else
            continue
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_removeAllGameKeyInputListenersOnBuild_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllGameKeyInputListeners_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_removeAllGameKeyInputListeners_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_removeAllGameKeyInputListeners_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_removeAllGameKeyInputListeners2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), pointer :: j_playerGameInput
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Remove PlayerInput Listeners', this, 'removeAllGameKeyInputListeners')
        j_index = (this%f_localPlayerGameInputList%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_playerGameInput => PlayerGameInput_jcast(this%f_localPlayerGameInputList%jm_get_1(j_index))
            call this%jm_removeKeyInputListener_1(j_playerGameInput)
            call j_playerGameInput%jm_removeNonAIInputGameKeyEvents_0()
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_removeKeyInputListener_1(this, j_playerGameInput)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), target, optional :: j_playerGameInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameKeyEventHandler%jm_removeListener_1(j_playerGameInput)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateEndGameProcessor_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_updateEndGameProcessor_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateEndGameProcessor2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((JR_same(this%jm_getGameState_0(), this%f_gameStateFactory%f_SHOW_END_RESULT_GAME_STATE) .or. JR_same(this%jm_getGameState_0(), this%f_gameStateFactory%f_SHOW_HIGH_SCORE_GAME_STATE))) then
            call this%jm_setEndGameProcessor_1(this%f_realEndGameProcessor)
        else
            call this%jm_setEndGameProcessor_1(Processor_jm_getInstance_0())
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_buildGameInit_1(this, j_isPortion)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_isPortion
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_cleanupGame_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: jtemp48
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CLEANUP)
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_addNormalPortion_2(10, 'Cleaning Up')
        call this%f_primaryPlayerQueue%jm_clear_0()
        call this%f_secondaryPlayerQueue%jm_clear_0()
        jtemp48 => GameLevelDisplayChangeEventListenersFactory_jm_getInstance_0()
        call jtemp48%jm_clear_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_loadResourceLoadingLevel_1(this, j_resourceLoadingLevel)
    class(AllBinaryGameCanvas), target :: this
    class(ResourceLoadingLevel), target, optional :: j_resourceLoadingLevel
    class(GameInitializedEvent), pointer :: j_gameInitializedEvent
    class(GameInitializationUtil), pointer :: jtemp49
    class(GameInitializedEventHandler), pointer :: jtemp50
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp49 => GameInitializationUtil_jm_getInstance_0()
        j_gameInitializedEvent => jtemp49%f_EVENT
        call j_gameInitializedEvent%jm_setResourceLoadingLevel_1(j_resourceLoadingLevel)
        jtemp50 => GameInitializedEventHandler_jm_getInstance_0()
        call jtemp50%jm_fireEvent_1(j_gameInitializedEvent)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_loadResources_1(this, j_level)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_level
    class(GameInitializedEvent), pointer :: j_gameInitializedEvent
    class(GameInitializationUtil), pointer :: jtemp51
    class(GameInitializedEventHandler), pointer :: jtemp52
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp51 => GameInitializationUtil_jm_getInstance_0()
        j_gameInitializedEvent => jtemp51%f_EVENT
        call j_gameInitializedEvent%jm_setLevel_1(j_level)
        jtemp52 => GameInitializedEventHandler_jm_getInstance_0()
        call jtemp52%jm_fireEvent_1(j_gameInitializedEvent)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_updateColor_0(this)
    class(AllBinaryGameCanvas), target :: this
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_buildGame_1(this, j_portion)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_portion
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(Features), pointer :: j_features
    class(EndGameInfo), pointer :: jtemp53
    class(AllBinaryGameLayerManager), pointer :: jtemp54
    class(InputFeatureFactory), pointer :: jtemp55
    class(InitUpdatePaintable), pointer :: jtemp56
    class(MainFeatureFactory), pointer :: jtemp57
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_screenCapture%jm_endRecording_0()
        call this%f_screenCapture%jm_startRecording_0()
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        j_features => Features_jm_getInstance_0()
        call j_progressCanvas%jm_addNormalPortion_2(j_portion, 'Generic Build')
        call this%jm_removeAllGameKeyInputListenersOnBuild_0()
        call this%jm_updateTouch_0()
        call j_progressCanvas%jm_addNormalPortion_2(j_portion, 'High Scores')
        call this%f_highScoresFactoryInterface%jm_fetchHighScores_2(this%f_gameLayerManager%jm_getGameInfo_0(), this%f_highScoresHelper)
        call this%jm_setHighScoresPaintable_1(NullPaintable_jm_getInstance_0())
        call j_progressCanvas%jm_addNormalPortion_2(j_portion, 'Finishing.')
        jtemp54 => this%jm_getLayerManager_0()
        jtemp53 => this%jm_getEndGameInfoP_0()
        call jtemp53%jm_update_2(jtemp54%jm_getGameInfo_0(), this)
        jtemp55 => InputFeatureFactory_jm_getInstance_0()
        this%f_isSingleKeyRepeatableProcessing = j_features%jm_isFeature_1(jtemp55%f_SINGLE_KEY_REPEAT_PRESS)
        call this%jm_setGameOver_1(.false.)
        call j_progressCanvas%jm_addNormalPortion_2(j_portion, 'Finishing..')
        call this%jm_updateColor_0()
        jtemp56 => this%jm_getStartIntermissionPaintable_0()
        call jtemp56%jm_update_0()
        if ((.not. this%jm_isRunningInAnotherThread_0())) then
            return
        end if
        call j_progressCanvas%jm_addNormalPortion_2(j_portion, 'Finishing...')
        if ((this%jm_isMainCanvas_0() .or. (.not. this%jm_isInitialized_0()))) then
            jtemp57 => MainFeatureFactory_jm_getInstance_0()
            if (j_features%jm_isFeature_1(jtemp57%f_LOAD_ONDEMAND)) then
                if (associated(this%jm_getCustomCommandListener_0())) then
                    call j_progressCanvas%jm_end_0()
                end if
            else
                call j_progressCanvas%jm_end_0()
            end if
            call this%jm_setInitialized_1(.true.)
        end if
        if (JR_same(this%jm_getCustomCommandListener_0(), NullCommandListener_jstatic_NULL_COMMAND_LISTENER())) then
            call this%f_logUtil%jm_putF_3('Show Game Paintable in DemoCanvas Thread', this, this%f_BUILD_GAME)
            call this%f_gameCanvasStartListener%jm_showGamePaintable_0()
        else
            call this%f_logUtil%jm_putF_3('No GameCanvasStartListener', this, this%f_BUILD_GAME)
        end if
        call this%f_colorFillPaintable%jm_setBasicColorP_1(this%f_gameLayerManager%jm_getBackgroundBasicColor_0())
        call this%f_gameBehavior%jm_buildGame_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_buildGame2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), pointer :: j_playerGameInput
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp58
    class(StringMaker), pointer :: jtemp59
    class(StringMaker), pointer :: jtemp60
    class(StringMaker), pointer :: jtemp61
    class(StringMaker), pointer :: jtemp62
    class(StringMaker), pointer :: jtemp63
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp60 => StringMaker_jnew_0()
        jtemp59 => jtemp60%jm_append_1(this%f_gameInputStrings%f_ENABLE_PLAYER_GAME_INPUTS)
        jtemp58 => jtemp59%jm_appendint_1(this%f_localPlayerGameInputList%jm_size_0())
        call PreLogUtil_jm_put_3(jtemp58%jm_toString_0(), this, this%f_BUILD_GAME)
        continue
        j_index = (this%f_localPlayerGameInputList%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_playerGameInput => PlayerGameInput_jcast(this%f_localPlayerGameInputList%jm_get_1(j_index))
            jtemp63 => StringMaker_jnew_0()
            jtemp62 => jtemp63%jm_append_1(this%f_gameInputStrings%f_ENABLE_PLAYER_GAME_INPUT)
            jtemp61 => jtemp62%jm_append_1(j_playerGameInput%jm_toString_0())
            call PreLogUtil_jm_put_3(jtemp61%jm_toString_0(), this, this%f_BUILD_GAME)
            call j_playerGameInput%jm_removeNonAIInputGameKeyEvents_0()
            call this%jm_addKeyInputListener_1(j_playerGameInput)
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_addKeyInputListener_1(this, j_playerGameInput)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), target, optional :: j_playerGameInput
    class(GameKeyEventHandler), pointer :: jtemp64
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp64 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp64%jm_addListenerForPlayer_2(j_playerGameInput, j_playerGameInput%jm_getPlayerInputId_0())
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setGameCanvasStartListener_1(this, j_gameCanvasStartListener)
    class(AllBinaryGameCanvas), target :: this
    class(DemoPaintableInterface), target, optional :: j_gameCanvasStartListener
        this%f_gameCanvasStartListener => j_gameCanvasStartListener
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_loadState_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(ABHashtable), pointer :: j_hashtable
    character(len=:), allocatable :: j_levelAsString
    integer(4) :: j_level
    class(GameInfo), pointer :: j_gameInfo
    class(JObject), pointer :: jtemp65
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_LOAD)
        j_hashtable => this%jm_getLoadStateHashtable_0()
        if ((associated(j_hashtable) .and. (j_hashtable%jm_size_0() > 0))) then
            j_levelAsString = j_hashtable%jm_get_1(GameInfo_jstatic_LEVEL_NAME())
            jtemp65 => j_levelAsString
            j_level = jtemp65%jm_intValue_0()
            j_gameInfo => this%f_gameLayerManager%jm_getGameInfo_0()
            call j_gameInfo%jm_setCurrentLevel_1(j_level)
        end if
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getLoadStateHashtable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(ABHashtable), pointer :: jresult
    class(StringMaker), pointer :: jtemp66
    class(StringMaker), pointer :: jtemp67
    class(StringMaker), pointer :: jtemp68
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp68 => StringMaker_jnew_0()
        jtemp67 => jtemp68%jm_append_1(this%f_commonLabels%f_START_LABEL)
        jtemp66 => jtemp67%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp66%jm_toString_0(), this, 'getLoadStateHashtable')
        jresult => this%f_hashtable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(AllBinaryGameCanvas), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(StringMaker), pointer :: jtemp69
    class(StringMaker), pointer :: jtemp70
    class(StringMaker), pointer :: jtemp71
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp71 => StringMaker_jnew_0()
        jtemp70 => jtemp71%jm_append_1(this%f_commonLabels%f_START_LABEL)
        jtemp69 => jtemp70%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp69%jm_toString_0(), this, 'setLoadStateHashtable')
        this%f_hashtable => j_hashtable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_hashtable
    integer(4) :: j_level
    class(GameInfo), pointer :: jtemp72
    class(StringMaker), pointer :: jtemp73
    class(StringMaker), pointer :: jtemp74
    class(StringMaker), pointer :: jtemp75
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_hashtable => this%f_stdUtil%jm_createHashtable_0()
        jtemp72 => this%f_gameLayerManager%jm_getGameInfo_0()
        j_level = jtemp72%jm_getCurrentLevel_0()
        associate (jstatic_N107505 => GameInfo_jstatic_LEVEL_NAME())
        jdiscardRef => j_hashtable%jm_put_2(JR_toString(jstatic_N107505), JR_intString(j_level))
        end associate
        jtemp75 => StringMaker_jnew_0()
        jtemp74 => jtemp75%jm_append_1('End: ')
        jtemp73 => jtemp74%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp73%jm_toString_0(), this, 'getCurrentStateHashtable')
        jresult => j_hashtable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_paintGameOver_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_draw_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_gameLayerManager%jm_getForegroundBasicColor_0())
        call this%f_gameSpecificPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_clear_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_paint_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_baseGameStatistics%jm_nextRefresh_0()
        call this%jm_draw_1(j_graphics)
        call this%f_menuPaintable%jm_paint_1(j_graphics)
        call this%f_progressPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_paintThreed_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_processEndLevelIntermissionGameState_0(this)
    class(AllBinaryGameCanvas), target :: this
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_nonBotPaint_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_endGamePaintable%jm_paint_1(j_graphics)
        call this%f_intermissionPaintable%jm_paint_1(j_graphics)
        call this%jm_paintIntermission_1(j_graphics)
        call this%f_touchPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_paintIntermission_1(this, j_graphics)
    class(AllBinaryGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_keyPressed_1(this, j_keyCode)
    class(AllBinaryGameCanvas), target :: this
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

  recursive subroutine AllBinaryGameCanvas_jm_keyReleased_1(this, j_keyCode)
    class(AllBinaryGameCanvas), target :: this
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

  recursive subroutine AllBinaryGameCanvas_jm_keyRepeated_1(this, j_keyCode)
    class(AllBinaryGameCanvas), target :: this
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

  recursive subroutine AllBinaryGameCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_inputProcessor%jm_keyPressedByDevice_2(j_keyCode, j_deviceId)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_keyRepeatedByDevice_2(this, j_keyCode, j_deviceId)
    class(AllBinaryGameCanvas), target :: this
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
            call this%f_inputProcessor%jm_keyPressedByDevice_2(j_keyCode, j_deviceId)
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_inputProcessor%jm_keyReleasedByDevice_3(this, j_keyCode, j_deviceId)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_handleRawKey_3(this, j_keyCode, j_deviceId, j_repeated)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    continue
  end subroutine

  recursive function AllBinaryGameCanvas_jm_endProgress_1(this, j_isProgress) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_isProgress
    integer(4) :: jresult
    integer(4) :: j_portion
    class(MyCommandsFactory), pointer :: j_myCommandsFactory
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(CommandListener), pointer :: jtemp76
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_portion = 30
        if ((j_isProgress .and. this%jm_isMainCanvas_0())) then
            j_myCommandsFactory => MyCommandsFactory_jm_getInstance_0()
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            call j_progressCanvas%jm_start_0()
            jtemp76 => this%jm_getCustomCommandListener_0()
            call jtemp76%jm_commandAction_2(j_myCommandsFactory%f_SET_DISPLAYABLE, j_progressCanvas)
            j_portion = 4
        end if
        jresult = j_portion
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_processPlayingGame_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(AllBinarySensor), pointer :: jtemp77
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_cheatProcessor%jm_update_0()
        jtemp77 => this%f_sensorGameUpdateProcessor%jm_getInputSensor_0()
        call jtemp77%jm_update_0()
        call this%f_gameInputProcessor%jm_process_0()
        call this%f_gameLayerManager%jm_process_0()
        call this%f_startIntermissionProcessor%jm_process_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_threadInit_0(this)
    class(AllBinaryGameCanvas), target :: this
    continue
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_processGame_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RunnableCanvas%jm_process_0()
        if (AllBinaryMediaManager_jm_update_0()) then
            if ((.not. this%f_primaryPlayerQueue%jm_process_0())) then
                jdiscardBoolean = this%f_secondaryPlayerQueue%jm_process_0()
            end if
        end if
        call this%f_mainStateProcessor%jm_process_0()
        jdiscardInt = this%f_menuInputProcessor%jm_processInputList_0()
        call this%f_endGameProcessor%jm_process_0()
        call this%f_baseGameStatistics%jm_nextFrame_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_notifyDonePainting_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            call this%f_threadObjectUtil%jm_notifyObject_1(this)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_shouldWait_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(Features), pointer :: j_features
    class(OpenGLImageSpecificFactory), pointer :: j_openGLImageSpecificFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        if (AndroidUtil_jm_isAndroid_0()) then
            continue
        else if (j_features%jm_isFeature_1(this%f_openGLFeatureFactory%f_OPENGL_2D)) then
            continue
        else
            if (j_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL)) then
                j_openGLImageSpecificFactory => OpenGLImageSpecificFactory_jm_getInstance_0()
                do while (j_openGLImageSpecificFactory%f_updating)
                    call Thread_jm_sleep_1(this%f_YIELD_SLEEP)
                end do
            end if
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_run_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(GameAdState), pointer :: j_gameAdState
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Game Thread')
            call this%jm_setCurrentThread_0()
            call this%jm_setRunning_1(.true.)
            if (JR_same(this%jm_getCustomCommandListener_0(), NullCommandListener_jstatic_NULL_COMMAND_LISTENER())) then
                call Thread_jm_sleep_1(this%f_YIELD_SLEEP)
            end if
            call this%jm_shouldWait_0()
            call this%jm_threadInit_0()
            if (JR_same(this%jm_getCustomCommandListener_0(), NullCommandListener_jstatic_NULL_COMMAND_LISTENER())) then
                call Thread_jm_sleep_1(this%f_YIELD_SLEEP)
            end if
            call this%jm_open_0()
            j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
            call j_gameAdState%jm_init_0()
            call j_gameAdState%jm_setGameIsReady_1(.true.)
            call this%f_gameBehavior%jm_run_1(this)
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_run2_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(Features), pointer :: j_features
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(OpenGLThreadUtil), pointer :: jtemp78
    class(GraphicsStrings), pointer :: jtemp79
    class(OpenGLThreadUtil), pointer :: jtemp80
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        if ((j_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD) .or. J2MEUtil_jm_isHTML_0())) then
            if (j_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD)) then
                call this%f_logUtil%jm_putF_3(this%f_openGLFeatureFactory%f_OPENGL_AS_GAME_THREAD%jm_getName_0(), this, this%f_commonStrings%f_RUN)
            end if
            if (J2MEUtil_jm_isHTML_0()) then
                jtemp79 => GraphicsStrings_jm_getInstance_0()
                call this%f_logUtil%jm_putF_3(jtemp79%f_HTML, this, this%f_commonStrings%f_RUN)
            end if
            j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
            call j_currentDisplayableFactory%jm_setRunnable_1(this%f_gameRunnable)
            call j_currentDisplayableFactory%jm_setDisplayable_1(this)
            jtemp80 => OpenGLThreadUtil_jm_getInstance_0()
            call jtemp80%jm_onResume_0()
        else if (j_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) then
            call this%f_logUtil%jm_putF_3(this%f_openGLFeatureFactory%f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS%jm_getName_0(), this, this%f_commonStrings%f_RUN)
            jtemp78 => OpenGLThreadUtil_jm_getInstance_0()
            call jtemp78%jm_onResume_0()
            do while (this%jm_isRunning_0())
                call this%jm_run3_0()
            end do
            call this%jm_end_0()
        else
            call this%f_logUtil%jm_putF_3('this thread', this, this%f_commonStrings%f_RUN)
            do while (this%jm_isRunning_0())
                call this%jm_run3_0()
            end do
            call this%jm_end_0()
        end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_run3_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_loopTimeHelper%jm_setStartTime_1(this%f_gameTickTimeDelayHelper%jm_setStartTime_0())
        call this%f_gameTickDisplayInfoSingleton%jm_update_0()
        call this%jm_processGame_0()
        call this%jm_processLoopSleep_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setRunning_1(this, j_running)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_running
    class(Features), pointer :: j_features
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(GameInfo), pointer :: jtemp81
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
            if (j_running) then
                continue
            else
                if ((j_features%jm_isDefault_1(this%f_openGLFeatureFactory%f_OPENGL) .or. SWTUtil_jstatic_isSWT())) then
                    jtemp81 => this%f_gameLayerManager%jm_getGameInfo_0()
                    if ((jtemp81%jm_getGameType_0() /= this%f_gameTypeFactory%f_BOT)) then
                        j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
                        call j_currentDisplayableFactory%jm_clearRunnable_0()
                    end if
                    call this%jm_end_0()
                end if
            end if
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_end_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(StringMaker), pointer :: jtemp82
    class(StringMaker), pointer :: jtemp83
    class(StringMaker), pointer :: jtemp84
    class(CommonSeps), pointer :: jtemp85
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_screenCapture%jm_endRecording_0()
        jtemp85 => CommonSeps_jm_getInstance_0()
        jtemp84 => StringMaker_jnew_0()
        jtemp83 => jtemp84%jm_append_1(this%f_baseGameStatistics%jm_toString_0())
        jtemp82 => jtemp83%jm_append_1(jtemp85%f_NEW_LINE)
        call this%f_baseGameStatistics%jm_add_1(jtemp82%jm_toString_0())
        call this%f_baseGameStatistics%jm_init_0()
        call this%f_gameKeyEventHandler%jm_removeListener_1(this%f_cheatProcessor)
        call this%jm_close_0()
        call this%jm_removeAllGameKeyInputListeners_0()
        call this%jm_endGameThread_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_endGameThread_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(DisplayChangeEventHandler), pointer :: jtemp86
    class(GameLevelDisplayChangeEventListenersFactory), pointer :: jtemp87
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp86 => DisplayChangeEventHandler_jm_getInstance_0()
        call jtemp86%jm_removeListener_1(this)
        jtemp87 => GameLevelDisplayChangeEventListenersFactory_jm_getInstance_0()
        call jtemp87%jm_clear_0()
        j_gameAdState => this%f_gameAdStateFactory%jm_getCurrentInstance_0()
        call j_gameAdState%jm_notPlayingAdState_0()
  end subroutine

  recursive function AllBinaryGameCanvas_jm_createHighScore_1(this, j_score) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    integer(8), value :: j_score
    class(HighScore), pointer :: jresult
    class(GameInfo), pointer :: j_gameInfo
    class(PlayerTypesFactory), pointer :: jtemp88
        j_gameInfo => this%f_gameLayerManager%jm_getGameInfo_0()
        jtemp88 => PlayerTypesFactory_jm_getInstance_0()
        jresult => HighScore_jnew_4(0, 'NONE', GameInfo_jnew_5(j_gameInfo%jm_getGameType_0(), j_gameInfo%jm_getGameMode_0(), jtemp88%f_PLAYER_TYPE_ONE, 0, 0), j_score)
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setHighScore_5(this, j_abeClientInformation, j_name, j_score, j_autoSubmit, j_isLast)
    class(AllBinaryGameCanvas), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=*), intent(in) :: j_name
    integer(8), value :: j_score
    logical, value :: j_autoSubmit
    logical, value :: j_isLast
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameBehavior%jm_setHighScore_6(j_abeClientInformation, this, j_name, j_score, j_autoSubmit, j_isLast)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setHighScore2_5(this, j_abeClientInformation, j_name, j_score, j_autoSubmit, j_isLast)
    class(AllBinaryGameCanvas), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=*), intent(in) :: j_name
    integer(8), value :: j_score
    logical, value :: j_autoSubmit
    logical, value :: j_isLast
    class(HighScore), pointer :: j_highScore
    class(HighScoreTextBox), pointer :: j_textBox
    class(CommandListener), pointer :: jtemp89
    class(GameCommandsFactory), pointer :: jtemp90
    class(SecondaryThreadPool), pointer :: jtemp91
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_highScore => this%jm_createHighScore_1(j_score)
        j_textBox => HighScoreTextBox_jnew_9(this%f_highScoresFactoryInterface, this%f_highScoresHelper, j_abeClientInformation, this%f_gameLayerManager%jm_getGameInfo_0(), this%jm_getCustomCommandListener_0(), j_name, j_highScore, this%f_gameLayerManager%jm_getBackgroundBasicColor_0(), this%f_gameLayerManager%jm_getForegroundBasicColor_0())
        if (j_isLast) then
            jtemp90 => GameCommandsFactory_jm_getInstance_0()
            jtemp89 => this%jm_getCustomCommandListener_0()
            call jtemp89%jm_commandAction_2(jtemp90%f_SET_MENU_DISPLAYABLE, j_textBox)
        end if
        if (j_autoSubmit) then
            jtemp91 => SecondaryThreadPool_jm_getInstance_0()
            call jtemp91%jm_runTask_1(SaveHighScoreRunnable_jnew_2(j_isLast, j_textBox))
        end if
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getGameStateTimeHelper_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(TimeDelayHelper), pointer :: jresult
        jresult => this%f_gameStateTimeHelper
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setInitialized_1(this, j_initialized)
    class(AllBinaryGameCanvas), target :: this
    logical, value :: j_initialized
        this%f_initialized = j_initialized
  end subroutine

  recursive function AllBinaryGameCanvas_jm_isInitialized_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getSourceId_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    integer(4) :: jresult
        jresult = AllBinaryGameCanvas_jstatic_id()
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setProgressPaintable_1(this, j_paintable)
    class(AllBinaryGameCanvas), target :: this
    class(PaintableInterface), target, optional :: j_paintable
        this%f_progressPaintable => j_paintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getStartIntermissionInterface_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(IntermissionInterface), pointer :: jresult
        jresult => this%f_startIntermissionInterface
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getEndLevelIntermissionInterface_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(IntermissionInterface), pointer :: jresult
        jresult => this%f_endLevelIntermissionInterface
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setTouchPaintableP_1(this, j_paintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_paintable
        this%f_touchPaintable => j_paintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getTouchPaintableP_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_touchPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setEndGamePaintable_1(this, j_endGamePaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_endGamePaintable
        this%f_endGamePaintable => j_endGamePaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getEndGamePaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_endGamePaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setIntermissionPaintable_1(this, j_intermissionPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_intermissionPaintable
        this%f_intermissionPaintable => j_intermissionPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getIntermissionPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_intermissionPaintable
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getEndGameInfoP_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(EndGameInfo), pointer :: jresult
        jresult => this%f_endGameInfo
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setHighScoresPaintable_1(this, j_highScoresPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_highScoresPaintable
        this%f_highScoresPaintable => j_highScoresPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getHighScoresPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_highScoresPaintable
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getRealHighScoresPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(HighScoresPaintable), pointer :: jresult
        jresult => this%f_realHighScoresPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_clearPlayerGameInputList_0(this)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), pointer :: j_playerGameInput
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = (this%f_localPlayerGameInputList%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_playerGameInput => PlayerGameInput_jcast(this%f_localPlayerGameInputList%jm_get_1(j_index))
            call this%f_gameKeyEventHandler%jm_removeListener_1(j_playerGameInput)
            j_index = j_index - 1
        end do
        call this%f_localPlayerGameInputList%jm_clear_0()
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_addPlayerGameInput_1(this, j_playerGameInput)
    class(AllBinaryGameCanvas), target :: this
    class(PlayerGameInput), target, optional :: j_playerGameInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_localPlayerGameInputList%jm_add_1(j_playerGameInput)
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setMenuInputProcessor_1(this, j_menuInputProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(BasicMenuInputProcessor), target, optional :: j_menuInputProcessor
        this%f_menuInputProcessor => j_menuInputProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getMenuInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(BasicMenuInputProcessor), pointer :: jresult
        jresult => this%f_menuInputProcessor
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getMenuForm_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(ScrollSelectionForm), pointer :: jresult
        jresult => this%f_menuForm
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setMenuForm_1(this, j_menuForm)
    class(AllBinaryGameCanvas), target :: this
    class(ScrollSelectionForm), target, optional :: j_menuForm
        this%f_menuForm => j_menuForm
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getStartLevel_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_startLevel
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setStartLevel_1(this, j_startLevel)
    class(AllBinaryGameCanvas), target :: this
    integer(4), value :: j_startLevel
        this%f_startLevel = j_startLevel
  end subroutine

  recursive subroutine AllBinaryGameCanvas_jm_setTouchButtonsPaintable_1(this, j_touchButtonsPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_touchButtonsPaintable
        this%f_touchButtonsPaintable => j_touchButtonsPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getTouchButtonsPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_touchButtonsPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setGameInputProcessor_1(this, j_gameInputProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), target, optional :: j_gameInputProcessor
        this%f_gameInputProcessor => j_gameInputProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getGameInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), pointer :: jresult
        jresult => this%f_gameInputProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setEndGameProcessor_1(this, j_endGameProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), target, optional :: j_endGameProcessor
        this%f_endGameProcessor => j_endGameProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getEndGameProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), pointer :: jresult
        jresult => this%f_endGameProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setEndGameStatePaintable_1(this, j_endGameStatePaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_endGameStatePaintable
        this%f_endGameStatePaintable => j_endGameStatePaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getEndGameStatePaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_endGameStatePaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setNonBotPaintableP_1(this, j_nonBotPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_nonBotPaintable
        this%f_nonBotPaintable => j_nonBotPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getNonBotPaintableP_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_nonBotPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setStartIntermissionPaintable_1(this, j_startIntermissionPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(InitUpdatePaintable), target, optional :: j_startIntermissionPaintable
        this%f_startIntermissionPaintable => j_startIntermissionPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getStartIntermissionPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(InitUpdatePaintable), pointer :: jresult
        jresult => this%f_startIntermissionPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setMainStateProcessor_1(this, j_mainStateProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), target, optional :: j_mainStateProcessor
        this%f_mainStateProcessor => j_mainStateProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getMainStateProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), pointer :: jresult
        jresult => this%f_mainStateProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setProcessGameProcessor_1(this, j_processGameProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), target, optional :: j_processGameProcessor
        this%f_processGameProcessor => j_processGameProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getProcessGameProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Processor), pointer :: jresult
        jresult => this%f_processGameProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setOpenMenuPaintable_1(this, j_openMenuPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_openMenuPaintable
        this%f_openMenuPaintable => j_openMenuPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getOpenMenuPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_openMenuPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setPopupMenuInputProcessor_1(this, j_popupMenuInputProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(BasicMenuInputProcessor), target, optional :: j_popupMenuInputProcessor
        this%f_popupMenuInputProcessor => j_popupMenuInputProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getPopupMenuInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(BasicMenuInputProcessor), pointer :: jresult
        jresult => this%f_popupMenuInputProcessor
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getSensorGameUpdateProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(SensorGameUpdateProcessor), pointer :: jresult
        jresult => this%f_sensorGameUpdateProcessor
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getRawGameInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(InputProcessor), pointer :: jresult
        jresult => this%f_rawGameInputProcessor
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getRawInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(InputProcessor), pointer :: jresult
        jresult => this%f_rawInputProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setInputProcessor_1(this, j_inputProcessor)
    class(AllBinaryGameCanvas), target :: this
    class(InputProcessor), target, optional :: j_inputProcessor
        this%f_inputProcessor => j_inputProcessor
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getInputProcessor_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(InputProcessor), pointer :: jresult
        jresult => this%f_inputProcessor
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setMenuPaintable_1(this, j_menuPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_menuPaintable
        this%f_menuPaintable => j_menuPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getMenuPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_menuPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setFormPaintable_1(this, j_formPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_formPaintable
        this%f_formPaintable => j_formPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getFormPaintable_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_formPaintable
        return
  end function

  recursive subroutine AllBinaryGameCanvas_jm_setGameSpecificPaintableP_1(this, j_gameSpecificPaintable)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), target, optional :: j_gameSpecificPaintable
        this%f_gameSpecificPaintable => j_gameSpecificPaintable
  end subroutine

  recursive function AllBinaryGameCanvas_jm_getGameSpecificPaintableP_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    class(Paintable), pointer :: jresult
        jresult => this%f_gameSpecificPaintable
        return
  end function

  recursive function AllBinaryGameCanvas_jm_isSingleThread_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
    class(OpenGLFeatureUtil), pointer :: jtemp92
        jtemp92 => OpenGLFeatureUtil_jm_getInstance_0()
        jresult = (jtemp92%jm_isAnyThreed_0() .or. SWTUtil_jstatic_isSWT())
        return
  end function

  recursive function AllBinaryGameCanvas_jm_isRunningInAnotherThread_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
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

  recursive function AllBinaryGameCanvas_jm_getType_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    integer(4) :: jresult
        jresult = AllBinaryGameCanvas_jstatic_TYPE()
        return
  end function

  recursive function AllBinaryGameCanvas_jm_getTitle_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%RunnableCanvas%jm_getTitle_0()
        return
  end function

  recursive function AllBinaryGameCanvas_jm_isPaused_0(this) result(jresult)
    class(AllBinaryGameCanvas), target :: this
    logical :: jresult
        jresult = this%RunnableCanvas%jm_isPaused_0()
        return
  end function
end module AllBinaryGameCanvas_m

