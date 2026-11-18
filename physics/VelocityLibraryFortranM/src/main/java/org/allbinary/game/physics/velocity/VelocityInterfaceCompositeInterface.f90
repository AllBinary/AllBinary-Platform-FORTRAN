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
! package org.allbinary.game.physics.velocity
module VelocityInterfaceCompositeInterface_m
  use JR_m
  use BasicVelocityProperties_m
  implicit none

  type, extends(JObject) :: VelocityInterfaceCompositeInterface
  contains
    procedure :: jm_getVelocityProperties_0 => VelocityInterfaceCompositeInterface_jm_getVelocityProperties_0
  end type


contains

  function VelocityInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VelocityInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VelocityInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function VelocityInterfaceCompositeInterface_jnew_0() result(this)
    class(VelocityInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'VelocityInterfaceCompositeInterface'
  end function

  recursive function VelocityInterfaceCompositeInterface_jm_getVelocityProperties_0(this) result(jresult)
    class(VelocityInterfaceCompositeInterface), target :: this
    class(BasicVelocityProperties), pointer :: jresult
    error stop 'AbstractMethodError: VelocityInterfaceCompositeInterface.getVelocityProperties'
  end function
end module VelocityInterfaceCompositeInterface_m

