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
module KeyPressesAIFactory_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceInterfaceFactoryInterface_m
  use InputFeatureFactory_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use MultiKeyPressesAI_m
  use KeyPressesAI_m
  implicit none

  type, extends(ArtificialIntelligenceInterfaceFactoryInterface) :: KeyPressesAIFactory
  contains
    procedure :: jm_getInstance_3 => KeyPressesAIFactory_jm_getInstance_3
  end type


contains

  function KeyPressesAIFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyPressesAIFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyPressesAIFactory)
      jresult => object
    end select
  end function

  function KeyPressesAIFactory_jnew_0() result(this)
    class(KeyPressesAIFactory), pointer :: this
    allocate(this)
    this%jclass = 'KeyPressesAIFactory'
  end function

  recursive function KeyPressesAIFactory_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(KeyPressesAIFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    logical :: j_isSingleKeyProcessing
    class(InputFeatureFactory), pointer :: jtemp1
        jtemp1 => InputFeatureFactory_jm_getInstance_0()
        j_isSingleKeyProcessing = jtemp1%jm_isSingleKeyProcessing_0()
        if (j_isSingleKeyProcessing) then
            jresult => KeyPressesAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput)
            return
        else
            jresult => MultiKeyPressesAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput)
            return
        end if
  end function
end module KeyPressesAIFactory_m

