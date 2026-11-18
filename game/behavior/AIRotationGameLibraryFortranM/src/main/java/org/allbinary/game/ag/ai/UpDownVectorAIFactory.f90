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
module UpDownVectorAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use UpDownVectorAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: UpDownVectorAIFactory
  contains
    procedure :: jm_getInstance_3 => UpDownVectorAIFactory_jm_getInstance_3
  end type


contains

  function UpDownVectorAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpDownVectorAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpDownVectorAIFactory)
      jresult => object
    end select
  end function

  function UpDownVectorAIFactory_jnew_0() result(this)
    class(UpDownVectorAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'UpDownVectorAIFactory'
  end function

  recursive function UpDownVectorAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(UpDownVectorAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => UpDownVectorAI_jnew_2(j_ownerLayerInterface, j_gameInput)
        return
  end function
end module UpDownVectorAIFactory_m

