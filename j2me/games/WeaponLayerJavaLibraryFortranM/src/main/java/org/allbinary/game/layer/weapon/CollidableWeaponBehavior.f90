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
! package org.allbinary.game.layer.weapon
module CollidableWeaponBehavior_m
  use JR_m
  use CollidableHelperFactory_m
  use CollidableInterfaceCompositeInterface_m
  use CollisionHelper_m
  use CollisionType_m
  use CollisionTypeFactory_m
  use DamageableInterface_m
  use CollidableCompositeLayer_m
  use CollidableDestroyableDamageableBehavior_m
  use AllBinaryLayer_m
  use NullUtil_m
  implicit none

  type, extends(CollidableDestroyableDamageableBehavior) :: CollidableWeaponBehavior
    logical :: f_collided = .false.
    class(CollisionHelper), pointer :: f_collisionHelper => null()
  contains
    procedure :: jm_init_1 => CollidableWeaponBehavior_jm_init_1
    procedure :: jm_isCollision_2 => CollidableWeaponBehavior_jm_isCollision_2
    procedure :: jm_collide_2 => CollidableWeaponBehavior_jm_collide_2
    procedure :: jm_isCollisionInterface_2 => CollidableWeaponBehavior_jm_isCollisionInterface_2
    procedure :: jm_collideInterface_2 => CollidableWeaponBehavior_jm_collideInterface_2
    procedure :: jm_getCollisionTypeWith_1 => CollidableWeaponBehavior_jm_getCollisionTypeWith_1
    procedure :: jm_isCollided_0 => CollidableWeaponBehavior_jm_isCollided_0
    procedure :: jm_setCollided_1 => CollidableWeaponBehavior_jm_setCollided_1
  end type

  class(JObject), pointer, save :: CollidableWeaponBehavior_jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR => null()
  logical, save :: CollidableWeaponBehavior_jset_NULL_COLLIDABLE_WEAPON_BEHAVIOR = .false.

contains

  function CollidableWeaponBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableWeaponBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableWeaponBehavior)
      jresult => object
    end select
  end function

  function CollidableWeaponBehavior_jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. CollidableWeaponBehavior_jset_NULL_COLLIDABLE_WEAPON_BEHAVIOR) then
      CollidableWeaponBehavior_jset_NULL_COLLIDABLE_WEAPON_BEHAVIOR = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    CollidableWeaponBehavior_jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR => jtemp1%f_NULL_OBJECT
    end if
    jresult => CollidableWeaponBehavior_jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR
  end function

  subroutine CollidableWeaponBehavior_jsetstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR(jvalue)
    class(JObject), target, optional :: jvalue
    CollidableWeaponBehavior_jset_NULL_COLLIDABLE_WEAPON_BEHAVIOR = .true.
    if (present(jvalue)) then
      CollidableWeaponBehavior_jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR => jvalue
    else
      CollidableWeaponBehavior_jcell_NULL_COLLIDABLE_WEAPON_BEHAVIOR => null()
    end if
  end subroutine

  recursive function CollidableWeaponBehavior_jnew_1(j_collidable) result(this)
    logical, value :: j_collidable
    class(CollidableWeaponBehavior), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CollidableWeaponBehavior'
    
    
        continue ! super()
        call this%jm_setCollided_1(.false.)
        call this%jm_setCollidable_1(.true.)
        this%f_collisionHelper => CollidableHelperFactory_jm_getInstance_0()
  end function

  recursive function CollidableWeaponBehavior_jm_getNullInstance_0() result(jresult)
    class(CollidableWeaponBehavior), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(CollidableWeaponBehavior_jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR(), jtemp2%f_NULL_OBJECT)) then
            call CollidableWeaponBehavior_jsetstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR(CollidableWeaponBehavior_jnew_1(.false.))
        end if
        jresult => CollidableWeaponBehavior_jcast(CollidableWeaponBehavior_jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR())
        return
  end function

  recursive subroutine CollidableWeaponBehavior_jm_init_1(this, j_sourceLayerInterface)
    class(CollidableWeaponBehavior), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setCollided_1(.false.)
        call this%f_collisionHelper%jm_setOwnerLayerInterface_1(j_sourceLayerInterface)
  end subroutine

  recursive function CollidableWeaponBehavior_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableWeaponBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        if (this%f_collisionHelper%jm_isCollidable_1(j_collidableInterfaceCompositeInterface)) then
            if ((j_ownerLayer%jm_getGroupInterface_0()((0) + 1) /= j_collidableInterfaceCompositeInterface%jm_getGroupInterface_0()((0) + 1))) then
                jresult = this%CollidableDestroyableDamageableBehavior%jm_isCollision_2(j_ownerLayer, j_collidableInterfaceCompositeInterface)
                return
            end if
        end if
        jresult = .false.
        return
  end function

  recursive subroutine CollidableWeaponBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableWeaponBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%CollidableDestroyableDamageableBehavior%jm_collide_2(j_ownerLayer, j_collidableInterfaceCompositeInterface)
        this%f_collided = .true.
  end subroutine

  recursive function CollidableWeaponBehavior_jm_isCollisionInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableWeaponBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
    class(AllBinaryLayer), pointer :: j_layerInterface
        if (this%f_collisionHelper%jm_isCollidable_1(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface))) then
            j_layerInterface => AllBinaryLayer_jcast(j_collidableInterfaceCompositeInterface)
            if ((j_ownerLayer%jm_getGroupInterface_0()((0) + 1) /= j_layerInterface%jm_getGroupInterface_0()((0) + 1))) then
                if (this%f_layerCollisionUtil%jm_isCollision_2(j_ownerLayer, j_layerInterface)) then
                    jresult = .true.
                    return
                end if
            end if
        end if
        jresult = .false.
        return
  end function

  recursive subroutine CollidableWeaponBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableWeaponBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    class(DamageableInterface), pointer :: j_ownerDamageableInterface
    class(DamageableInterface), pointer :: j_damageableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerDamageableInterface => DamageableInterface_jcast(j_ownerLayer)
        j_damageableInterface => DamageableInterface_jcast(j_collidableInterfaceCompositeInterface)
        call this%f_damageUtil%jm_process_2(j_ownerDamageableInterface, j_damageableInterface)
        this%f_collided = .true.
  end subroutine

  recursive function CollidableWeaponBehavior_jm_getCollisionTypeWith_1(this, j_layerInterface) result(jresult)
    class(CollidableWeaponBehavior), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(CollisionType), pointer :: jresult
    class(CollisionTypeFactory), pointer :: jtemp3
        jtemp3 => CollisionTypeFactory_jm_getInstance_0()
        jresult => jtemp3%f_COLLISION
        return
  end function

  recursive function CollidableWeaponBehavior_jm_isCollided_0(this) result(jresult)
    class(CollidableWeaponBehavior), target :: this
    logical :: jresult
        jresult = this%f_collided
        return
  end function

  recursive subroutine CollidableWeaponBehavior_jm_setCollided_1(this, j_collided)
    class(CollidableWeaponBehavior), target :: this
    logical, value :: j_collided
        this%f_collided = j_collided
  end subroutine
end module CollidableWeaponBehavior_m

function CollidableWeaponBehavior_jnew_1_jext(p1) result(this)
  use CollidableWeaponBehavior_m, only: JObject, CollidableWeaponBehavior_jnew_1
  implicit none
      logical, value :: p1
  class(JObject), pointer :: this
  this => CollidableWeaponBehavior_jnew_1(p1)
end function

