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
module PickupableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: PickupableInterface
  end type


contains

  function PickupableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupableInterface)
      jresult => object
    end select
  end function

  function PickupableInterface_jnew_0() result(this)
    class(PickupableInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickupableInterface'
  end function
end module PickupableInterface_m

