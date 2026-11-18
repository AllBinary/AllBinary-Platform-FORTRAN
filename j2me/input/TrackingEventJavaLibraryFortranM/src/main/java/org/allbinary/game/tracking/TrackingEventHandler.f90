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
! package org.allbinary.game.tracking
module TrackingEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use TrackingEventListenerInterface_m
  use TrackingEvent_m
  implicit none

  type, extends(BasicEventHandler) :: TrackingEventHandler
  contains
    procedure :: jm_process_2 => TrackingEventHandler_jm_process_2
  end type

  class(TrackingEventHandler), pointer, save :: TrackingEventHandler_jcell_instance => null()
  logical, save :: TrackingEventHandler_jset_instance = .false.

contains

  function TrackingEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackingEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackingEventHandler)
      jresult => object
    end select
  end function

  function TrackingEventHandler_jstatic_instance() result(jresult)
    class(TrackingEventHandler), pointer :: jresult
    if (.not. TrackingEventHandler_jset_instance) then
      TrackingEventHandler_jset_instance = .true.
      TrackingEventHandler_jcell_instance => TrackingEventHandler_jnew_0()
    end if
    jresult => TrackingEventHandler_jcell_instance
  end function

  subroutine TrackingEventHandler_jsetstatic_instance(jvalue)
    class(TrackingEventHandler), target, optional :: jvalue
    TrackingEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      TrackingEventHandler_jcell_instance => jvalue
    else
      TrackingEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function TrackingEventHandler_jnew_0() result(this)
    class(TrackingEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'TrackingEventHandler'
        continue
  end function

  recursive function TrackingEventHandler_jm_getInstance_0() result(jresult)
    class(TrackingEventHandler), pointer :: jresult
        jresult => TrackingEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine TrackingEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(TrackingEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(TrackingEventListenerInterface), pointer :: j_trackingEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_trackingEventListenerInterface => TrackingEventListenerInterface_jcast(j_eventListenerInterface)
        call j_trackingEventListenerInterface%jm_onMovement_1(TrackingEvent_jcast(j_eventObject))
  end subroutine
end module TrackingEventHandler_m

function TrackingEventHandler_jnew_0_jext() result(this)
  use TrackingEventHandler_m, only: JObject, TrackingEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TrackingEventHandler_jnew_0()
end function

