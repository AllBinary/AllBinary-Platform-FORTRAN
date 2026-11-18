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
module NullAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use NullAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: NullAIFactory
  contains
    procedure :: jm_getInstance_3 => NullAIFactory_jm_getInstance_3
  end type

  class(NullAI), pointer, save :: NullAIFactory_jcell_NULL_AI => null()
  logical, save :: NullAIFactory_jset_NULL_AI = .false.

contains

  function NullAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullAIFactory)
      jresult => object
    end select
  end function

  function NullAIFactory_jstatic_NULL_AI() result(jresult)
    class(NullAI), pointer :: jresult
    if (.not. NullAIFactory_jset_NULL_AI) then
      NullAIFactory_jset_NULL_AI = .true.
      NullAIFactory_jcell_NULL_AI => NullAI_jnew_0()
    end if
    jresult => NullAIFactory_jcell_NULL_AI
  end function

  subroutine NullAIFactory_jsetstatic_NULL_AI(jvalue)
    class(NullAI), target, optional :: jvalue
    NullAIFactory_jset_NULL_AI = .true.
    if (present(jvalue)) then
      NullAIFactory_jcell_NULL_AI => jvalue
    else
      NullAIFactory_jcell_NULL_AI => null()
    end if
  end subroutine

  function NullAIFactory_jnew_0() result(this)
    class(NullAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullAIFactory'
  end function

  recursive function NullAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(NullAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => NullAIFactory_jstatic_NULL_AI()
        return
  end function

  recursive function NullAIFactory_jm_getInstance_0() result(jresult)
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => NullAIFactory_jstatic_NULL_AI()
        return
  end function
end module NullAIFactory_m

