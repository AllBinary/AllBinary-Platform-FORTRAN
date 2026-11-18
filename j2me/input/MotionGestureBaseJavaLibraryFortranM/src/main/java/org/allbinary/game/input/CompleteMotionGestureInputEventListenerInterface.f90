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
! package org.allbinary.game.input
module CompleteMotionGestureInputEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use CompleteMotionGestureInputEvent_m
  implicit none

  type, extends(EventListenerInterface) :: CompleteMotionGestureInputEventListenerInterface
  contains
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => CompleteMotionGestureInputEventListenerInterface_jm_onCompleteMotionGestureInputEvent_1
  end type


contains

  function CompleteMotionGestureInputEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputEventListenerInterface)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputEventListenerInterface_jnew_0() result(this)
    class(CompleteMotionGestureInputEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputEventListenerInterface'
  end function

  recursive subroutine CompleteMotionGestureInputEventListenerInterface_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(CompleteMotionGestureInputEventListenerInterface), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    error stop 'AbstractMethodError: CompleteMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent'
  end subroutine
end module CompleteMotionGestureInputEventListenerInterface_m

