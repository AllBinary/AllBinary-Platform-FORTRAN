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
module PickupBehaviorInterface_m
  use JR_m
  use PickupProcessorInterface_m
  use PickedUpLayerInterface_m
  implicit none

  type, extends(JObject) :: PickupBehaviorInterface
  contains
    procedure :: jm_doPickup_1 => PickupBehaviorInterface_jm_doPickup_1
    procedure :: jm_doPickupLayer_1 => PickupBehaviorInterface_jm_doPickupLayer_1
  end type


contains

  function PickupBehaviorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupBehaviorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupBehaviorInterface)
      jresult => object
    end select
  end function

  function PickupBehaviorInterface_jnew_0() result(this)
    class(PickupBehaviorInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickupBehaviorInterface'
  end function

  recursive subroutine PickupBehaviorInterface_jm_doPickup_1(this, j_pickupProcessorInterface)
    class(PickupBehaviorInterface), target :: this
    class(PickupProcessorInterface), target, optional :: j_pickupProcessorInterface
    error stop 'AbstractMethodError: PickupBehaviorInterface.doPickup'
  end subroutine

  recursive subroutine PickupBehaviorInterface_jm_doPickupLayer_1(this, j_pickupLayerInterface)
    class(PickupBehaviorInterface), target :: this
    class(PickedUpLayerInterface), target, optional :: j_pickupLayerInterface
    error stop 'AbstractMethodError: PickupBehaviorInterface.doPickupLayer'
  end subroutine
end module PickupBehaviorInterface_m

