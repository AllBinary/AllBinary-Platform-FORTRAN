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
module HealthListenerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: HealthListenerInterface
  contains
    procedure :: jm_onHealthChange_0 => HealthListenerInterface_jm_onHealthChange_0
  end type


contains

  function HealthListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthListenerInterface)
      jresult => object
    end select
  end function

  function HealthListenerInterface_jnew_0() result(this)
    class(HealthListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'HealthListenerInterface'
  end function

  recursive subroutine HealthListenerInterface_jm_onHealthChange_0(this)
    class(HealthListenerInterface), target :: this
    error stop 'AbstractMethodError: HealthListenerInterface.onHealthChange'
  end subroutine
end module HealthListenerInterface_m

