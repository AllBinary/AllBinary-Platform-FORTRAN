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
! package org.allbinary.layer.event
module ScrollMapEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use ScrollMapEventListenerInterface_m
  use ScrollMapEvent_m
  implicit none

  type, extends(BasicEventHandler) :: ScrollMapEventHandler
  contains
    procedure :: jm_process_2 => ScrollMapEventHandler_jm_process_2
  end type

  class(ScrollMapEventHandler), pointer, save :: ScrollMapEventHandler_jcell_SINGLETON => null()
  logical, save :: ScrollMapEventHandler_jset_SINGLETON = .false.

contains

  function ScrollMapEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollMapEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollMapEventHandler)
      jresult => object
    end select
  end function

  function ScrollMapEventHandler_jstatic_SINGLETON() result(jresult)
    class(ScrollMapEventHandler), pointer :: jresult
    if (.not. ScrollMapEventHandler_jset_SINGLETON) then
      ScrollMapEventHandler_jset_SINGLETON = .true.
      ScrollMapEventHandler_jcell_SINGLETON => ScrollMapEventHandler_jnew_0()
    end if
    jresult => ScrollMapEventHandler_jcell_SINGLETON
  end function

  subroutine ScrollMapEventHandler_jsetstatic_SINGLETON(jvalue)
    class(ScrollMapEventHandler), target, optional :: jvalue
    ScrollMapEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ScrollMapEventHandler_jcell_SINGLETON => jvalue
    else
      ScrollMapEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function ScrollMapEventHandler_jnew_0() result(this)
    class(ScrollMapEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'ScrollMapEventHandler'
        continue
  end function

  recursive function ScrollMapEventHandler_jm_getInstance_0() result(jresult)
    class(ScrollMapEventHandler), pointer :: jresult
        jresult => ScrollMapEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine ScrollMapEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(ScrollMapEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(ScrollMapEventListenerInterface), pointer :: j_scrollMapEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scrollMapEventListenerInterface => ScrollMapEventListenerInterface_jcast(j_eventListenerInterface)
        call j_scrollMapEventListenerInterface%jm_onMoveEvent_1(ScrollMapEvent_jcast(j_eventObject))
  end subroutine
end module ScrollMapEventHandler_m

function ScrollMapEventHandler_jnew_0_jext() result(this)
  use ScrollMapEventHandler_m, only: JObject, ScrollMapEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ScrollMapEventHandler_jnew_0()
end function

