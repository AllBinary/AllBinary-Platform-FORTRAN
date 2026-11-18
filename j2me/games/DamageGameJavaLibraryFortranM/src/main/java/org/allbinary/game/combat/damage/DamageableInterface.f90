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
! package org.allbinary.game.combat.damage
module DamageableInterface_m
  use JR_m
  use NamedInterface_m
  implicit none

  type, extends(NamedInterface) :: DamageableInterface
  contains
    procedure :: jm_damage_2 => DamageableInterface_jm_damage_2
    procedure :: jm_getDamage_1 => DamageableInterface_jm_getDamage_1
  end type


contains

  function DamageableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DamageableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DamageableInterface)
      jresult => object
    end select
  end function

  function DamageableInterface_jnew_0() result(this)
    class(DamageableInterface), pointer :: this
    allocate(this)
    this%jclass = 'DamageableInterface'
  end function

  recursive subroutine DamageableInterface_jm_damage_2(this, j_damage, j_damageType)
    class(DamageableInterface), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
    error stop 'AbstractMethodError: DamageableInterface.damage'
  end subroutine

  recursive function DamageableInterface_jm_getDamage_1(this, j_damageType) result(jresult)
    class(DamageableInterface), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
    error stop 'AbstractMethodError: DamageableInterface.getDamage'
  end function
end module DamageableInterface_m

