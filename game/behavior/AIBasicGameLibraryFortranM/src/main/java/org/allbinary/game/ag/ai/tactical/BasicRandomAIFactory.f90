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
! package org.allbinary.game.ag.ai.tactical
module BasicRandomAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use BasicAI_m
  use InputProbability_m
  use GameInput_m
  use AllBinaryLayer_m
  use Visitor_m
  use ABHashtable_m
  use BasicRandomAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: BasicRandomAIFactory
  contains
    procedure :: jm_getInstance_3 => BasicRandomAIFactory_jm_getInstance_3
  end type


contains

  function BasicRandomAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicRandomAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicRandomAIFactory)
      jresult => object
    end select
  end function

  function BasicRandomAIFactory_jnew_0() result(this)
    class(BasicRandomAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicRandomAIFactory'
  end function

  recursive function BasicRandomAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(BasicRandomAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    class(Visitor), pointer :: j_visitor
    class(InputProbability), pointer :: j_inputProbability
        j_visitor => Visitor_jcast(j_hashtable%jm_get_1(BasicAI_jstatic_AI_VISITOR()))
        if ((.not. associated(j_visitor))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_inputProbability => InputProbability_jcast(j_hashtable%jm_get_1(InputProbability_jstatic_INPUT_PROBABILITY()))
        jresult => BasicRandomAI_jnew_4(j_ownerLayerInterface, j_gameInput, j_inputProbability, j_visitor)
        return
  end function
end module BasicRandomAIFactory_m

