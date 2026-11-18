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
module DamageUtil_m
  use JR_m
  use CollidableCompositeLayer_m
  use CollidableDestroyableDamageableLayer_m
  use LogUtil_m
  use StringMaker_m
  use DamageableInterface_m
  implicit none

  type, extends(JObject) :: DamageUtil
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_COLLIDE
  contains
    procedure :: jm_process_2 => DamageUtil_jm_process_2
    procedure :: jm_debugDamage_2 => DamageUtil_jm_debugDamage_2
  end type

  class(DamageUtil), pointer, save :: DamageUtil_jcell_instance => null()
  logical, save :: DamageUtil_jset_instance = .false.

contains

  function DamageUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DamageUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DamageUtil)
      jresult => object
    end select
  end function

  function DamageUtil_jstatic_instance() result(jresult)
    class(DamageUtil), pointer :: jresult
    if (.not. DamageUtil_jset_instance) then
      DamageUtil_jset_instance = .true.
      DamageUtil_jcell_instance => DamageUtil_jnew_0()
    end if
    jresult => DamageUtil_jcell_instance
  end function

  subroutine DamageUtil_jsetstatic_instance(jvalue)
    class(DamageUtil), target, optional :: jvalue
    DamageUtil_jset_instance = .true.
    if (present(jvalue)) then
      DamageUtil_jcell_instance => jvalue
    else
      DamageUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function DamageUtil_jnew_0() result(this)
    class(DamageUtil), pointer :: this
    allocate(this)
    this%jclass = 'DamageUtil'
    this%f_COLLIDE = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_COLLIDE = 'collide'
        continue
  end function

  recursive function DamageUtil_jm_getInstance_0() result(jresult)
    class(DamageUtil), pointer :: jresult
        jresult => DamageUtil_jstatic_instance()
        return
  end function

  recursive subroutine DamageUtil_jm_process_2(this, j_damageableInterface, j_damageableInterface2)
    class(DamageUtil), target :: this
    class(DamageableInterface), target, optional :: j_damageableInterface
    class(DamageableInterface), target, optional :: j_damageableInterface2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_damageableInterface%jm_damage_2(j_damageableInterface2%jm_getDamage_1(0), 0)
  end subroutine

  recursive subroutine DamageUtil_jm_debugDamage_2(this, j_collidableInterfaceCompositeInterface1, j_collidableInterfaceCompositeInterface)
    class(DamageUtil), target :: this
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface1
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    integer(4) :: j_damage
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(j_collidableInterfaceCompositeInterface)
        j_damage = j_collidableDestroyableDamageableLayer%jm_getDamage_1(0)
        if ((j_damage > 20000)) then
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1('Collision ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_collidableInterfaceCompositeInterface1%jm_toString_0())
            jdiscardRef => j_stringBuffer%jm_append_1(' with: ')
            jdiscardRef => j_stringBuffer%jm_append_1(j_collidableInterfaceCompositeInterface%jm_toString_0())
            jdiscardRef => j_stringBuffer%jm_append_1(' damage: ')
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_damage)
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), j_collidableInterfaceCompositeInterface1, this%f_COLLIDE)
        end if
  end subroutine
end module DamageUtil_m

