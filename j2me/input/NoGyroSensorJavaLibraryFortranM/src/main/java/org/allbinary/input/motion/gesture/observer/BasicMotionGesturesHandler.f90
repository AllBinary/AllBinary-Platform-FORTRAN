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
module BasicMotionGesturesHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use BaseMotionGestureEventListener_m
  use MotionGestureEvent_m
  implicit none

  type, extends(BasicEventHandler) :: BasicMotionGesturesHandler
  contains
    procedure :: jm_process_2 => BasicMotionGesturesHandler_jm_process_2
  end type

  class(BasicMotionGesturesHandler), pointer, save :: BasicMotionGesturesHandler_jcell_SINGLETON => null()
  logical, save :: BasicMotionGesturesHandler_jset_SINGLETON = .false.

contains

  function BasicMotionGesturesHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicMotionGesturesHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicMotionGesturesHandler)
      jresult => object
    end select
  end function

  function BasicMotionGesturesHandler_jstatic_SINGLETON() result(jresult)
    class(BasicMotionGesturesHandler), pointer :: jresult
    if (.not. BasicMotionGesturesHandler_jset_SINGLETON) then
      BasicMotionGesturesHandler_jset_SINGLETON = .true.
      BasicMotionGesturesHandler_jcell_SINGLETON => BasicMotionGesturesHandler_jnew_0()
    end if
    jresult => BasicMotionGesturesHandler_jcell_SINGLETON
  end function

  subroutine BasicMotionGesturesHandler_jsetstatic_SINGLETON(jvalue)
    class(BasicMotionGesturesHandler), target, optional :: jvalue
    BasicMotionGesturesHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      BasicMotionGesturesHandler_jcell_SINGLETON => jvalue
    else
      BasicMotionGesturesHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function BasicMotionGesturesHandler_jnew_0() result(this)
    class(BasicMotionGesturesHandler), pointer :: this
    allocate(this)
    this%jclass = 'BasicMotionGesturesHandler'
        continue
  end function

  recursive function BasicMotionGesturesHandler_jm_getInstance_0() result(jresult)
    class(BasicMotionGesturesHandler), pointer :: jresult
        jresult => BasicMotionGesturesHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine BasicMotionGesturesHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(BasicMotionGesturesHandler), target :: this
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
end module BasicMotionGesturesHandler_m

function BasicMotionGesturesHandler_jnew_0_jext() result(this)
  use BasicMotionGesturesHandler_m, only: JObject, BasicMotionGesturesHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicMotionGesturesHandler_jnew_0()
end function

