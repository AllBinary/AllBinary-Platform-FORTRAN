! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module NullEventListener_m
  use JR_m
  use EventListenerInterface_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(EventListenerInterface) :: NullEventListener
  contains
    procedure :: jm_onEvent_1 => NullEventListener_jm_onEvent_1
  end type

  class(NullEventListener), pointer, save :: NullEventListener_jcell_NULL_EVENT_LISTENER => null()
  logical, save :: NullEventListener_jset_NULL_EVENT_LISTENER = .false.

contains

  function NullEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullEventListener)
      jresult => object
    end select
  end function

  function NullEventListener_jstatic_NULL_EVENT_LISTENER() result(jresult)
    class(NullEventListener), pointer :: jresult
    if (.not. NullEventListener_jset_NULL_EVENT_LISTENER) then
      NullEventListener_jset_NULL_EVENT_LISTENER = .true.
      NullEventListener_jcell_NULL_EVENT_LISTENER => NullEventListener_jnew_0()
    end if
    jresult => NullEventListener_jcell_NULL_EVENT_LISTENER
  end function

  function NullEventListener_jnew_0() result(this)
    class(NullEventListener), pointer :: this
    allocate(this)
    this%jclass = 'NullEventListener'
  end function

  recursive subroutine NullEventListener_jm_onEvent_1(this, j_eventObject)
    class(NullEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    continue
  end subroutine
end module NullEventListener_m

