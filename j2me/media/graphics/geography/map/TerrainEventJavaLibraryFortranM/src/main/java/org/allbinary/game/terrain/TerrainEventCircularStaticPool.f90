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
! package org.allbinary.game.terrain
module TerrainEventCircularStaticPool_m
  use JR_m
  use AllBinaryEventCircularPool_m
  use TerrainEventFactory_m
  use TerrainEvent_m
  use BasicTerrainInfo_m
  implicit none

  type, extends(JObject) :: TerrainEventCircularStaticPool
    class(AllBinaryEventCircularPool), pointer :: f_EVENT_POOL => null()
  contains
    procedure :: jm_init_0 => TerrainEventCircularStaticPool_jm_init_0
    procedure :: jm_getNext_1 => TerrainEventCircularStaticPool_jm_getNext_1
  end type

  class(TerrainEventCircularStaticPool), pointer, save :: TerrainEventCircularStaticPool_jcell_instance => null()
  logical, save :: TerrainEventCircularStaticPool_jset_instance = .false.

contains

  function TerrainEventCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEventCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEventCircularStaticPool)
      jresult => object
    end select
  end function

  function TerrainEventCircularStaticPool_jstatic_instance() result(jresult)
    class(TerrainEventCircularStaticPool), pointer :: jresult
    if (.not. TerrainEventCircularStaticPool_jset_instance) then
      TerrainEventCircularStaticPool_jset_instance = .true.
      TerrainEventCircularStaticPool_jcell_instance => TerrainEventCircularStaticPool_jnew_0()
    end if
    jresult => TerrainEventCircularStaticPool_jcell_instance
  end function

  subroutine TerrainEventCircularStaticPool_jsetstatic_instance(jvalue)
    class(TerrainEventCircularStaticPool), target, optional :: jvalue
    TerrainEventCircularStaticPool_jset_instance = .true.
    if (present(jvalue)) then
      TerrainEventCircularStaticPool_jcell_instance => jvalue
    else
      TerrainEventCircularStaticPool_jcell_instance => null()
    end if
  end subroutine

  function TerrainEventCircularStaticPool_jnew_0() result(this)
    class(TerrainEventCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'TerrainEventCircularStaticPool'
    this%f_EVENT_POOL => AllBinaryEventCircularPool_jnew_1(20)
  end function

  recursive function TerrainEventCircularStaticPool_jm_getInstance_0() result(jresult)
    class(TerrainEventCircularStaticPool), pointer :: jresult
        jresult => TerrainEventCircularStaticPool_jstatic_instance()
        return
  end function

  recursive subroutine TerrainEventCircularStaticPool_jm_init_0(this)
    class(TerrainEventCircularStaticPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_EVENT_POOL%jm_initAllBinaryEventCircularPool_1(TerrainEventFactory_jnew_0())
  end subroutine

  recursive function TerrainEventCircularStaticPool_jm_getNext_1(this, j_basicTerrainInfo) result(jresult)
    class(TerrainEventCircularStaticPool), target :: this
    class(BasicTerrainInfo), target, optional :: j_basicTerrainInfo
    class(TerrainEvent), pointer :: jresult
    class(TerrainEvent), pointer :: j_trackingEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_trackingEvent => TerrainEvent_jcast(this%f_EVENT_POOL%jm_getNextInstance_0())
        call j_trackingEvent%jm_setBasicTerrainInfoForCircularStaticPool_1(j_basicTerrainInfo)
        jresult => j_trackingEvent
        return
  end function
end module TerrainEventCircularStaticPool_m

