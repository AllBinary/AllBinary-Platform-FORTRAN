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
module MovedMotionGesturesHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use BaseMotionGestureEventListener_m
  use MotionGestureEvent_m
  implicit none

  type, extends(BasicEventHandler) :: MovedMotionGesturesHandler
  contains
    procedure :: jm_process_2 => MovedMotionGesturesHandler_jm_process_2
  end type

  class(MovedMotionGesturesHandler), pointer, save :: MovedMotionGesturesHandler_jcell_SINGLETON => null()
  logical, save :: MovedMotionGesturesHandler_jset_SINGLETON = .false.

contains

  function MovedMotionGesturesHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MovedMotionGesturesHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MovedMotionGesturesHandler)
      jresult => object
    end select
  end function

  function MovedMotionGesturesHandler_jstatic_SINGLETON() result(jresult)
    class(MovedMotionGesturesHandler), pointer :: jresult
    if (.not. MovedMotionGesturesHandler_jset_SINGLETON) then
      MovedMotionGesturesHandler_jset_SINGLETON = .true.
      MovedMotionGesturesHandler_jcell_SINGLETON => MovedMotionGesturesHandler_jnew_0()
    end if
    jresult => MovedMotionGesturesHandler_jcell_SINGLETON
  end function

  subroutine MovedMotionGesturesHandler_jsetstatic_SINGLETON(jvalue)
    class(MovedMotionGesturesHandler), target, optional :: jvalue
    MovedMotionGesturesHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      MovedMotionGesturesHandler_jcell_SINGLETON => jvalue
    else
      MovedMotionGesturesHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function MovedMotionGesturesHandler_jnew_0() result(this)
    class(MovedMotionGesturesHandler), pointer :: this
    allocate(this)
    this%jclass = 'MovedMotionGesturesHandler'
        continue
  end function

  recursive function MovedMotionGesturesHandler_jm_getInstance_0() result(jresult)
    class(MovedMotionGesturesHandler), pointer :: jresult
        jresult => MovedMotionGesturesHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine MovedMotionGesturesHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(MovedMotionGesturesHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(BaseMotionGestureEventListener), pointer :: j_baseMotionGestureEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_baseMotionGestureEventListener => BaseMotionGestureEventListener_jcast(j_eventListenerInterface)
        call j_baseMotionGestureEventListener%jm_onMotionGestureEvent_1(MotionGestureEvent_jcast(j_eventObject))
  end subroutine
end module MovedMotionGesturesHandler_m

function MovedMotionGesturesHandler_jnew_0_jext() result(this)
  use MovedMotionGesturesHandler_m, only: JObject, MovedMotionGesturesHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MovedMotionGesturesHandler_jnew_0()
end function

