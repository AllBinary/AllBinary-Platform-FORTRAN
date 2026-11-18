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
! package org.allbinary.game.ag.ai.sequence
module NumberLayersSequenceAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use NumberLayersSequenceAI_m
  implicit none

  type, extends(JObject) :: NumberLayersSequenceAIFactory
  contains
    procedure :: jm_getInstance_4 => NumberLayersSequenceAIFactory_jm_getInstance_4
  end type


contains

  function NumberLayersSequenceAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberLayersSequenceAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberLayersSequenceAIFactory)
      jresult => object
    end select
  end function

  function NumberLayersSequenceAIFactory_jnew_0() result(this)
    class(NumberLayersSequenceAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'NumberLayersSequenceAIFactory'
  end function

  recursive function NumberLayersSequenceAIFactory_jm_getInstance_4(this, j_numberOfEnemiesLeft, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(NumberLayersSequenceAIFactory), target :: this
    integer(4), value :: j_numberOfEnemiesLeft
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => NumberLayersSequenceAI_jnew_4(j_numberOfEnemiesLeft, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput)
        return
  end function
end module NumberLayersSequenceAIFactory_m

