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
module BaseMotionGestureEventListener_m
  use JR_m
  use EventListenerInterface_m
  use MotionGestureEvent_m
  implicit none

  type, extends(EventListenerInterface) :: BaseMotionGestureEventListener
  contains
    procedure :: jm_onMotionGestureEvent_1 => BaseMotionGestureEventListener_jm_onMotionGestureEvent_1
    procedure :: jm_onScrolledMotionGestureEvent_1 => BaseMotionGestureEventListener_jm_onScrolledMotionGestureEvent_1
  end type


contains

  function BaseMotionGestureEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseMotionGestureEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseMotionGestureEventListener)
      jresult => object
    end select
  end function

  function BaseMotionGestureEventListener_jnew_0() result(this)
    class(BaseMotionGestureEventListener), pointer :: this
    allocate(this)
    this%jclass = 'BaseMotionGestureEventListener'
  end function

  recursive subroutine BaseMotionGestureEventListener_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BaseMotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    error stop 'AbstractMethodError: BaseMotionGestureEventListener.onMotionGestureEvent'
  end subroutine

  recursive subroutine BaseMotionGestureEventListener_jm_onScrolledMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BaseMotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    error stop 'AbstractMethodError: BaseMotionGestureEventListener.onScrolledMotionGestureEvent'
  end subroutine
end module BaseMotionGestureEventListener_m

