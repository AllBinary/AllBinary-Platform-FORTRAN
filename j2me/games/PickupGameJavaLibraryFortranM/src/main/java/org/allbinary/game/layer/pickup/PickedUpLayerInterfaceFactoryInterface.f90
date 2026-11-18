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
module PickedUpLayerInterfaceFactoryInterface_m
  use JR_m
  use Animation_m
  use AllBinaryLayer_m
  use PickedUpLayerType_m
  implicit none

  type, extends(JObject) :: PickedUpLayerInterfaceFactoryInterface
  contains
    procedure :: jm_getPickedUpLayerType_0 => PickedUpLayerInterfaceFactoryInterface_jm_getPickedUpLayerType_0
    procedure :: jm_getIconLayer_0 => PickedUpLayerInterfaceFactoryInterface_jm_getIconLayer_0
    procedure :: jm_getAnimationInterface_0 => PickedUpLayerInterfaceFactoryInterface_jm_getAnimationInterface_0
  end type


contains

  function PickedUpLayerInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function PickedUpLayerInterfaceFactoryInterface_jnew_0() result(this)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickedUpLayerInterfaceFactoryInterface'
  end function

  recursive function PickedUpLayerInterfaceFactoryInterface_jm_getPickedUpLayerType_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), target :: this
    class(PickedUpLayerType), pointer :: jresult
    error stop 'AbstractMethodError: PickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType'
  end function

  recursive function PickedUpLayerInterfaceFactoryInterface_jm_getIconLayer_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), target :: this
    class(AllBinaryLayer), pointer :: jresult
    error stop 'AbstractMethodError: PickedUpLayerInterfaceFactoryInterface.getIconLayer'
  end function

  recursive function PickedUpLayerInterfaceFactoryInterface_jm_getAnimationInterface_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), target :: this
    class(Animation), pointer :: jresult
    error stop 'AbstractMethodError: PickedUpLayerInterfaceFactoryInterface.getAnimationInterface'
  end function
end module PickedUpLayerInterfaceFactoryInterface_m

