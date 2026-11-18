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
! package org.allbinary.bounds.event
module BoundsChangeEventListener_m
  use JR_m
  use EventListenerInterface_m
  use BoundsChangeEvent_m
  implicit none

  type, extends(EventListenerInterface) :: BoundsChangeEventListener
  contains
    procedure :: jm_onBoundsChangeEvent_1 => BoundsChangeEventListener_jm_onBoundsChangeEvent_1
  end type


contains

  function BoundsChangeEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BoundsChangeEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BoundsChangeEventListener)
      jresult => object
    end select
  end function

  function BoundsChangeEventListener_jnew_0() result(this)
    class(BoundsChangeEventListener), pointer :: this
    allocate(this)
    this%jclass = 'BoundsChangeEventListener'
  end function

  recursive subroutine BoundsChangeEventListener_jm_onBoundsChangeEvent_1(this, j_boundsChangeEvent)
    class(BoundsChangeEventListener), target :: this
    class(BoundsChangeEvent), target, optional :: j_boundsChangeEvent
    error stop 'AbstractMethodError: BoundsChangeEventListener.onBoundsChangeEvent'
  end subroutine
end module BoundsChangeEventListener_m

