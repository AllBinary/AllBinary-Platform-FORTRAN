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
! package org.allbinary.input.motion.button
module TouchButtonsPaintableComposite_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use CompleteMotionGestureInputEventHandler_m
  use CompleteMotionGestureInputEventListenerInterface_m
  use GameKey_m
  use InputMappingInterface_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use BasicColor_m
  use ProcessPaintable_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use ForcedLogUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonStrings_m
  use TimeDelayHelper_m
  use TouchButtonsMappingPaintable_m
  implicit none

  type, extends(ProcessPaintable) :: TouchButtonsPaintableComposite
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(InputMappingInterface), pointer :: f_inputMappingInterface => null()
    class(TouchButtonsMappingPaintable), pointer :: f_touchButtonsPaintable => null()
    class(TimeDelayHelper), pointer :: f_timeHelper => null()
    logical :: f_released = .false.
    character(len=:), allocatable :: f_METHOD_NAME
    character(len=:), allocatable :: f_RELEASE
    character(len=:), allocatable :: f_FAST_REPEAT
    character(len=:), allocatable :: f_IGNORE
  contains
    procedure :: jm_onEvent_1 => TouchButtonsPaintableComposite_jm_onEvent_1
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => TouchButtonsPaintableComposite_jm_onCompleteMotionGestureInputEvent_1
    procedure :: jm_process_0 => TouchButtonsPaintableComposite_jm_process_0
  end type

  ! TouchButtonsPaintableComposite used as a CompleteMotionGestureInputEventListenerInterface
  type, extends(CompleteMotionGestureInputEventListenerInterface) :: TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface
    class(TouchButtonsPaintableComposite), pointer :: jtarget => null()
  contains
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface_jm_onCompleteMotionGestureInputEvent_1
  end type


contains

  function TouchButtonsPaintableComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsPaintableComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsPaintableComposite)
      jresult => object
    end select
  end function

  function TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface_jnew(object) result(jresult)
    class(TouchButtonsPaintableComposite), target :: object
    class(TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'TouchButtonsPaintableComposite'
    jresult%jtarget => object
  end function

  recursive subroutine TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(TouchButtonsPaintableComposite_jas_CompleteMotionGestureInputEventListenerInterface), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    call this%jtarget%jm_onCompleteMotionGestureInputEvent_1(j_completeMotionGestureInputEvent)
  end subroutine

  recursive function TouchButtonsPaintableComposite_jnew_2(j_inputMappingInterface, j_basicColor) result(this)
    class(InputMappingInterface), target, optional :: j_inputMappingInterface
    class(BasicColor), target, optional :: j_basicColor
    class(TouchButtonsPaintableComposite), pointer :: this
    class(CompleteMotionGestureInputEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TouchButtonsPaintableComposite'
    this%f_METHOD_NAME = ''
    this%f_RELEASE = ''
    this%f_FAST_REPEAT = ''
    this%f_IGNORE = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    this%f_timeHelper => TimeDelayHelper_jnew_1(250)
    this%f_released = .true.
    this%f_METHOD_NAME = 'onCompleteMotionGestureInputEvent'
    this%f_RELEASE = 'Ignoring: MotionGestureInput Release'
    this%f_FAST_REPEAT = 'Ignoring: MotionGestureInput Repeated To Quickly'
    this%f_IGNORE = 'Ignoring: Until Released'
        this%f_inputMappingInterface => j_inputMappingInterface
        jtemp1 => CompleteMotionGestureInputEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListenerInterface_1(this)
        this%f_touchButtonsPaintable => TouchButtonsMappingPaintable_jnew_1(j_basicColor)
  end function

  recursive subroutine TouchButtonsPaintableComposite_jm_onEvent_1(this, j_eventObject)
    class(TouchButtonsPaintableComposite), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp2%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine TouchButtonsPaintableComposite_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(TouchButtonsPaintableComposite), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: j_gameKeyCompleteMotionGestureInputEvent
    class(GameKey), pointer :: j_gameKey
    class(MotionGestureInput), pointer :: j_motionGestureInput
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringUtil), pointer :: jtemp9
    class(StringUtil), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'onCompleteMotionGestureInputEvent')
            j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
            j_gameKeyCompleteMotionGestureInputEvent => GameKeyCompleteMotionGestureInputEvent_jcast(j_completeMotionGestureInputEvent)
            j_gameKey => j_gameKeyCompleteMotionGestureInputEvent%jm_getGameKey_0()
            j_motionGestureInput => j_completeMotionGestureInputEvent%jm_getMotionGestureInput_0()
            if (JR_same(j_motionGestureInput, j_touchMotionGestureFactory%f_RELEASED_u8)) then
                call this%f_logUtil%jm_putF_3(this%f_RELEASE, this, this%f_METHOD_NAME)
                this%f_released = .true.
                return
            end if
            jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
            if ((JR_same(j_motionGestureInput, jtemp3%f_NO_MOTION) .and. (.not. this%f_timeHelper%jm_isTimeTNT_0()))) then
                call this%f_logUtil%jm_putF_3(this%f_FAST_REPEAT, this, this%f_METHOD_NAME)
                return
            end if
            if ((.not. this%f_released)) then
                call this%f_logUtil%jm_putF_3(this%f_IGNORE, this, this%f_METHOD_NAME)
                return
            end if
            this%f_released = .false.
            jtemp9 => StringUtil_jm_getInstance_0()
            jtemp8 => StringMaker_jnew_0()
            jtemp7 => jtemp8%jm_append_1('GameKey: ')
            jtemp10 => StringUtil_jm_getInstance_0()
            jtemp6 => jtemp7%jm_append_1(jtemp9%jm_toString_1(j_gameKey))
            jtemp5 => jtemp6%jm_append_1(' MotionGestureInput: ')
            jtemp4 => jtemp5%jm_append_1(jtemp10%jm_toString_1(j_motionGestureInput))
            call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, this%f_METHOD_NAME)
            call this%f_inputMappingInterface%jm_processInputMapping_2(j_gameKey, j_motionGestureInput)
  end subroutine

  recursive subroutine TouchButtonsPaintableComposite_jm_process_0(this)
    class(TouchButtonsPaintableComposite), target :: this
    class(CompleteMotionGestureInputEventHandler), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp11 => CompleteMotionGestureInputEventHandler_jm_getInstance_0()
        call jtemp11%jm_removeListener_1(this)
  end subroutine
end module TouchButtonsPaintableComposite_m

