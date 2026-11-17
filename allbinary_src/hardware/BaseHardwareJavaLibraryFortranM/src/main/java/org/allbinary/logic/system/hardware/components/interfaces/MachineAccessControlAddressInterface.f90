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
module MachineAccessControlAddressInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: MachineAccessControlAddressInterface
  end type


contains

  function MachineAccessControlAddressInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MachineAccessControlAddressInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MachineAccessControlAddressInterface)
      jresult => object
    end select
  end function

  function MachineAccessControlAddressInterface_jnew_0() result(this)
    class(MachineAccessControlAddressInterface), pointer :: this
    allocate(this)
    this%jclass = 'MachineAccessControlAddressInterface'
  end function
end module MachineAccessControlAddressInterface_m

