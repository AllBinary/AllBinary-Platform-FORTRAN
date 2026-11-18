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
module ReleaseControlledMotionGestureListener_m
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

  type, extends(MotionGestureEventListener) :: ReleaseControlledMotionGestureListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(MotionGestureInput), pointer :: f_currentMotionGesture => null()
    logical :: f_isMouseGestureOccurring = .false.
    class(BasicArrayList), pointer :: f_motionGestureCollection => null()
    class(CompleteMotionGestureListenerInterface), pointer :: f_signed => null()
  contains
    procedure :: jm_onEvent_1 => ReleaseControlledMotionGestureListener_jm_onEvent_1
    procedure :: jm_onUpMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onUpMotionGestureEvent_1
    procedure :: jm_onDownMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onDownMotionGestureEvent_1
    procedure :: jm_onLeftMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onLeftMotionGestureEvent_1
    procedure :: jm_onRightMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownRightMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onDiagonalDownRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownLeftMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onDiagonalDownLeftMotionGestureEvent_1
    procedure :: jm_onDiagonalUpRightMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onDiagonalUpRightMotionGestureEvent_1
    procedure :: jm_onDiagonalUpLeftMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onDiagonalUpLeftMotionGestureEvent_1
    procedure :: jm_onPressedMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onPressedMotionGestureEvent_1
    procedure :: jm_onScrolledMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onScrolledMotionGestureEvent_1
    procedure :: jm_released_1 => ReleaseControlledMotionGestureListener_jm_released_1
    procedure :: jm_onMotionGestureEvent_1 => ReleaseControlledMotionGestureListener_jm_onMotionGestureEvent_1
  end type


contains

  function ReleaseControlledMotionGestureListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ReleaseControlledMotionGestureListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ReleaseControlledMotionGestureListener)
      jresult => object
    end select
  end function

  recursive function ReleaseControlledMotionGestureListener_jnew_1(j_signed) result(this)
    class(CompleteMotionGestureListenerInterface), target, optional :: j_signed
    class(ReleaseControlledMotionGestureListener), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ReleaseControlledMotionGestureListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    jtemp1 => TouchMotionGestureFactory_jm_getInstance_0()
    this%f_currentMotionGesture => jtemp1%f_NO_MOTION
    this%f_isMouseGestureOccurring = .false.
    this%f_motionGestureCollection => BasicArrayListD_jnew_0()
    
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_signed => j_signed
  end function

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onEvent_1(this, j_eventObject)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onUpMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onDownMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onLeftMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onRightMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onDiagonalDownRightMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onDiagonalDownLeftMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onDiagonalUpRightMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onDiagonalUpLeftMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
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

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onPressedMotionGestureEvent_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(TouchMotionGestureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_isMouseGestureOccurring = .true.
        jtemp2 => TouchMotionGestureFactory_jm_getInstance_0()
        this%f_currentMotionGesture => jtemp2%f_NO_MOTION
        call this%jm_onMotionGestureEvent_1(j_ev)
  end subroutine

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onScrolledMotionGestureEvent_1(this, j_motionGestureEvent)
    class(ReleaseControlledMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    continue
  end subroutine

  recursive subroutine ReleaseControlledMotionGestureListener_jm_released_1(this, j_ev)
    class(ReleaseControlledMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if ((this%f_isMouseGestureOccurring .eqv. .false.)) then
                return
            end if
            this%f_isMouseGestureOccurring = .false.
            call this%f_signed%jm_onMotionGestureCompleted_1(this%f_motionGestureCollection)
            call this%f_motionGestureCollection%jm_clear_0()
  end subroutine

  recursive subroutine ReleaseControlledMotionGestureListener_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(ReleaseControlledMotionGestureListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(MotionGestureInput), pointer :: j_motionGestureInput
    class(TouchMotionGestureFactory), pointer :: jtemp7
    class(TouchMotionGestureFactory), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_isMouseGestureOccurring .eqv. .false.)) then
            return
        end if
        j_motionGestureInput => j_motionGestureEvent%jm_getMotionGesture_0()
        jtemp7 => TouchMotionGestureFactory_jm_getInstance_0()
        if (JR_same(j_motionGestureInput, jtemp7%f_PRESSED)) then
            call this%jm_onPressedMotionGestureEvent_1(j_motionGestureEvent)
        else if (JR_same(j_motionGestureInput, jtemp8%f_RELEASED)) then
            call this%jm_released_1(j_motionGestureEvent)
        else
            if ((.not. JR_same(this%f_currentMotionGesture, j_motionGestureInput))) then
                this%f_currentMotionGesture => j_motionGestureInput
                jdiscardBoolean = this%f_motionGestureCollection%jm_add_1(j_motionGestureEvent%jm_getMotionGesture_0())
            end if
        end if
  end subroutine
end module ReleaseControlledMotionGestureListener_m

