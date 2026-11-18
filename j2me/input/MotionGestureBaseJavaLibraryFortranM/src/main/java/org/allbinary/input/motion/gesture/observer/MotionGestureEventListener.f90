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
module MotionGestureEventListener_m
  use JR_m
  use BaseMotionGestureEventListener_m
  use MotionGestureEvent_m
  implicit none

  type, extends(BaseMotionGestureEventListener) :: MotionGestureEventListener
  contains
    procedure :: jm_onPressedMotionGestureEvent_1 => MotionGestureEventListener_jm_onPressedMotionGestureEvent_1
    procedure :: jm_onUpMotionGestureEvent_1 => MotionGestureEventListener_jm_onUpMotionGestureEvent_1
    procedure :: jm_onDownMotionGestureEvent_1 => MotionGestureEventListener_jm_onDownMotionGestureEvent_1
    procedure :: jm_onLeftMotionGestureEvent_1 => MotionGestureEventListener_jm_onLeftMotionGestureEvent_1
    procedure :: jm_onRightMotionGestureEvent_1 => MotionGestureEventListener_jm_onRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownRightMotionGestureEvent_1 => MotionGestureEventListener_jm_onDiagonalDownRightMotionGestureEvent_1
    procedure :: jm_onDiagonalDownLeftMotionGestureEvent_1 => MotionGestureEventListener_jm_onDiagonalDownLeftMotionGestureEvent_1
    procedure :: jm_onDiagonalUpRightMotionGestureEvent_1 => MotionGestureEventListener_jm_onDiagonalUpRightMotionGestureEvent_1
    procedure :: jm_onDiagonalUpLeftMotionGestureEvent_1 => MotionGestureEventListener_jm_onDiagonalUpLeftMotionGestureEvent_1
    procedure :: jm_released_1 => MotionGestureEventListener_jm_released_1
  end type


contains

  function MotionGestureEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureEventListener)
      jresult => object
    end select
  end function

  function MotionGestureEventListener_jnew_0() result(this)
    class(MotionGestureEventListener), pointer :: this
    allocate(this)
    this%jclass = 'MotionGestureEventListener'
  end function

  recursive subroutine MotionGestureEventListener_jm_onPressedMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onPressedMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onUpMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onUpMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onDownMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onDownMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onLeftMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onLeftMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onRightMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onRightMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onDiagonalDownRightMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onDiagonalDownRightMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onDiagonalDownLeftMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onDiagonalDownLeftMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onDiagonalUpRightMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onDiagonalUpRightMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_onDiagonalUpLeftMotionGestureEvent_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.onDiagonalUpLeftMotionGestureEvent'
  end subroutine

  recursive subroutine MotionGestureEventListener_jm_released_1(this, j_ev)
    class(MotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_ev
    error stop 'AbstractMethodError: MotionGestureEventListener.released'
  end subroutine
end module MotionGestureEventListener_m

