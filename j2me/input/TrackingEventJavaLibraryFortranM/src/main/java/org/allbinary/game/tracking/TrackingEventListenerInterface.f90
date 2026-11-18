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
module TrackingEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use TrackingEvent_m
  implicit none

  type, extends(EventListenerInterface) :: TrackingEventListenerInterface
  contains
    procedure :: jm_onMovement_1 => TrackingEventListenerInterface_jm_onMovement_1
  end type


contains

  function TrackingEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackingEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackingEventListenerInterface)
      jresult => object
    end select
  end function

  function TrackingEventListenerInterface_jnew_0() result(this)
    class(TrackingEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'TrackingEventListenerInterface'
  end function

  recursive subroutine TrackingEventListenerInterface_jm_onMovement_1(this, j_trackingEvent)
    class(TrackingEventListenerInterface), target :: this
    class(TrackingEvent), target, optional :: j_trackingEvent
    error stop 'AbstractMethodError: TrackingEventListenerInterface.onMovement'
  end subroutine
end module TrackingEventListenerInterface_m

