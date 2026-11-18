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
! package org.allbinary.game.ag.ai.scroller
module TerrainPatrolAI_m
  use JR_m
  use GameInput_m
  use BasicTerrainInfo_m
  use TerrainEvent_m
  use TerrainEventCircularStaticPool_m
  use TerrainEventHandler_m
  use TerrainEventListener_m
  use AllBinaryLayer_m
  use Angle_m
  use AngleFactory_m
  use ABHashtable_m
  use BasicArrayList_m
  use PacePatrolAI_m
  implicit none

  type, extends(PacePatrolAI) :: TerrainPatrolAI
    class(TerrainEventListener), pointer :: f_terrainEventListener => null()
    class(Angle), pointer :: f_DOWN => null()
    class(BasicTerrainInfo), pointer :: f_CLIFF => null()
  contains
    procedure :: jm_update_0 => TerrainPatrolAI_jm_update_0
    procedure :: jm_changeDirectionIfCliffReached_0 => TerrainPatrolAI_jm_changeDirectionIfCliffReached_0
  end type


contains

  function TerrainPatrolAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainPatrolAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainPatrolAI)
      jresult => object
    end select
  end function

  recursive function TerrainPatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(TerrainPatrolAI), pointer :: this
    class(TerrainEventHandler), pointer :: jtemp2
    class(TerrainEventCircularStaticPool), pointer :: jtemp3
    class(AngleFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TerrainPatrolAI'
    this%f_terrainEventListener => TerrainEventListener_jnew_0()
    jtemp1 => AngleFactory_jm_getInstance_0()
    this%f_DOWN => jtemp1%f_DOWN
    this%f_CLIFF => BasicTerrainInfo_jnew_1(this%f_DOWN)
        continue ! super()
        jtemp2 => TerrainEventHandler_jm_getInstance_1(j_ownerLayerInterface)
        call jtemp2%jm_addListener_1(this%f_terrainEventListener)
        jtemp3 => TerrainEventCircularStaticPool_jm_getInstance_0()
        call this%f_terrainEventListener%jm_onTerrainEvent_1(jtemp3%jm_getNext_1(this%f_CLIFF))
  end function

  recursive subroutine TerrainPatrolAI_jm_update_0(this)
    class(TerrainPatrolAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%PacePatrolAI%jm_update_0()
        call this%jm_changeDirectionIfCliffReached_0()
  end subroutine

  recursive subroutine TerrainPatrolAI_jm_changeDirectionIfCliffReached_0(this)
    class(TerrainPatrolAI), target :: this
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(TerrainEvent), pointer :: j_terrainEvent
    class(BasicTerrainInfo), pointer :: j_basicTerrainInfo
    class(Angle), pointer :: j_angle
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%f_terrainEventListener%jm_getList_0()
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_terrainEvent => TerrainEvent_jcast(j_list%jm_removeAt_1(j_index))
            j_basicTerrainInfo => j_terrainEvent%jm_getBasicTerrainInfo_0()
            j_angle => j_basicTerrainInfo%jm_getAngle_0()
            if (JR_same(j_angle, this%f_DOWN)) then
                call this%jm_nextDirection_0()
                if ((.not. this%f_isFollowLimitedByTerrain)) then
                    call this%f_logUtil%jm_putF_3('Following Limited', this, 'onTerrainEvent')
                    this%f_isFollowLimitedByTerrain = .true.
                end if
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module TerrainPatrolAI_m

