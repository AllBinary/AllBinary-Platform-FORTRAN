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
! package org.allbinary.graphics.canvas.transition.progress
module ProgressCanvas_m
  use JR_m
  use NullCanvas_m
  use NullCommandListener_m
  use Processor_m
  use RunnableCanvas_m
  use GameCommandsFactory_m
  use BasicColor_m
  use CanvasStrings_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use ABCustomGaugeItem_m
  use NullPaintable_m
  use Paintable_m
  use PaintableInterface_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryMidlet_m
  use PathFindingThreadPool_m
  use ThreadPool_m
  use ProgressPaintable_m
  use ProgressEndListener_m
  implicit none

  type, extends(RunnableCanvas) :: ProgressCanvas
    logical :: f_hasPainted = .false.
    class(BasicColor), pointer :: f_backgroundBasicColor => null()
    class(Paintable), pointer :: f_GAUGE_PAINTABLE => null()
    real(4) :: f_maxValue = 0.0
    class(ABCustomGaugeItem), pointer :: f_gauge => null()
    character(len=:), allocatable :: f_TEXT_u4
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(AllBinaryMidlet), pointer :: f_allbinaryMidlet => null()
    real(4) :: f_value = 0.0
    character(len=:), allocatable :: f_text_u0
    logical :: f_background = .false.
    class(PaintableInterface), pointer :: f_paintable => null()
    logical :: f_inProgress = .false.
    class(Processor), pointer :: f_IN_GAME_PROCESSOR => null()
    class(Processor), pointer :: f_inGameProcessor => null()
    class(ProgressEndListener), pointer :: f_progressEndListener => null()
    character(len=:), allocatable :: f_backgroundLabel
    character(len=:), allocatable :: f_START_BACKGROUND
    character(len=:), allocatable :: f_ADD_PORTION
    character(len=:), allocatable :: f_ADD_EARLY_PORTION
  contains
    procedure :: jm_updateMeasurement_1 => ProgressCanvas_jm_updateMeasurement_1
    procedure :: jm_init_1 => ProgressCanvas_jm_init_1
    procedure :: jm_update_1 => ProgressCanvas_jm_update_1
    procedure :: jm_initCommands_1 => ProgressCanvas_jm_initCommands_1
    procedure :: jm_getMaxValue_0 => ProgressCanvas_jm_getMaxValue_0
    procedure :: jm_start_0 => ProgressCanvas_jm_start_0
    procedure :: jm_startBackground_1 => ProgressCanvas_jm_startBackground_1
    procedure :: jm_endActual_0 => ProgressCanvas_jm_endActual_0
    procedure :: jm_inGame_0 => ProgressCanvas_jm_inGame_0
    procedure :: jm_end_0 => ProgressCanvas_jm_end_0
    procedure :: jm_endFromInitialLazyLoadingComplete_0 => ProgressCanvas_jm_endFromInitialLazyLoadingComplete_0
    procedure :: jm_isInGame_0 => ProgressCanvas_jm_isInGame_0
    procedure :: jm_endIfPaintedSinceStart_0 => ProgressCanvas_jm_endIfPaintedSinceStart_0
    procedure :: jm_addEarlyPortion_3 => ProgressCanvas_jm_addEarlyPortion_3
    procedure :: jm_addPortion_3 => ProgressCanvas_jm_addPortion_3
    procedure :: jm_addNormalPortion_2 => ProgressCanvas_jm_addNormalPortion_2
    procedure :: jm_setValue_1 => ProgressCanvas_jm_setValue_1
    procedure :: jm_paint_1 => ProgressCanvas_jm_paint_1
    procedure :: jm_paint2_1 => ProgressCanvas_jm_paint2_1
    procedure :: jm_paintThreed_1 => ProgressCanvas_jm_paintThreed_1
    procedure :: jm_getValue_0 => ProgressCanvas_jm_getValue_0
    procedure :: jm_setText_1 => ProgressCanvas_jm_setText_1
    procedure :: jm_getText_0 => ProgressCanvas_jm_getText_0
    procedure :: jm_setBackground_1 => ProgressCanvas_jm_setBackground_1
    procedure :: jm_isBackground_0 => ProgressCanvas_jm_isBackground_0
  end type

  ! ProgressCanvas used as a PaintableInterface
  type, extends(PaintableInterface) :: ProgressCanvas_jas_PaintableInterface
    class(ProgressCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_paint_1 => ProgressCanvas_jas_PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => ProgressCanvas_jas_PaintableInterface_jm_paintThreed_1
  end type

  ! ProgressCanvas used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: ProgressCanvas_jas_UpdateMyFontInterface
    class(ProgressCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => ProgressCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function ProgressCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProgressCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProgressCanvas)
      jresult => object
    end select
  end function

  function ProgressCanvas_jas_PaintableInterface_jnew(object) result(jresult)
    class(ProgressCanvas), target :: object
    class(ProgressCanvas_jas_PaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ProgressCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine ProgressCanvas_jas_PaintableInterface_jm_paint_1(this, j_graphics)
    class(ProgressCanvas_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine ProgressCanvas_jas_PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(ProgressCanvas_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paintThreed_1(j_graphics)
  end subroutine

  function ProgressCanvas_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(ProgressCanvas), target :: object
    class(ProgressCanvas_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ProgressCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine ProgressCanvas_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(ProgressCanvas_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function ProgressCanvas_jnew_3(j_title, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ProgressCanvas), pointer :: this
    class(CanvasStrings), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'ProgressCanvas'
    this%f_TEXT_u4 = ''
    this%f_text_u0 = ''
    this%f_backgroundLabel = ''
    this%f_START_BACKGROUND = ''
    this%f_ADD_PORTION = ''
    this%f_ADD_EARLY_PORTION = ''
    
    
    this%f_GAUGE_PAINTABLE => ProgressPaintable_jnew_1(this)
    this%f_maxValue = 100.0
    
    this%f_TEXT_u4 = this%f_commonStrings%f_LOADING
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    this%f_allbinaryMidlet => AllBinaryMidlet_jm_getNullInstance_0()
    
    this%f_text_u0 = this%f_TEXT_u4
    this%f_background = .true.
    this%f_paintable => this%f_GAUGE_PAINTABLE
    this%f_inProgress = .false.
    this%f_IN_GAME_PROCESSOR => Processor_jnew_0()
    this%f_inGameProcessor => Processor_jm_getInstance_0()
    this%f_progressEndListener => ProgressEndListener_jstatic_instance()
    this%f_backgroundLabel = 'Background AI Game Loading...'
    this%f_START_BACKGROUND = 'startBackground'
    this%f_ADD_PORTION = 'addPortion'
    this%f_ADD_EARLY_PORTION = 'addEarlyPortion'
        jtemp1 => CanvasStrings_jm_getInstance_0()
        continue ! super()
        this%f_backgroundBasicColor => j_backgroundBasicColor
        jtemp2 => StringUtil_jm_getInstance_0()
        this%f_gauge => ABCustomGaugeItem_jnew_5(jtemp2%f_EMPTY_STRING, JR_d2i(real(this%f_maxValue, 8)), 0, j_backgroundBasicColor, j_foregroundBasicColor)
  end function

  recursive subroutine ProgressCanvas_jm_updateMeasurement_1(this, j_graphics)
    class(ProgressCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        call this%f_gauge%jm_setHeight_1((j_font%jm_getHeight_0() + 2))
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine ProgressCanvas_jm_init_1(this, j_gameMidlet)
    class(ProgressCanvas), target :: this
    class(AllBinaryMidlet), target, optional :: j_gameMidlet
        this%f_allbinaryMidlet => j_gameMidlet
  end subroutine

  recursive subroutine ProgressCanvas_jm_update_1(this, j_graphics)
    class(ProgressCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine ProgressCanvas_jm_initCommands_1(this, j_cmdListener)
    class(ProgressCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    continue
  end subroutine

  recursive function ProgressCanvas_jm_getMaxValue_0(this) result(jresult)
    class(ProgressCanvas), target :: this
    real(4) :: jresult
        jresult = this%f_maxValue
        return
  end function

  recursive subroutine ProgressCanvas_jm_start_0(this)
    class(ProgressCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_START_METHOD_NAME)
        call this%jm_setBackground_1(.true.)
        call this%f_gauge%jm_setHeight_1(30)
        call this%f_gauge%jm_setLabel_1(this%f_commonStrings%f_PLEASE_WAIT)
        call this%jm_setText_1(this%f_TEXT_u4)
        call this%jm_setValue_1(0)
        this%f_inGameProcessor => Processor_jm_getInstance_0()
        this%f_paintable => this%f_GAUGE_PAINTABLE
        this%f_inProgress = .true.
  end subroutine

  recursive subroutine ProgressCanvas_jm_startBackground_1(this, j_background)
    class(ProgressCanvas), target :: this
    logical, value :: j_background
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_START_BACKGROUND)
        call this%jm_setBackground_1(j_background)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
        call this%f_gauge%jm_setLabel_1(this%f_backgroundLabel)
        call this%jm_setText_1(this%f_TEXT_u4)
        call this%jm_setValue_1(0)
        this%f_inGameProcessor => Processor_jm_getInstance_0()
        this%f_paintable => this%f_GAUGE_PAINTABLE
  end subroutine

  recursive subroutine ProgressCanvas_jm_endActual_0(this)
    class(ProgressCanvas), target :: this
    class(GameCommandsFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => GameCommandsFactory_jm_getInstance_0()
        call this%f_allbinaryMidlet%jm_commandAction_2(jtemp3%f_SHOW_GAME_CANVAS, NullCanvas_jstatic_NULL_CANVAS())
        this%f_inProgress = .false.
        call this%jm_inGame_0()
  end subroutine

  recursive subroutine ProgressCanvas_jm_inGame_0(this)
    class(ProgressCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_progressEndListener%jm_onEndEvent_0()
        this%f_inGameProcessor => this%f_IN_GAME_PROCESSOR
  end subroutine

  recursive subroutine ProgressCanvas_jm_end_0(this)
    class(ProgressCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_END_METHOD_NAME)
        call this%f_gauge%jm_setValue_1(this%jm_getMaxValue_0())
        call this%jm_endActual_0()
        this%f_paintable => NullPaintable_jm_getInstance_0()
  end subroutine

  recursive subroutine ProgressCanvas_jm_endFromInitialLazyLoadingComplete_0(this)
    class(ProgressCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_progressEndListener%jm_onEndEvent_0()
        call this%f_gauge%jm_setValue_1(this%jm_getMaxValue_0())
        this%f_inGameProcessor => this%f_IN_GAME_PROCESSOR
  end subroutine

  recursive function ProgressCanvas_jm_isInGame_0(this) result(jresult)
    class(ProgressCanvas), target :: this
    logical :: jresult
        if (JR_same(this%f_inGameProcessor, this%f_IN_GAME_PROCESSOR)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive subroutine ProgressCanvas_jm_endIfPaintedSinceStart_0(this)
    class(ProgressCanvas), target :: this
    continue
  end subroutine

  recursive subroutine ProgressCanvas_jm_addEarlyPortion_3(this, j_value, j_text, j_index)
    class(ProgressCanvas), target :: this
    integer(4), value :: j_value
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_index
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(Integer), pointer :: jtemp7
    class(SmallIntegerSingletonFactory), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp8 => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp7 => jtemp8%jm_getAt_1(j_index)
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(j_text)
        jtemp4 => jtemp5%jm_append_1(jtemp7%jm_toString_0())
        call this%jm_setText_1(jtemp4%jm_toString_0())
        call this%f_gauge%jm_setValue_1((this%f_gauge%jm_getValue_0() + (this%jm_getMaxValue_0() / real(j_value, 4))))
  end subroutine

  recursive subroutine ProgressCanvas_jm_addPortion_3(this, j_value, j_text, j_index)
    class(ProgressCanvas), target :: this
    integer(4), value :: j_value
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_index
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(Integer), pointer :: jtemp12
    class(SmallIntegerSingletonFactory), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp12 => jtemp13%jm_getAt_1(j_index)
        jtemp11 => StringMaker_jnew_0()
        jtemp10 => jtemp11%jm_append_1(j_text)
        jtemp9 => jtemp10%jm_append_1(jtemp12%jm_toString_0())
        call this%jm_setText_1(jtemp9%jm_toString_0())
        call PreLogUtil_jm_put_3(this%f_text_u0, this, this%f_ADD_PORTION)
        call this%f_gauge%jm_setValue_1((this%f_gauge%jm_getValue_0() + (this%jm_getMaxValue_0() / real(j_value, 4))))
  end subroutine

  recursive subroutine ProgressCanvas_jm_addNormalPortion_2(this, j_value, j_text)
    class(ProgressCanvas), target :: this
    integer(4), value :: j_value
    character(len=*), intent(in) :: j_text
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_strEquals(this%f_text_u0, j_text))) then
            call PreLogUtil_jm_put_3(j_text, this, this%f_ADD_PORTION)
        end if
        call this%jm_setText_1(j_text)
        call this%f_gauge%jm_setValue_1((this%f_gauge%jm_getValue_0() + (this%jm_getMaxValue_0() / real(j_value, 4))))
  end subroutine

  recursive subroutine ProgressCanvas_jm_setValue_1(this, j_value)
    class(ProgressCanvas), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_value = real(j_value, 4)
        call this%f_gauge%jm_setValue_1(real(j_value, 4))
  end subroutine

  recursive subroutine ProgressCanvas_jm_paint_1(this, j_graphics)
    class(ProgressCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_paintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine ProgressCanvas_jm_paint2_1(this, j_graphics)
    class(ProgressCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call j_graphics%jm_setColor_1(this%f_backgroundBasicColor%jm_intValue_0())
        call j_graphics%jm_fillRect_4(0, 0, this%f_displayInfo%jm_getLastWidth_0(), this%f_displayInfo%jm_getLastHeight_0())
        call this%f_gauge%jm_paintXY_3(j_graphics, 0, 0)
        this%f_hasPainted = .true.
  end subroutine

  recursive subroutine ProgressCanvas_jm_paintThreed_1(this, j_graphics)
    class(ProgressCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function ProgressCanvas_jm_getValue_0(this) result(jresult)
    class(ProgressCanvas), target :: this
    real(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive subroutine ProgressCanvas_jm_setText_1(this, j_text)
    class(ProgressCanvas), target :: this
    character(len=*), intent(in) :: j_text
        this%f_text_u0 = j_text
  end subroutine

  recursive function ProgressCanvas_jm_getText_0(this) result(jresult)
    class(ProgressCanvas), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_text_u0
        return
  end function

  recursive subroutine ProgressCanvas_jm_setBackground_1(this, j_background)
    class(ProgressCanvas), target :: this
    logical, value :: j_background
        this%f_background = j_background
  end subroutine

  recursive function ProgressCanvas_jm_isBackground_0(this) result(jresult)
    class(ProgressCanvas), target :: this
    logical :: jresult
        jresult = this%f_background
        return
  end function
end module ProgressCanvas_m

