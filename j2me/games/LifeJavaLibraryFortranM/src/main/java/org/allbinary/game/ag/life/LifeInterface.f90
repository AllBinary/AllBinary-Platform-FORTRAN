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
module LifeInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: LifeInterface
  contains
    procedure :: jm_get_0 => LifeInterface_jm_get_0
    procedure :: jm_set_1 => LifeInterface_jm_set_1
    procedure :: jm_reset_0 => LifeInterface_jm_reset_0
    procedure :: jm_add_1 => LifeInterface_jm_add_1
    procedure :: jm_deaths_1 => LifeInterface_jm_deaths_1
    procedure :: jm_getMaxlives_0 => LifeInterface_jm_getMaxlives_0
    procedure :: jm_isAlive_0 => LifeInterface_jm_isAlive_0
  end type


contains

  function LifeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeInterface)
      jresult => object
    end select
  end function

  function LifeInterface_jnew_0() result(this)
    class(LifeInterface), pointer :: this
    allocate(this)
    this%jclass = 'LifeInterface'
  end function

  recursive function LifeInterface_jm_get_0(this) result(jresult)
    class(LifeInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LifeInterface.get'
  end function

  recursive subroutine LifeInterface_jm_set_1(this, j_lives)
    class(LifeInterface), target :: this
    integer(4), value :: j_lives
    error stop 'AbstractMethodError: LifeInterface.set'
  end subroutine

  recursive subroutine LifeInterface_jm_reset_0(this)
    class(LifeInterface), target :: this
    error stop 'AbstractMethodError: LifeInterface.reset'
  end subroutine

  recursive subroutine LifeInterface_jm_add_1(this, j_lives)
    class(LifeInterface), target :: this
    integer(4), value :: j_lives
    error stop 'AbstractMethodError: LifeInterface.add'
  end subroutine

  recursive subroutine LifeInterface_jm_deaths_1(this, j_lives)
    class(LifeInterface), target :: this
    integer(4), value :: j_lives
    error stop 'AbstractMethodError: LifeInterface.deaths'
  end subroutine

  recursive function LifeInterface_jm_getMaxlives_0(this) result(jresult)
    class(LifeInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LifeInterface.getMaxlives'
  end function

  recursive function LifeInterface_jm_isAlive_0(this) result(jresult)
    class(LifeInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LifeInterface.isAlive'
  end function
end module LifeInterface_m

