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
module DamageFloaters_m
  use JR_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: DamageFloaters
  contains
    procedure :: jm_add_1 => DamageFloaters_jm_add_1
  end type

  class(DamageFloaters), pointer, save :: DamageFloaters_jcell_SINGLETON => null()
  logical, save :: DamageFloaters_jset_SINGLETON = .false.

contains

  function DamageFloaters_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DamageFloaters), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DamageFloaters)
      jresult => object
    end select
  end function

  function DamageFloaters_jstatic_SINGLETON() result(jresult)
    class(DamageFloaters), pointer :: jresult
    if (.not. DamageFloaters_jset_SINGLETON) then
      DamageFloaters_jset_SINGLETON = .true.
      DamageFloaters_jcell_SINGLETON => DamageFloaters_jnew_0()
    end if
    jresult => DamageFloaters_jcell_SINGLETON
  end function

  subroutine DamageFloaters_jsetstatic_SINGLETON(jvalue)
    class(DamageFloaters), target, optional :: jvalue
    DamageFloaters_jset_SINGLETON = .true.
    if (present(jvalue)) then
      DamageFloaters_jcell_SINGLETON => jvalue
    else
      DamageFloaters_jcell_SINGLETON => null()
    end if
  end subroutine

  function DamageFloaters_jnew_0() result(this)
    class(DamageFloaters), pointer :: this
    allocate(this)
    this%jclass = 'DamageFloaters'
  end function

  recursive function DamageFloaters_jm_getInstance_0() result(jresult)
    class(DamageFloaters), pointer :: jresult
        jresult => DamageFloaters_jstatic_SINGLETON()
        return
  end function

  recursive subroutine DamageFloaters_jm_add_1(this, j_damage)
    class(DamageFloaters), target :: this
    integer(4), value :: j_damage
    continue
  end subroutine
end module DamageFloaters_m

function DamageFloaters_jnew_0_jext() result(this)
  use DamageFloaters_m, only: JObject, DamageFloaters_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DamageFloaters_jnew_0()
end function

