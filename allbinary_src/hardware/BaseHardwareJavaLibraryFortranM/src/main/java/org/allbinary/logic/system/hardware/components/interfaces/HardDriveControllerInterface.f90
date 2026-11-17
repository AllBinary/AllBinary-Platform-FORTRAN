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
module HardDriveControllerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: HardDriveControllerInterface
  end type


contains

  function HardDriveControllerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardDriveControllerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardDriveControllerInterface)
      jresult => object
    end select
  end function

  function HardDriveControllerInterface_jnew_0() result(this)
    class(HardDriveControllerInterface), pointer :: this
    allocate(this)
    this%jclass = 'HardDriveControllerInterface'
  end function
end module HardDriveControllerInterface_m

