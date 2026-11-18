! Generated Code Do Not Modify
! package org.allbinary.game.input
module CompleteMotionGestureInputEventListener_m
  use JR_m
  use AllBinaryEventObject_m
  use CompleteMotionGestureInputEventListenerInterface_m
  use CompleteMotionGestureInputEvent_m
  implicit none

  type, extends(CompleteMotionGestureInputEventListenerInterface) :: CompleteMotionGestureInputEventListener
  contains
    procedure :: jm_onEvent_1 => CompleteMotionGestureInputEventListener_jm_onEvent_1
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => CompleteMotionGestureInputEventListener_jm_onCompleteMotionGestureInputEvent_1
  end type


contains

  function CompleteMotionGestureInputEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputEventListener)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputEventListener_jnew_0() result(this)
    class(CompleteMotionGestureInputEventListener), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputEventListener'
  end function

  recursive subroutine CompleteMotionGestureInputEventListener_jm_onEvent_1(this, j_eventObject)
    class(CompleteMotionGestureInputEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    continue
  end subroutine

  recursive subroutine CompleteMotionGestureInputEventListener_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(CompleteMotionGestureInputEventListener), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    continue
  end subroutine
end module CompleteMotionGestureInputEventListener_m

