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
! package org.allbinary.game.ag.ai
module LurchRotationAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use LurchRotationAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: LurchRotationAIFactory
  contains
    procedure :: jm_getInstance_3 => LurchRotationAIFactory_jm_getInstance_3
  end type


contains

  function LurchRotationAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LurchRotationAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LurchRotationAIFactory)
      jresult => object
    end select
  end function

  function LurchRotationAIFactory_jnew_0() result(this)
    class(LurchRotationAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'LurchRotationAIFactory'
  end function

  recursive function LurchRotationAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(LurchRotationAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => LurchRotationAI_jnew_2(j_ownerLayerInterface, j_gameInput)
        return
  end function
end module LurchRotationAIFactory_m

