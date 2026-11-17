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
! package org.allbinary.logic.system.hardware.components.interfaces
module BridgeInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: BridgeInterface
  end type


contains

  function BridgeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BridgeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BridgeInterface)
      jresult => object
    end select
  end function

  function BridgeInterface_jnew_0() result(this)
    class(BridgeInterface), pointer :: this
    allocate(this)
    this%jclass = 'BridgeInterface'
  end function
end module BridgeInterface_m

