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
! package org.allbinary.game.combat
module CombatBaseBehavior_m
  use JR_m
  use DamageableBaseBehavior_m
  use DestroyableBaseBehavior_m
  implicit none

  type, extends(JObject) :: CombatBaseBehavior
    class(DamageableBaseBehavior), pointer :: f_damageableBaseBehavior => null()
    class(DestroyableBaseBehavior), pointer :: f_destroyableBaseBehavior => null()
    logical :: f_readyForExplosion = .false.
  contains
    procedure :: jm_getDamageableBaseBehavior_0 => CombatBaseBehavior_jm_getDamageableBaseBehavior_0
    procedure :: jm_getDestroyableBaseBehavior_0 => CombatBaseBehavior_jm_getDestroyableBaseBehavior_0
    procedure :: jm_isReadyForExplosion_0 => CombatBaseBehavior_jm_isReadyForExplosion_0
    procedure :: jm_setReadyForExplosion_1 => CombatBaseBehavior_jm_setReadyForExplosion_1
  end type

  class(CombatBaseBehavior), pointer, save :: CombatBaseBehavior_jcell_NULL_COMBAT_BEHAVIOR => null()
  logical, save :: CombatBaseBehavior_jset_NULL_COMBAT_BEHAVIOR = .false.

contains

  function CombatBaseBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CombatBaseBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CombatBaseBehavior)
      jresult => object
    end select
  end function

  function CombatBaseBehavior_jstatic_NULL_COMBAT_BEHAVIOR() result(jresult)
    class(CombatBaseBehavior), pointer :: jresult
    if (.not. CombatBaseBehavior_jset_NULL_COMBAT_BEHAVIOR) then
      CombatBaseBehavior_jset_NULL_COMBAT_BEHAVIOR = .true.
      CombatBaseBehavior_jcell_NULL_COMBAT_BEHAVIOR => CombatBaseBehavior_jnew_2(DamageableBaseBehavior_jm_getInstance_0(), DestroyableBaseBehavior_jm_getInstance_0())
    end if
    jresult => CombatBaseBehavior_jcell_NULL_COMBAT_BEHAVIOR
  end function

  subroutine CombatBaseBehavior_jsetstatic_NULL_COMBAT_BEHAVIOR(jvalue)
    class(CombatBaseBehavior), target, optional :: jvalue
    CombatBaseBehavior_jset_NULL_COMBAT_BEHAVIOR = .true.
    if (present(jvalue)) then
      CombatBaseBehavior_jcell_NULL_COMBAT_BEHAVIOR => jvalue
    else
      CombatBaseBehavior_jcell_NULL_COMBAT_BEHAVIOR => null()
    end if
  end subroutine

  recursive function CombatBaseBehavior_jnew_2(j_damageableBaseBehavior, j_destroyableBaseBehavior) result(this)
    class(DamageableBaseBehavior), target, optional :: j_damageableBaseBehavior
    class(DestroyableBaseBehavior), target, optional :: j_destroyableBaseBehavior
    class(CombatBaseBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CombatBaseBehavior'
    
    
    
        this%f_damageableBaseBehavior => j_damageableBaseBehavior
        this%f_destroyableBaseBehavior => j_destroyableBaseBehavior
  end function

  recursive function CombatBaseBehavior_jm_getDamageableBaseBehavior_0(this) result(jresult)
    class(CombatBaseBehavior), target :: this
    class(DamageableBaseBehavior), pointer :: jresult
        jresult => this%f_damageableBaseBehavior
        return
  end function

  recursive function CombatBaseBehavior_jm_getDestroyableBaseBehavior_0(this) result(jresult)
    class(CombatBaseBehavior), target :: this
    class(DestroyableBaseBehavior), pointer :: jresult
        jresult => this%f_destroyableBaseBehavior
        return
  end function

  recursive function CombatBaseBehavior_jm_isReadyForExplosion_0(this) result(jresult)
    class(CombatBaseBehavior), target :: this
    logical :: jresult
        jresult = this%f_readyForExplosion
        return
  end function

  recursive subroutine CombatBaseBehavior_jm_setReadyForExplosion_1(this, j_readyForExplosion)
    class(CombatBaseBehavior), target :: this
    logical, value :: j_readyForExplosion
        this%f_readyForExplosion = j_readyForExplosion
  end subroutine
end module CombatBaseBehavior_m

