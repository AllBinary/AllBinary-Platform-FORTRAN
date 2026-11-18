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
! package org.allbinary.input.motion.gesture.observer
module GameMotionGestureListener_m
  use JR_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use ForcedLogUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use MotionGestureEventListener_m
  use CompleteMotionGestureListenerInterface_m
  use MotionGestureEvent_m
  implicit none

  type, extends(MotionGestureEventListener) :: GameMotionGestureListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_motionGestureCollection => null()
    class(BasicArrayList), pointer :: f_touchGestureCollection => null()
    class(CompleteMotionGestureListenerInterface), pointer :: f_signed => null()
  contains
    procedure :: jm_onEvent_1 => GameMotionGestureListener_jm_onEvent_1
    procedure :: jm_onUpMotionGestureEvent_1 => GameMotionGestureListener_jm_onUpMotionGestureEvent_1
    procedure :: jm_onDownMotionGestureEvent_1 => GameMotionGestureListener_jm_onDownMotionGestureEvent_1
    procedure :: jm_onLeftMotionGestureEvent_1 => GameMotionGestureListener_jm_onLeftMotionGestureEvent_1
    procedure :: jm_onRightMotionGestureEvent_1 => GameMotionGestureListener_jm_onRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownRightMotionGestureEvent_1 => GameMotionGestureListener_jm_onDiagonalDownRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownLeftMotionGestureEvent_1 => GameMotionGestureListener_jm_onDiagonalDownLeftMotionGestureEvent_1
    procedure :: jm_onDiagonalUpRightMotionGestureEvent_1 => GameMotionGestureListener_jm_onDiagonalUpRightMotionGestureEvent_1
    procedure :: jm_onDiagonalUpLeftMotionGestureEvent_1 => GameMotionGestureListener_jm_onDiagonalUpLeftMotionGestureEvent_1
    procedure :: jm_onPressedMotionGestureEvent_1 => GameMotionGestureListener_jm_onPressedMotionGestureEvent_1
    procedure :: jm_released_1 => GameMotionGestureListener_jm_released_1
    procedure :: jm_onScrolledMotionGestureEvent_1 => GameMotionGestureListener_jm_onScrolledMotionGestureEvent_1
    procedure :: jm_onMotionGestureEvent_1 => GameMotionGestureListener_jm_onMotionGestureEvent_1
  end type


contains

  function GameMotionGestureListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMotionGestureListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMotionGestureListener)
      jresult => object
    end select
  end function

  recursive function GameMotionGestureListener_jnew_1(j_signed) result(this)
    class(CompleteMotionGestureListenerInterface), target, optional :: j_signed
    class(GameMotionGestureListener), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameMotionGestureListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_motionGestureCollection => BasicArrayListD_jnew_0()
    this%f_touchGestureCollection => BasicArrayListD_jnew_0()
    
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_signed => j_signed
  end function

  recursive subroutine GameMotionGestureListener_jm_onEvent_1(this, j_eventObject)
    class(GameMotionGestureListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onUpMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onDownMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onLeftMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onRightMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onDiagonalDownRightMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onDiagonalDownLeftMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onDiagonalUpRightMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onDiagonalUpLeftMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onPressedMotionGestureEvent_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_touchGestureCollection%jm_add_1(j_ev%jm_getMotionGesture_0())
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_released_1(this, j_ev)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jdiscardBoolean = this%f_touchGestureCollection%jm_add_1(j_ev%jm_getMotionGesture_0())
            call this%f_signed%jm_onMotionGestureCompleted_1(this%f_touchGestureCollection)
            call this%f_touchGestureCollection%jm_clear_0()
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onScrolledMotionGestureEvent_1(this, j_motionGestureEvent)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    continue
  end subroutine

  recursive subroutine GameMotionGestureListener_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(GameMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(MotionGestureInput), pointer :: j_motionGestureInput
    class(StringMaker), pointer :: j_stringBuffer
    class(TouchMotionGestureFactory), pointer :: jtemp2
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_motionGestureInput => j_motionGestureEvent%jm_getMotionGesture_0()
            jtemp2 => TouchMotionGestureFactory_jm_getInstance_0()
            if (JR_same(j_motionGestureInput, jtemp2%f_PRESSED)) then
                call this%jm_onPressedMotionGestureEvent_1(j_motionGestureEvent)
            else if (JR_same(j_motionGestureInput, jtemp3%f_RELEASED)) then
                call this%jm_released_1(j_motionGestureEvent)
            else
                jdiscardBoolean = this%f_motionGestureCollection%jm_add_1(j_motionGestureInput)
                call this%f_signed%jm_onMotionGestureCompleted_1(this%f_motionGestureCollection)
                call this%f_motionGestureCollection%jm_clear_0()
                call this%f_touchGestureCollection%jm_clear_0()
            end if
  end subroutine
end module GameMotionGestureListener_m

