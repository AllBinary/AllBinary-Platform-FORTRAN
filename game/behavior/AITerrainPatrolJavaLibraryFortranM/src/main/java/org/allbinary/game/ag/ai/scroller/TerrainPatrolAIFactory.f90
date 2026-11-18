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
module TerrainPatrolAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use SmallIntegerSingletonFactory_m
  use ABHashtable_m
  use BasePatrolAI_m
  use TerrainPatrolAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: TerrainPatrolAIFactory
  contains
    procedure :: jm_getInstance_3 => TerrainPatrolAIFactory_jm_getInstance_3
  end type


contains

  function TerrainPatrolAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainPatrolAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainPatrolAIFactory)
      jresult => object
    end select
  end function

  function TerrainPatrolAIFactory_jnew_0() result(this)
    class(TerrainPatrolAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'TerrainPatrolAIFactory'
  end function

  recursive function TerrainPatrolAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(TerrainPatrolAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
        jdiscardRef => j_hashtable%jm_put_2(BasePatrolAI_jstatic_MAX_DISTANCE(), jtemp1%jm_getAt_1(220))
        jresult => TerrainPatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput)
        return
  end function
end module TerrainPatrolAIFactory_m

