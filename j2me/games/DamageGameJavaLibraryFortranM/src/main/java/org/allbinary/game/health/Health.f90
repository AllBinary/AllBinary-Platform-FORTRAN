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
module Health_m
  use JR_m
  use ForcedLogUtil_m
  use StringMaker_m
  use CommonSeps_m
  use HealthInterface_m
  use NullHealthListener_m
  use HealthListenerInterface_m
  implicit none

  type, extends(HealthInterface) :: Health
    integer(4) :: f_health = 0
    integer(4) :: f_maxHealth = 0
    class(HealthListenerInterface), pointer :: f_healthListenerInterface => null()
  contains
    procedure :: jm_heal_1 => Health_jm_heal_1
    procedure :: jm_healMax_0 => Health_jm_healMax_0
    procedure :: jm_isDamaged_0 => Health_jm_isDamaged_0
    procedure :: jm_damage_1 => Health_jm_damage_1
    procedure :: jm_isAlive_0 => Health_jm_isAlive_0
    procedure :: jm_getMaxHealth_0 => Health_jm_getMaxHealth_0
    procedure :: jm_setMaxHealth_1 => Health_jm_setMaxHealth_1
    procedure :: jm_setHealth_1 => Health_jm_setHealth_1
    procedure :: jm_getHealth_0 => Health_jm_getHealth_0
    procedure :: jm_addListener_1 => Health_jm_addListener_1
    procedure :: jm_toString_0 => Health_jm_toString_0
  end type

  class(Health), pointer, save :: Health_jcell_NULL_HEALTH => null()
  logical, save :: Health_jset_NULL_HEALTH = .false.
  character(len=:), allocatable, save :: Health_jcell_NAME
  logical, save :: Health_jset_NAME = .false.
  character(len=:), allocatable, save :: Health_jcell_HEALTH_LABEL
  logical, save :: Health_jset_HEALTH_LABEL = .false.
  character(len=:), allocatable, save :: Health_jcell_MAX_HEALTH_LABEL
  logical, save :: Health_jset_MAX_HEALTH_LABEL = .false.

