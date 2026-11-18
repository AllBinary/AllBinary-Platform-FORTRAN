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
module TrackingEventFactory_m
  use JR_m
  use AllBinaryEventObject_m
  use AllBinaryEventObjectFactoryInterface_m
  use TrackingEvent_m
  use TrackingEventHandler_m
  implicit none

  type, extends(AllBinaryEventObjectFactoryInterface) :: TrackingEventFactory
  contains
    procedure :: jm_getInstance_0 => TrackingEventFactory_jm_getInstance_0
  end type


contains

  function TrackingEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackingEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackingEventFactory)
      jresult => object
    end select
  end function

  recursive function TrackingEventFactory_jnew_0() result(this)
    class(TrackingEventFactory), pointer :: this
    allocate(this)
    this%jclass = 'TrackingEventFactory'
        continue
  end function

  recursive function TrackingEventFactory_jm_getInstance_0(this) result(jresult)
    class(TrackingEventFactory), target :: this
    class(AllBinaryEventObject), pointer :: jresult
        jresult => TrackingEvent_jnew_1(TrackingEventHandler_jm_getInstance_0())
        return
  end function
end module TrackingEventFactory_m

