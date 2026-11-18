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
module HealthInterface_m
  use JR_m
  use HealthListenerInterface_m
  implicit none

  type, extends(JObject) :: HealthInterface
  contains
    procedure :: jm_isAlive_0 => HealthInterface_jm_isAlive_0
    procedure :: jm_damage_1 => HealthInterface_jm_damage_1
    procedure :: jm_heal_1 => HealthInterface_jm_heal_1
    procedure :: jm_healMax_0 => HealthInterface_jm_healMax_0
    procedure :: jm_getMaxHealth_0 => HealthInterface_jm_getMaxHealth_0
    procedure :: jm_setMaxHealth_1 => HealthInterface_jm_setMaxHealth_1
    procedure :: jm_getHealth_0 => HealthInterface_jm_getHealth_0
    procedure :: jm_addListener_1 => HealthInterface_jm_addListener_1
  end type


contains

  function HealthInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthInterface)
      jresult => object
    end select
  end function

  function HealthInterface_jnew_0() result(this)
    class(HealthInterface), pointer :: this
    allocate(this)
    this%jclass = 'HealthInterface'
  end function

  recursive function HealthInterface_jm_isAlive_0(this) result(jresult)
    class(HealthInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: HealthInterface.isAlive'
  end function

  recursive subroutine HealthInterface_jm_damage_1(this, j_ahealth)
    class(HealthInterface), target :: this
    integer(4), value :: j_ahealth
    error stop 'AbstractMethodError: HealthInterface.damage'
  end subroutine

  recursive subroutine HealthInterface_jm_heal_1(this, j_ahealth)
    class(HealthInterface), target :: this
    integer(4), value :: j_ahealth
    error stop 'AbstractMethodError: HealthInterface.heal'
  end subroutine

  recursive subroutine HealthInterface_jm_healMax_0(this)
    class(HealthInterface), target :: this
    error stop 'AbstractMethodError: HealthInterface.healMax'
  end subroutine

  recursive function HealthInterface_jm_getMaxHealth_0(this) result(jresult)
    class(HealthInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: HealthInterface.getMaxHealth'
  end function

  recursive subroutine HealthInterface_jm_setMaxHealth_1(this, j_maxHealth)
    class(HealthInterface), target :: this
    integer(4), value :: j_maxHealth
    error stop 'AbstractMethodError: HealthInterface.setMaxHealth'
  end subroutine

  recursive function HealthInterface_jm_getHealth_0(this) result(jresult)
    class(HealthInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: HealthInterface.getHealth'
  end function

  recursive subroutine HealthInterface_jm_addListener_1(this, j_healthListenerInterface)
    class(HealthInterface), target :: this
    class(HealthListenerInterface), target, optional :: j_healthListenerInterface
    error stop 'AbstractMethodError: HealthInterface.addListener'
  end subroutine
end module HealthInterface_m

