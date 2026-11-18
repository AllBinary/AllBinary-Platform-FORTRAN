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
! package org.allbinary.game.layer.pickup
module PickedUpLayerInterfaceFactory_m
  use JR_m
  use Animation_m
  use AllBinaryLayer_m
  use PickedUpLayerInterfaceFactoryBase_m
  use PickedUpLayerType_m
  use IconLayer_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactoryBase) :: PickedUpLayerInterfaceFactory
    class(PickedUpLayerType), pointer :: f_pickedUpLayerType => null()
    class(IconLayer), pointer :: f_iconLayer => null()
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_getIconLayer_0 => PickedUpLayerInterfaceFactory_jm_getIconLayer_0
    procedure :: jm_getAnimationInterface_0 => PickedUpLayerInterfaceFactory_jm_getAnimationInterface_0
    procedure :: jm_getPickedUpLayerType_0 => PickedUpLayerInterfaceFactory_jm_getPickedUpLayerType_0
  end type


contains

  function PickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function PickedUpLayerInterfaceFactory_jnew_3(j_pickeUpLayerType, j_iconLayer, j_animationInterface) result(this)
    class(PickedUpLayerType), target, optional :: j_pickeUpLayerType
    class(IconLayer), target, optional :: j_iconLayer
    class(Animation), target, optional :: j_animationInterface
    class(PickedUpLayerInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'PickedUpLayerInterfaceFactory'
    
    
    
        this%f_pickedUpLayerType => j_pickeUpLayerType
        this%f_animationInterface => j_animationInterface
        this%f_iconLayer => j_iconLayer
  end function

  recursive function PickedUpLayerInterfaceFactory_jm_getIconLayer_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_iconLayer
        return
  end function

  recursive function PickedUpLayerInterfaceFactory_jm_getAnimationInterface_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactory), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive function PickedUpLayerInterfaceFactory_jm_getPickedUpLayerType_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactory), target :: this
    class(PickedUpLayerType), pointer :: jresult
        jresult => this%f_pickedUpLayerType
        return
  end function
end module PickedUpLayerInterfaceFactory_m

