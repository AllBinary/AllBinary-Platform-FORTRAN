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
module CompleteMotionGestureListenerInterface_m
  use JR_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: CompleteMotionGestureListenerInterface
  contains
    procedure :: jm_onMotionGestureCompleted_1 => CompleteMotionGestureListenerInterface_jm_onMotionGestureCompleted_1
  end type


contains

  function CompleteMotionGestureListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureListenerInterface)
      jresult => object
    end select
  end function

  function CompleteMotionGestureListenerInterface_jnew_0() result(this)
    class(CompleteMotionGestureListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureListenerInterface'
  end function

  recursive subroutine CompleteMotionGestureListenerInterface_jm_onMotionGestureCompleted_1(this, j_list)
    class(CompleteMotionGestureListenerInterface), target :: this
    class(BasicArrayList), target, optional :: j_list
    error stop 'AbstractMethodError: CompleteMotionGestureListenerInterface.onMotionGestureCompleted'
  end subroutine
end module CompleteMotionGestureListenerInterface_m

