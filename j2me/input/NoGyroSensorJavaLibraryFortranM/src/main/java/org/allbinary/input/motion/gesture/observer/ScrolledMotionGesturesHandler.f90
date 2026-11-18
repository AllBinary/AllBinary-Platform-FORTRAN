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
module ScrolledMotionGesturesHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use BaseMotionGestureEventListener_m
  use MotionGestureEvent_m
  implicit none

  type, extends(BasicEventHandler) :: ScrolledMotionGesturesHandler
  contains
    procedure :: jm_process_2 => ScrolledMotionGesturesHandler_jm_process_2
  end type

  class(ScrolledMotionGesturesHandler), pointer, save :: ScrolledMotionGesturesHandler_jcell_SINGLETON => null()
  logical, save :: ScrolledMotionGesturesHandler_jset_SINGLETON = .false.

contains

  function ScrolledMotionGesturesHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrolledMotionGesturesHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrolledMotionGesturesHandler)
      jresult => object
    end select
  end function

  function ScrolledMotionGesturesHandler_jstatic_SINGLETON() result(jresult)
    class(ScrolledMotionGesturesHandler), pointer :: jresult
    if (.not. ScrolledMotionGesturesHandler_jset_SINGLETON) then
      ScrolledMotionGesturesHandler_jset_SINGLETON = .true.
      ScrolledMotionGesturesHandler_jcell_SINGLETON => ScrolledMotionGesturesHandler_jnew_0()
    end if
    jresult => ScrolledMotionGesturesHandler_jcell_SINGLETON
  end function

  subroutine ScrolledMotionGesturesHandler_jsetstatic_SINGLETON(jvalue)
    class(ScrolledMotionGesturesHandler), target, optional :: jvalue
    ScrolledMotionGesturesHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ScrolledMotionGesturesHandler_jcell_SINGLETON => jvalue
    else
      ScrolledMotionGesturesHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function ScrolledMotionGesturesHandler_jnew_0() result(this)
    class(ScrolledMotionGesturesHandler), pointer :: this
    allocate(this)
    this%jclass = 'ScrolledMotionGesturesHandler'
        continue
  end function

  recursive function ScrolledMotionGesturesHandler_jm_getInstance_0() result(jresult)
    class(ScrolledMotionGesturesHandler), pointer :: jresult
        jresult => ScrolledMotionGesturesHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine ScrolledMotionGesturesHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(ScrolledMotionGesturesHandler), target :: this
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
        call j_baseMotionGestureEventListener%jm_onScrolledMotionGestureEvent_1(MotionGestureEvent_jcast(j_eventObject))
  end subroutine
end module ScrolledMotionGesturesHandler_m

function ScrolledMotionGesturesHandler_jnew_0_jext() result(this)
  use ScrolledMotionGesturesHandler_m, only: JObject, ScrolledMotionGesturesHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ScrolledMotionGesturesHandler_jnew_0()
end function

