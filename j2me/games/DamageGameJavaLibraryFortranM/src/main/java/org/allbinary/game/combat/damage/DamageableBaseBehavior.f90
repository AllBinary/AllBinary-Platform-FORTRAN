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
module DamageableBaseBehavior_m
  use JR_m
  use DamageableInterface_m
  implicit none

  type, extends(DamageableInterface) :: DamageableBaseBehavior
  contains
    procedure :: jm_getName_0 => DamageableBaseBehavior_jm_getName_0
    procedure :: jm_damage_2 => DamageableBaseBehavior_jm_damage_2
    procedure :: jm_getDamage_1 => DamageableBaseBehavior_jm_getDamage_1
  end type

  class(DamageableBaseBehavior), pointer, save :: DamageableBaseBehavior_jcell_instance => null()
  logical, save :: DamageableBaseBehavior_jset_instance = .false.

contains

  function DamageableBaseBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DamageableBaseBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DamageableBaseBehavior)
      jresult => object
    end select
  end function

  function DamageableBaseBehavior_jstatic_instance() result(jresult)
    class(DamageableBaseBehavior), pointer :: jresult
    if (.not. DamageableBaseBehavior_jset_instance) then
      DamageableBaseBehavior_jset_instance = .true.
      DamageableBaseBehavior_jcell_instance => DamageableBaseBehavior_jnew_0()
    end if
    jresult => DamageableBaseBehavior_jcell_instance
  end function

  subroutine DamageableBaseBehavior_jsetstatic_instance(jvalue)
    class(DamageableBaseBehavior), target, optional :: jvalue
    DamageableBaseBehavior_jset_instance = .true.
    if (present(jvalue)) then
      DamageableBaseBehavior_jcell_instance => jvalue
    else
      DamageableBaseBehavior_jcell_instance => null()
    end if
  end subroutine

  function DamageableBaseBehavior_jnew_0() result(this)
    class(DamageableBaseBehavior), pointer :: this
    allocate(this)
    this%jclass = 'DamageableBaseBehavior'
  end function

  recursive function DamageableBaseBehavior_jm_getInstance_0() result(jresult)
    class(DamageableBaseBehavior), pointer :: jresult
        jresult => DamageableBaseBehavior_jstatic_instance()
        return
  end function

  recursive function DamageableBaseBehavior_jm_getName_0(this) result(jresult)
    class(DamageableBaseBehavior), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp1
        jtemp1 = JR_className(this)
        jresult = jtemp1
        return
  end function

  recursive subroutine DamageableBaseBehavior_jm_damage_2(this, j_damage, j_damageType)
    class(DamageableBaseBehavior), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
    continue
  end subroutine

  recursive function DamageableBaseBehavior_jm_getDamage_1(this, j_damageType) result(jresult)
    class(DamageableBaseBehavior), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
        jresult = 6000
        return
  end function
end module DamageableBaseBehavior_m

