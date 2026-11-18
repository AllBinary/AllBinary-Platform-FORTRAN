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
module HealthVisitorInterface_m
  use JR_m
  use HealthInterface_m
  implicit none

  type, extends(JObject) :: HealthVisitorInterface
  contains
    procedure :: jm_visit_1 => HealthVisitorInterface_jm_visit_1
  end type


contains

  function HealthVisitorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthVisitorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthVisitorInterface)
      jresult => object
    end select
  end function

  function HealthVisitorInterface_jnew_0() result(this)
    class(HealthVisitorInterface), pointer :: this
    allocate(this)
    this%jclass = 'HealthVisitorInterface'
  end function

  recursive subroutine HealthVisitorInterface_jm_visit_1(this, j_healthInterface)
    class(HealthVisitorInterface), target :: this
    class(HealthInterface), target, optional :: j_healthInterface
    error stop 'AbstractMethodError: HealthVisitorInterface.visit'
  end subroutine
end module HealthVisitorInterface_m

