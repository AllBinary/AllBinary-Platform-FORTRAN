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
module PickedUpLayerInterface_m
  use JR_m
  use LayerInterface_m
  use PickedUpLayerInterfaceFactoryInterface_m
  implicit none

  type, extends(LayerInterface) :: PickedUpLayerInterface
  contains
    procedure :: jm_getPickedUpLayerInterfaceFactoryInterface_0 => PickedUpLayerInterface_jm_getPickedUpLayerInterfaceFactoryInterface_0
    procedure :: jm_setPickedUp_0 => PickedUpLayerInterface_jm_setPickedUp_0
  end type


contains

  function PickedUpLayerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerInterface)
      jresult => object
    end select
  end function

  function PickedUpLayerInterface_jnew_0() result(this)
    class(PickedUpLayerInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickedUpLayerInterface'
  end function

  recursive function PickedUpLayerInterface_jm_getPickedUpLayerInterfaceFactoryInterface_0(this) result(jresult)
    class(PickedUpLayerInterface), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    error stop 'AbstractMethodError: PickedUpLayerInterface.getPickedUpLayerInterfaceFactoryInterface'
  end function

  recursive subroutine PickedUpLayerInterface_jm_setPickedUp_0(this)
    class(PickedUpLayerInterface), target :: this
    error stop 'AbstractMethodError: PickedUpLayerInterface.setPickedUp'
  end subroutine
end module PickedUpLayerInterface_m

