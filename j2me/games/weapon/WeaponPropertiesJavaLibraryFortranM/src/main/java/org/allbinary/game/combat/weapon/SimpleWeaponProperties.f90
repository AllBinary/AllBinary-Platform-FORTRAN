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
! package org.allbinary.game.combat.weapon
module SimpleWeaponProperties_m
  use JR_m
  implicit none

  type, extends(JObject) :: SimpleWeaponProperties
    integer(4) :: f_damage = 0
    integer(4) :: f_dissipation = 0
    integer(4) :: f_range = 0
  contains
    procedure :: jm_set_1 => SimpleWeaponProperties_jm_set_1
    procedure :: jm_setDamage_1 => SimpleWeaponProperties_jm_setDamage_1
    procedure :: jm_getDamage_0 => SimpleWeaponProperties_jm_getDamage_0
    procedure :: jm_setDissipation_1 => SimpleWeaponProperties_jm_setDissipation_1
    procedure :: jm_getDissipation_0 => SimpleWeaponProperties_jm_getDissipation_0
    procedure :: jm_getRange_0 => SimpleWeaponProperties_jm_getRange_0
    procedure :: jm_setRange_1 => SimpleWeaponProperties_jm_setRange_1
  end type


contains

  function SimpleWeaponProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleWeaponProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleWeaponProperties)
      jresult => object
    end select
  end function

  function SimpleWeaponProperties_jnew_0() result(this)
    class(SimpleWeaponProperties), pointer :: this
    allocate(this)
    this%jclass = 'SimpleWeaponProperties'
    
    
    
  end function

  recursive subroutine SimpleWeaponProperties_jm_set_1(this, j_simpleWeaponProperties)
    class(SimpleWeaponProperties), target :: this
    class(SimpleWeaponProperties), target, optional :: j_simpleWeaponProperties
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setDamage_1(j_simpleWeaponProperties%jm_getDamage_0())
        call this%jm_setDissipation_1(j_simpleWeaponProperties%jm_getDissipation_0())
        call this%jm_setRange_1(j_simpleWeaponProperties%jm_getRange_0())
  end subroutine

  recursive subroutine SimpleWeaponProperties_jm_setDamage_1(this, j_damage)
    class(SimpleWeaponProperties), target :: this
    integer(4), value :: j_damage
        this%f_damage = j_damage
  end subroutine

  recursive function SimpleWeaponProperties_jm_getDamage_0(this) result(jresult)
    class(SimpleWeaponProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_damage
        return
  end function

  recursive subroutine SimpleWeaponProperties_jm_setDissipation_1(this, j_dissipation)
    class(SimpleWeaponProperties), target :: this
    integer(4), value :: j_dissipation
        this%f_dissipation = j_dissipation
  end subroutine

  recursive function SimpleWeaponProperties_jm_getDissipation_0(this) result(jresult)
    class(SimpleWeaponProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_dissipation
        return
  end function

  recursive function SimpleWeaponProperties_jm_getRange_0(this) result(jresult)
    class(SimpleWeaponProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_range
        return
  end function

  recursive subroutine SimpleWeaponProperties_jm_setRange_1(this, j_range)
    class(SimpleWeaponProperties), target :: this
    integer(4), value :: j_range
        this%f_range = j_range
  end subroutine
end module SimpleWeaponProperties_m

