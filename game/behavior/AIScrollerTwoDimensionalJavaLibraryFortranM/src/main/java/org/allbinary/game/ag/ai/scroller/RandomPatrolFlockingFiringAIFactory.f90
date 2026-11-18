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
module RandomPatrolFlockingFiringAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArrayAI_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use RandomPatrolAI_m
  use TimedFireAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: RandomPatrolFlockingFiringAIFactory
  contains
    procedure :: jm_getInstance_3 => RandomPatrolFlockingFiringAIFactory_jm_getInstance_3
  end type


contains

  function RandomPatrolFlockingFiringAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RandomPatrolFlockingFiringAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RandomPatrolFlockingFiringAIFactory)
      jresult => object
    end select
  end function

  function RandomPatrolFlockingFiringAIFactory_jnew_0() result(this)
    class(RandomPatrolFlockingFiringAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'RandomPatrolFlockingFiringAIFactory'
  end function

  recursive function RandomPatrolFlockingFiringAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(RandomPatrolFlockingFiringAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    type(JRef), allocatable :: j_artificialIntelligenceInterface(:)
        j_artificialIntelligenceInterface = JR_newRefArray(2)
        j_artificialIntelligenceInterface((0) + 1)%v => RandomPatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput)
        j_artificialIntelligenceInterface((1) + 1)%v => TimedFireAI_jnew_3(1800, j_ownerLayerInterface, j_gameInput)
        jresult => ArrayAI_jnew_3(j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput)
        return
  end function
end module RandomPatrolFlockingFiringAIFactory_m

