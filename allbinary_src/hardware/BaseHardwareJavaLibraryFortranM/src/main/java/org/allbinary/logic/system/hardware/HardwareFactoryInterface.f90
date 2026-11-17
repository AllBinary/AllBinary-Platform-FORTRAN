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
! package org.allbinary.logic.system.hardware
module HardwareFactoryInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: HardwareFactoryInterface
  end type


contains

  function HardwareFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardwareFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardwareFactoryInterface)
      jresult => object
    end select
  end function

  function HardwareFactoryInterface_jnew_0() result(this)
    class(HardwareFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'HardwareFactoryInterface'
  end function
end module HardwareFactoryInterface_m

