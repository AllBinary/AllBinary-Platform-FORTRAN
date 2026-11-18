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
module TrackingEventCircularStaticPool_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryEventCircularPool_m
  use TrackingEventFactory_m
  use TrackingEvent_m
  implicit none

  type, extends(JObject) :: TrackingEventCircularStaticPool
    class(AllBinaryEventCircularPool), pointer :: f_EVENT_POOL => null()
  contains
    procedure :: jm_init_0 => TrackingEventCircularStaticPool_jm_init_0
    procedure :: jm_getNextInstance_1 => TrackingEventCircularStaticPool_jm_getNextInstance_1
  end type

  class(TrackingEventCircularStaticPool), pointer, save :: TrackingEventCircularStaticPool_jcell_instance => null()
  logical, save :: TrackingEventCircularStaticPool_jset_instance = .false.

contains

  function TrackingEventCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrackingEventCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrackingEventCircularStaticPool)
      jresult => object
    end select
  end function

  function TrackingEventCircularStaticPool_jstatic_instance() result(jresult)
    class(TrackingEventCircularStaticPool), pointer :: jresult
    if (.not. TrackingEventCircularStaticPool_jset_instance) then
      TrackingEventCircularStaticPool_jset_instance = .true.
      TrackingEventCircularStaticPool_jcell_instance => TrackingEventCircularStaticPool_jnew_0()
    end if
    jresult => TrackingEventCircularStaticPool_jcell_instance
  end function

  subroutine TrackingEventCircularStaticPool_jsetstatic_instance(jvalue)
    class(TrackingEventCircularStaticPool), target, optional :: jvalue
    TrackingEventCircularStaticPool_jset_instance = .true.
    if (present(jvalue)) then
      TrackingEventCircularStaticPool_jcell_instance => jvalue
    else
      TrackingEventCircularStaticPool_jcell_instance => null()
    end if
  end subroutine

  function TrackingEventCircularStaticPool_jnew_0() result(this)
    class(TrackingEventCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'TrackingEventCircularStaticPool'
    this%f_EVENT_POOL => AllBinaryEventCircularPool_jnew_1(20)
  end function

  recursive function TrackingEventCircularStaticPool_jm_getInstance_0() result(jresult)
    class(TrackingEventCircularStaticPool), pointer :: jresult
        jresult => TrackingEventCircularStaticPool_jstatic_instance()
        return
  end function

  recursive subroutine TrackingEventCircularStaticPool_jm_init_0(this)
    class(TrackingEventCircularStaticPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_EVENT_POOL%jm_initAllBinaryEventCircularPool_1(TrackingEventFactory_jnew_0())
  end subroutine

  recursive function TrackingEventCircularStaticPool_jm_getNextInstance_1(this, j_layerInterface) result(jresult)
    class(TrackingEventCircularStaticPool), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(TrackingEvent), pointer :: jresult
    class(TrackingEvent), pointer :: j_trackingEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_trackingEvent => TrackingEvent_jcast(this%f_EVENT_POOL%jm_getNextInstance_0())
        call j_trackingEvent%jm_setLayerInterfaceForCircularStaticPool_1(j_layerInterface)
        jresult => j_trackingEvent
        return
  end function
end module TrackingEventCircularStaticPool_m

