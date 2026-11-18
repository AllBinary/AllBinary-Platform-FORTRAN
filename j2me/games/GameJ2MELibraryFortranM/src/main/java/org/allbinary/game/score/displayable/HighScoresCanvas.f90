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
! package org.allbinary.game.score.displayable
module HighScoresCanvas_m
  use JR_m
  use GameInfo_m
  use GameCommandsFactory_m
  use GameCommandCanvas_m
  use AllBinaryGameLayerManager_m
  use ColorFillBasePaintable_m
  use ColorFillPaintableFactory_m
  use HighScoreCommandsFactory_m
  use HighScores_m
  use HighScoresCanvasInputProcessor_m
  use HighScoresCanvasInputProcessorFactoryInterface_m
  use HighScoresFactoryInterface_m
  use HighScoresHelperBase_m
  use HighScoresPaintable_m
  use HighScoresResultsListener_m
  use NoHighScoresFactory_m
  use NullHighScoresSingletonFactory_m
  use BasicColorFactory_m
  use NullPaintable_m
  use Paintable_m
  use SimpleTextPaintable_m
  use StringMaker_m
  use SecondaryThreadPool_m
  use HighScoreRunnable_m
  implicit none

  type, extends(GameCommandCanvas) :: HighScoresCanvas
    class(Paintable), pointer :: f_paintable => null()
    class(HighScoreCommandsFactory), pointer :: f_highScoreCommandsFactory => null()
    class(SimpleTextPaintable), pointer :: f_waitPaintable => null()
    class(HighScoresPaintable), pointer :: f_highScoresPaintable => null()
    class(HighScoresFactoryInterface), pointer :: f_highScoresFactoryInterface => null()
    class(ColorFillBasePaintable), pointer :: f_colorFillPaintable => null()
    class(HighScoresHelperBase), pointer :: f_highScoresHelper => null()
    class(GameInfo), pointer :: f_gameInfo => null()
    class(HighScoresCanvasInputProcessor), pointer :: f_highScoresCanvasInputProcessor => null()
    class(Command), pointer :: f_currentCommand => null()
    logical :: f_hasPainted = .false.
  contains
    procedure :: jm_initCommands_1 => HighScoresCanvas_jm_initCommands_1
    procedure :: jm_open_0 => HighScoresCanvas_jm_open_0
    procedure :: jm_close_0 => HighScoresCanvas_jm_close_0
    procedure :: jm_paint_1 => HighScoresCanvas_jm_paint_1
    procedure :: jm_executeUpdate_0 => HighScoresCanvas_jm_executeUpdate_0
    procedure :: jm_getHighScoresPaintable_0 => HighScoresCanvas_jm_getHighScoresPaintable_0
    procedure :: jm_setHighScoresArray_1 => HighScoresCanvas_jm_setHighScoresArray_1
    procedure :: jm_updateCommand_1 => HighScoresCanvas_jm_updateCommand_1
    procedure :: jm_getGameInfo_0 => HighScoresCanvas_jm_getGameInfo_0
    procedure :: jm_setPaintable_1 => HighScoresCanvas_jm_setPaintable_1
  end type

  ! HighScoresCanvas used as a HighScoresResultsListener
  type, extends(HighScoresResultsListener) :: HighScoresCanvas_jas_HighScoresResultsListener
    class(HighScoresCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_setHighScoresArray_1 => HighScoresCanvas_jas_HighScoresResultsListener_jm_setHighScoresArray_1
  end type

  character(len=:), allocatable, save :: HighScoresCanvas_jcell_NAME
  logical, save :: HighScoresCanvas_jset_NAME = .false.

contains

  function HighScoresCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvas)
      jresult => object
    end select
  end function

  function HighScoresCanvas_jas_HighScoresResultsListener_jnew(object) result(jresult)
    class(HighScoresCanvas), target :: object
    class(HighScoresCanvas_jas_HighScoresResultsListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HighScoresCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine HighScoresCanvas_jas_HighScoresResultsListener_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoresCanvas_jas_HighScoresResultsListener), target :: this
    type(JRef) :: j_highScoresArrayP(:)
    call this%jtarget%jm_setHighScoresArray_1(j_highScoresArrayP)
  end subroutine

  function HighScoresCanvas_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. HighScoresCanvas_jset_NAME) then
      HighScoresCanvas_jset_NAME = .true.
      HighScoresCanvas_jcell_NAME = 'HighScoresCanvas'
    end if
    jresult = HighScoresCanvas_jcell_NAME
  end function

  subroutine HighScoresCanvas_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    HighScoresCanvas_jset_NAME = .true.
    HighScoresCanvas_jcell_NAME = jvalue
  end subroutine

  recursive function HighScoresCanvas_jnew_6(j_commandListener, j_allBinaryGameLayerManager, j_gameInfo, j_paintable, j_highScoresFactoryInterface, j_highScoresCanvasInputProcessorFactoryInterface) result(this)
    class(CommandListener), target, optional :: j_commandListener
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresPaintable), target, optional :: j_paintable
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(HighScoresCanvasInputProcessorFactoryInterface), target, optional :: j_highScoresCanvasInputProcessorFactoryInterface
    class(HighScoresCanvas), pointer :: this
    class(HighScoresPaintable), pointer :: jtemp2
    class(ColorFillPaintableFactory), pointer :: jtemp3
    class(JObject), pointer :: jtemp4
    class(NoHighScoresFactory), pointer :: jtemp5
    class(SecondaryThreadPool), pointer :: jtemp6
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HighScoresCanvas'
    this%f_paintable => NullPaintable_jm_getInstance_0()
    this%f_highScoreCommandsFactory => HighScoreCommandsFactory_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_waitPaintable => SimpleTextPaintable_jnew_2(this%f_commonStrings%f_PLEASE_WAIT_FOR_SERVER, jtemp1%f_WHITE)
    
    
    
    this%f_highScoresHelper => HighScoresHelperBase_jnew_0()
    
    
    this%f_currentCommand => Command_jcast(this%f_highScoreCommandsFactory%f_HIGH_SCORE_COMMANDS((0) + 1)%v)
    this%f_hasPainted = .false.
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_highScoresPaintable => j_paintable
        this%f_highScoresFactoryInterface => j_highScoresFactoryInterface
        this%f_highScoresCanvasInputProcessor => j_highScoresCanvasInputProcessorFactoryInterface%jm_getInstance_1(this)
        this%f_gameInfo => j_gameInfo
        call this%f_waitPaintable%jm_setBasicColorP_1(j_allBinaryGameLayerManager%jm_getForegroundBasicColor_0())
        jtemp2 => this%jm_getHighScoresPaintable_0()
        call jtemp2%jm_setBasicColorP_1(j_allBinaryGameLayerManager%jm_getForegroundBasicColor_0())
        jtemp3 => ColorFillPaintableFactory_jm_getInstance_0()
        this%f_colorFillPaintable => jtemp3%jm_getInstance_2(j_allBinaryGameLayerManager%jm_getBackgroundBasicColor_0(), .false.)
        jtemp5 => NoHighScoresFactory_jm_getInstance_0()
        jtemp4 => this%f_highScoresHelper%jm_getHighScoresArray_0()
        if ((size(jtemp4, 1) == size(jtemp5%f_NO_HIGH_SCORES, 1))) then
            call this%jm_setPaintable_1(this%f_waitPaintable)
        else
            call this%f_logUtil%jm_putF_3('Show HighScores that are already loaded', this, this%f_commonStrings%f_CONSTRUCTOR)
            call this%jm_updateCommand_1(this%f_currentCommand)
            call this%jm_setPaintable_1(this%jm_getHighScoresPaintable_0())
        end if
        jtemp6 => SecondaryThreadPool_jm_getInstance_0()
        call jtemp6%jm_runTask_1(HighScoreRunnable_jnew_1(this))
  end function

  recursive subroutine HighScoresCanvas_jm_initCommands_1(this, j_cmdListener)
    class(HighScoresCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        jtemp7 => GameCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp7%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine HighScoresCanvas_jm_open_0(this)
    class(HighScoresCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%GameCommandCanvas%jm_open_0()
        call this%f_highScoresCanvasInputProcessor%jm_open_0()
  end subroutine

  recursive subroutine HighScoresCanvas_jm_close_0(this)
    class(HighScoresCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%GameCommandCanvas%jm_close_0()
        call this%f_highScoresCanvasInputProcessor%jm_close_0()
  end subroutine

  recursive subroutine HighScoresCanvas_jm_paint_1(this, j_graphics)
    class(HighScoresCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
        call this%f_paintable%jm_paint_1(j_graphics)
        if ((.not. JR_same(this%f_waitPaintable, this%f_paintable))) then
            call this%f_highScoresCanvasInputProcessor%jm_paint_1(j_graphics)
        end if
        call this%GameCommandCanvas%jm_paint_1(j_graphics)
        this%f_hasPainted = .true.
  end subroutine

  recursive subroutine HighScoresCanvas_jm_executeUpdate_0(this)
    class(HighScoresCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_highScoresFactoryInterface%jm_fetchHighScores_2(this%jm_getGameInfo_0(), HighScoresCanvas_jas_HighScoresResultsListener_jnew(this))
  end subroutine

  recursive function HighScoresCanvas_jm_getHighScoresPaintable_0(this) result(jresult)
    class(HighScoresCanvas), target :: this
    class(HighScoresPaintable), pointer :: jresult
        jresult => this%f_highScoresPaintable
        return
  end function

  recursive subroutine HighScoresCanvas_jm_setHighScoresArray_1(this, j_highScoresArray)
    class(HighScoresCanvas), target :: this
    type(JRef) :: j_highScoresArray(:)
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (.true.) then
                jtemp10 => StringMaker_jnew_0()
                jtemp9 => jtemp10%jm_append_1(this%f_commonStrings%f_START)
                jtemp8 => jtemp9%jm_appendint_1(size(j_highScoresArray, 1))
                call this%f_logUtil%jm_putF_3(jtemp8%jm_toString_0(), this, 'setHighScoresArray')
            else
                call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'setHighScoresArray')
            end if
            call this%f_highScoresHelper%jm_setHighScoresArray_1(j_highScoresArray)
            call this%jm_updateCommand_1(this%f_currentCommand)
            call this%jm_setPaintable_1(this%jm_getHighScoresPaintable_0())
  end subroutine

  recursive subroutine HighScoresCanvas_jm_updateCommand_1(this, j_command)
    class(HighScoresCanvas), target :: this
    class(Command), target, optional :: j_command
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    integer(4) :: j_index
    integer(4) :: j_nextIndex
    type(JRef), allocatable :: j_highScoresArray(:)
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(HighScoresPaintable), pointer :: jtemp14
    class(HighScoresPaintable), pointer :: jtemp15
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => StringMaker_jnew_0()
        jtemp12 => jtemp13%jm_append_1(this%f_commonStrings%f_START)
        jtemp11 => jtemp12%jm_append_1(JR_toString(this%f_stringUtil))
        call this%f_logUtil%jm_putF_3(jtemp11%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        if (this%f_highScoreCommandsFactory%jm_isHighScoreCommand_1(j_command)) then
            j_index = this%f_highScoreCommandsFactory%jm_getIndex_1(j_command)
            j_nextIndex = (j_index + 1)
            j_highScoresArray = this%f_highScoresHelper%jm_getHighScoresArray_0()
            if ((j_nextIndex >= size(j_highScoresArray, 1))) then
                j_nextIndex = 0
            end if
            if ((size(j_highScoresArray, 1) > 0)) then
                jtemp15 => this%jm_getHighScoresPaintable_0()
                call jtemp15%jm_setHighScores_1(HighScores_jcast(j_highScoresArray((j_index) + 1)%v))
            else
                jtemp14 => this%jm_getHighScoresPaintable_0()
                call jtemp14%jm_setHighScores_1(NullHighScoresSingletonFactory_jm_getInstance_0())
            end if
            if ((j_index /= j_nextIndex)) then
                call this%jm_removeAllCommands_0()
                call this%jm_addCommand_1(j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS)
                call this%jm_addCommand_1(Command_jcast(this%f_highScoreCommandsFactory%f_HIGH_SCORE_COMMANDS((j_nextIndex) + 1)%v))
            end if
        end if
        this%f_currentCommand => j_command
        call this%jm_close_0()
        call this%GameCommandCanvas%jm_initMenu_0()
        call this%jm_open_0()
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive function HighScoresCanvas_jm_getGameInfo_0(this) result(jresult)
    class(HighScoresCanvas), target :: this
    class(GameInfo), pointer :: jresult
        jresult => this%f_gameInfo
        return
  end function

  recursive subroutine HighScoresCanvas_jm_setPaintable_1(this, j_paintable)
    class(HighScoresCanvas), target :: this
    class(Paintable), target, optional :: j_paintable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_paintable => j_paintable
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine
end module HighScoresCanvas_m

