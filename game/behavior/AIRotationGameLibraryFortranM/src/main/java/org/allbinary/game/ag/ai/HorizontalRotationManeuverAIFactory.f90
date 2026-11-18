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
module HorizontalRotationManeuverAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use HorizontaRotationManeuverAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: HorizontalRotationManeuverAIFactory
  contains
    procedure :: jm_getInstance_3 => HorizontalRotationManeuverAIFactory_jm_getInstance_3
  end type


contains

  function HorizontalRotationManeuverAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HorizontalRotationManeuverAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HorizontalRotationManeuverAIFactory)
      jresult => object
    end select
  end function

  function HorizontalRotationManeuverAIFactory_jnew_0() result(this)
    class(HorizontalRotationManeuverAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'HorizontalRotationManeuverAIFactory'
  end function

  recursive function HorizontalRotationManeuverAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(HorizontalRotationManeuverAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => HorizontaRotationManeuverAI_jnew_2(j_ownerLayerInterface, j_gameInput)
        return
  end function
end module HorizontalRotationManeuverAIFactory_m

