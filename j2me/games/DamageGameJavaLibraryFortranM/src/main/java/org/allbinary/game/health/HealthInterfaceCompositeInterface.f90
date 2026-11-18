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
! package org.allbinary.game.health
module HealthInterfaceCompositeInterface_m
  use JR_m
  use Health_m
  implicit none

  type, extends(JObject) :: HealthInterfaceCompositeInterface
  contains
    procedure :: jm_getHealthInterface_0 => HealthInterfaceCompositeInterface_jm_getHealthInterface_0
  end type


contains

  function HealthInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function HealthInterfaceCompositeInterface_jnew_0() result(this)
    class(HealthInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'HealthInterfaceCompositeInterface'
  end function

  recursive function HealthInterfaceCompositeInterface_jm_getHealthInterface_0(this) result(jresult)
    class(HealthInterfaceCompositeInterface), target :: this
    class(Health), pointer :: jresult
    error stop 'AbstractMethodError: HealthInterfaceCompositeInterface.getHealthInterface'
  end function
end module HealthInterfaceCompositeInterface_m

