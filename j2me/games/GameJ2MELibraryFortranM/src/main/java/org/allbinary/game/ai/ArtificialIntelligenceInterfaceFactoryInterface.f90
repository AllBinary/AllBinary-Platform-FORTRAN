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
! package org.allbinary.game.ai
module ArtificialIntelligenceInterfaceFactoryInterface_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use ABHashtable_m
  implicit none

  type, extends(JObject) :: ArtificialIntelligenceInterfaceFactoryInterface
  contains
    procedure :: jm_getInstance_3 => ArtificialIntelligenceInterfaceFactoryInterface_jm_getInstance_3
  end type


contains

  function ArtificialIntelligenceInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceInterfaceFactoryInterface_jnew_0() result(this)
    class(ArtificialIntelligenceInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceInterfaceFactoryInterface'
  end function

  recursive function ArtificialIntelligenceInterfaceFactoryInterface_jm_getInstance_3(this, j_hashtable, j_ownerLayerInterface, j_gameInput) result(jresult)
    class(ArtificialIntelligenceInterfaceFactoryInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArtificialIntelligenceInterface), pointer :: jresult
    error stop 'AbstractMethodError: ArtificialIntelligenceInterfaceFactoryInterface.getInstance'
  end function
end module ArtificialIntelligenceInterfaceFactoryInterface_m

