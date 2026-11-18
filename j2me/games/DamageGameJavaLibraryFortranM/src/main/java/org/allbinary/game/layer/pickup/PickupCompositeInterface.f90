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
module PickupCompositeInterface_m
  use JR_m
  use PickupBehavior_m
  implicit none

  type, extends(JObject) :: PickupCompositeInterface
  contains
    procedure :: jm_getPickupBehavior_0 => PickupCompositeInterface_jm_getPickupBehavior_0
    procedure :: jm_setPickupBehavior_1 => PickupCompositeInterface_jm_setPickupBehavior_1
  end type


contains

  function PickupCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupCompositeInterface)
      jresult => object
    end select
  end function

  function PickupCompositeInterface_jnew_0() result(this)
    class(PickupCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickupCompositeInterface'
  end function

  recursive function PickupCompositeInterface_jm_getPickupBehavior_0(this) result(jresult)
    class(PickupCompositeInterface), target :: this
    class(PickupBehavior), pointer :: jresult
    error stop 'AbstractMethodError: PickupCompositeInterface.getPickupBehavior'
  end function

  recursive subroutine PickupCompositeInterface_jm_setPickupBehavior_1(this, j_pickupBehavior)
    class(PickupCompositeInterface), target :: this
    class(PickupBehavior), target, optional :: j_pickupBehavior
    error stop 'AbstractMethodError: PickupCompositeInterface.setPickupBehavior'
  end subroutine
end module PickupCompositeInterface_m

