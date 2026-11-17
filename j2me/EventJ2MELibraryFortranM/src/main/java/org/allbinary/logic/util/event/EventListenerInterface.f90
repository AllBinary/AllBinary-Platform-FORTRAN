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
! package org.allbinary.logic.util.event
module EventListenerInterface_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(JObject) :: EventListenerInterface
  contains
    procedure :: jm_onEvent_1 => EventListenerInterface_jm_onEvent_1
  end type


contains

  function EventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EventListenerInterface)
      jresult => object
    end select
  end function

  function EventListenerInterface_jnew_0() result(this)
    class(EventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'EventListenerInterface'
  end function

  recursive subroutine EventListenerInterface_jm_onEvent_1(this, j_eventObject)
    class(EventListenerInterface), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    error stop 'AbstractMethodError: EventListenerInterface.onEvent'
  end subroutine
end module EventListenerInterface_m

