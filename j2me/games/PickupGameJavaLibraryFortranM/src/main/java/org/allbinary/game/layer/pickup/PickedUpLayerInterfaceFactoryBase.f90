! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module PickedUpLayerInterfaceFactoryBase_m
  use JR_m
  use Animation_m
  use AllBinaryLayer_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerType_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactoryInterface) :: PickedUpLayerInterfaceFactoryBase
  contains
    procedure :: jm_getIconLayer_0 => PickedUpLayerInterfaceFactoryBase_jm_getIconLayer_0
    procedure :: jm_getAnimationInterface_0 => PickedUpLayerInterfaceFactoryBase_jm_getAnimationInterface_0
    procedure :: jm_getPickedUpLayerType_0 => PickedUpLayerInterfaceFactoryBase_jm_getPickedUpLayerType_0
  end type

  class(PickedUpLayerInterfaceFactoryBase), pointer, save :: PickedUpLayerInterfaceFactoryBase_jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE => null()
  logical, save :: PickedUpLayerInterfaceFactoryBase_jset_NULL_PICKED_UP_LAYER_FACTORY_BASE = .false.

contains

  function PickedUpLayerInterfaceFactoryBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickedUpLayerInterfaceFactoryBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickedUpLayerInterfaceFactoryBase)
      jresult => object
    end select
  end function

  function PickedUpLayerInterfaceFactoryBase_jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE() result(jresult)
    class(PickedUpLayerInterfaceFactoryBase), pointer :: jresult
    if (.not. PickedUpLayerInterfaceFactoryBase_jset_NULL_PICKED_UP_LAYER_FACTORY_BASE) then
      PickedUpLayerInterfaceFactoryBase_jset_NULL_PICKED_UP_LAYER_FACTORY_BASE = .true.
      PickedUpLayerInterfaceFactoryBase_jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE => PickedUpLayerInterfaceFactoryBase_jnew_0()
    end if
    jresult => PickedUpLayerInterfaceFactoryBase_jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE
  end function

  subroutine PickedUpLayerInterfaceFactoryBase_jsetstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE(jvalue)
    class(PickedUpLayerInterfaceFactoryBase), target, optional :: jvalue
    PickedUpLayerInterfaceFactoryBase_jset_NULL_PICKED_UP_LAYER_FACTORY_BASE = .true.
    if (present(jvalue)) then
      PickedUpLayerInterfaceFactoryBase_jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE => jvalue
    else
      PickedUpLayerInterfaceFactoryBase_jcell_NULL_PICKED_UP_LAYER_FACTORY_BASE => null()
    end if
  end subroutine

  function PickedUpLayerInterfaceFactoryBase_jnew_0() result(this)
    class(PickedUpLayerInterfaceFactoryBase), pointer :: this
    allocate(this)
    this%jclass = 'PickedUpLayerInterfaceFactoryBase'
  end function

  recursive function PickedUpLayerInterfaceFactoryBase_jm_getIconLayer_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryBase), target :: this
    class(AllBinaryLayer), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function PickedUpLayerInterfaceFactoryBase_jm_getAnimationInterface_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryBase), target :: this
    class(Animation), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function PickedUpLayerInterfaceFactoryBase_jm_getPickedUpLayerType_0(this) result(jresult)
    class(PickedUpLayerInterfaceFactoryBase), target :: this
    class(PickedUpLayerType), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module PickedUpLayerInterfaceFactoryBase_m