contains

  function Health_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Health), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Health)
      jresult => object
    end select
  end function

  function Health_jstatic_NULL_HEALTH() result(jresult)
    class(Health), pointer :: jresult
    if (.not. Health_jset_NULL_HEALTH) then
      Health_jset_NULL_HEALTH = .true.
      Health_jcell_NULL_HEALTH => Health_jnew_1(0)
    end if
    jresult => Health_jcell_NULL_HEALTH
  end function

  subroutine Health_jsetstatic_NULL_HEALTH(jvalue)
    class(Health), target, optional :: jvalue
    Health_jset_NULL_HEALTH = .true.
    if (present(jvalue)) then
      Health_jcell_NULL_HEALTH => jvalue
    else
      Health_jcell_NULL_HEALTH => null()
    end if
  end subroutine

  function Health_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. Health_jset_NAME) then
      Health_jset_NAME = .true.
      Health_jcell_NAME = 'Health Resource'
    end if
    jresult = Health_jcell_NAME
  end function

  subroutine Health_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    Health_jset_NAME = .true.
    Health_jcell_NAME = jvalue
  end subroutine

  function Health_jstatic_HEALTH_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. Health_jset_HEALTH_LABEL) then
      Health_jset_HEALTH_LABEL = .true.
      Health_jcell_HEALTH_LABEL = 'Health: '
    end if
    jresult = Health_jcell_HEALTH_LABEL
  end function

  subroutine Health_jsetstatic_HEALTH_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    Health_jset_HEALTH_LABEL = .true.
    Health_jcell_HEALTH_LABEL = jvalue
  end subroutine

  function Health_jstatic_MAX_HEALTH_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. Health_jset_MAX_HEALTH_LABEL) then
      Health_jset_MAX_HEALTH_LABEL = .true.
      Health_jcell_MAX_HEALTH_LABEL = ' Max: '
    end if
    jresult = Health_jcell_MAX_HEALTH_LABEL
  end function

  subroutine Health_jsetstatic_MAX_HEALTH_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    Health_jset_MAX_HEALTH_LABEL = .true.
    Health_jcell_MAX_HEALTH_LABEL = jvalue
  end subroutine

  recursive function Health_jnew_1(j_maxHealth) result(this)
    integer(4), value :: j_maxHealth
    class(Health), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Health'
    
    
    this%f_healthListenerInterface => NullHealthListener_jstatic_NULL_HEALTH_LISTENER()
        call this%jm_setMaxHealth_1(j_maxHealth)
        call this%jm_setHealth_1(j_maxHealth)
  end function

  recursive subroutine Health_jm_heal_1(this, j_ahealth)
    class(Health), target :: this
    integer(4), value :: j_ahealth
    integer(4) :: j_newHealth
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_newHealth = (this%jm_getHealth_0() + j_ahealth)
        if ((j_newHealth > this%jm_getMaxHealth_0())) then
            call this%jm_setHealth_1(this%jm_getMaxHealth_0())
        else
            call this%jm_setHealth_1(j_newHealth)
        end if
  end subroutine

  recursive subroutine Health_jm_healMax_0(this)
    class(Health), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setHealth_1(this%jm_getMaxHealth_0())
  end subroutine

  recursive function Health_jm_isDamaged_0(this) result(jresult)
    class(Health), target :: this
    logical :: jresult
        if ((this%jm_getHealth_0() /= this%jm_getMaxHealth_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine Health_jm_damage_1(this, j_ahealth)
    class(Health), target :: this
    integer(4), value :: j_ahealth
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_health
    class(CommonSeps), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_ahealth < 0)) then
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1('******* Trying to heal when damaging. Damage: ')
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_ahealth)
            jtemp1 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_SPACE)
            jdiscardRef => j_stringBuffer%jm_append_1(this%jm_toString_0())
            call ForcedLogUtil_jm_log_2(j_stringBuffer%jm_toString_0(), this)
            return
        end if
        j_health = (this%jm_getHealth_0() - j_ahealth)
        call this%jm_setHealth_1(j_health)
  end subroutine

  recursive function Health_jm_isAlive_0(this) result(jresult)
    class(Health), target :: this
    logical :: jresult
        if ((this%jm_getHealth_0() <= 0)) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive function Health_jm_getMaxHealth_0(this) result(jresult)
    class(Health), target :: this
    integer(4) :: jresult
        jresult = this%f_maxHealth
        return
  end function

  recursive subroutine Health_jm_setMaxHealth_1(this, j_maxHealth)
    class(Health), target :: this
    integer(4), value :: j_maxHealth
        this%f_maxHealth = j_maxHealth
  end subroutine

  recursive subroutine Health_jm_setHealth_1(this, j_health)
    class(Health), target :: this
    integer(4), value :: j_health
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_health > this%jm_getMaxHealth_0())) then
            this%f_health = this%jm_getMaxHealth_0()
        else if ((j_health < 0)) then
            this%f_health = 0
        else
            this%f_health = j_health
        end if
        if (associated(this%f_healthListenerInterface)) then
            call this%f_healthListenerInterface%jm_onHealthChange_0()
        end if
  end subroutine

  recursive function Health_jm_getHealth_0(this) result(jresult)
    class(Health), target :: this
    integer(4) :: jresult
        jresult = this%f_health
        return
  end function

  recursive subroutine Health_jm_addListener_1(this, j_healthListenerInterface)
    class(Health), target :: this
    class(HealthListenerInterface), target, optional :: j_healthListenerInterface
        this%f_healthListenerInterface => j_healthListenerInterface
  end subroutine

  recursive function Health_jm_toString_0(this) result(jresult)
    class(Health), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(Health_jstatic_HEALTH_LABEL())
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_health)
        jdiscardRef => j_stringBuffer%jm_append_1(Health_jstatic_MAX_HEALTH_LABEL())
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_maxHealth)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Health_m

