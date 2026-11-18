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
! package org.allbinary.game.ag.life
module LifeVisitorInterface_m
  use JR_m
  use Life_m
  implicit none

  type, extends(JObject) :: LifeVisitorInterface
  contains
    procedure :: jm_visit_1 => LifeVisitorInterface_jm_visit_1
  end type


contains

  function LifeVisitorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeVisitorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeVisitorInterface)
      jresult => object
    end select
  end function

  function LifeVisitorInterface_jnew_0() result(this)
    class(LifeVisitorInterface), pointer :: this
    allocate(this)
    this%jclass = 'LifeVisitorInterface'
  end function

  recursive subroutine LifeVisitorInterface_jm_visit_1(this, j_lifeInterface)
    class(LifeVisitorInterface), target :: this
    class(Life), target, optional :: j_lifeInterface
    error stop 'AbstractMethodError: LifeVisitorInterface.visit'
  end subroutine
end module LifeVisitorInterface_m

