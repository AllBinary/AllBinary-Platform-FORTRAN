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
module TerrainEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use TerrainEvent_m
  implicit none

  type, extends(EventListenerInterface) :: TerrainEventListenerInterface
  contains
    procedure :: jm_onTerrainEvent_1 => TerrainEventListenerInterface_jm_onTerrainEvent_1
  end type


contains

  function TerrainEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEventListenerInterface)
      jresult => object
    end select
  end function

  function TerrainEventListenerInterface_jnew_0() result(this)
    class(TerrainEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'TerrainEventListenerInterface'
  end function

  recursive subroutine TerrainEventListenerInterface_jm_onTerrainEvent_1(this, j_trackingEvent)
    class(TerrainEventListenerInterface), target :: this
    class(TerrainEvent), target, optional :: j_trackingEvent
    error stop 'AbstractMethodError: TerrainEventListenerInterface.onTerrainEvent'
  end subroutine
end module TerrainEventListenerInterface_m

