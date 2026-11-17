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
module HardDriveInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: HardDriveInterface
  end type


contains

  function HardDriveInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardDriveInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardDriveInterface)
      jresult => object
    end select
  end function

  function HardDriveInterface_jnew_0() result(this)
    class(HardDriveInterface), pointer :: this
    allocate(this)
    this%jclass = 'HardDriveInterface'
  end function
end module HardDriveInterface_m

