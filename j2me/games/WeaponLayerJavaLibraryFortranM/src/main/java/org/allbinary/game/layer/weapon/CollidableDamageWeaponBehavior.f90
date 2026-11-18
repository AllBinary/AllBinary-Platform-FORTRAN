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
module CollidableDamageWeaponBehavior_m
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
  implicit none

  type, extends(CollidableDestroyableDamageableBehavior) :: CollidableDamageWeaponBehavior
    logical :: f_collided = .false.
    class(CollisionHelper), pointer :: f_collisionHelper => null()
  contains
    procedure :: jm_init_1 => CollidableDamageWeaponBehavior_jm_init_1
    procedure :: jm_isCollision_2 => CollidableDamageWeaponBehavior_jm_isCollision_2
    procedure :: jm_collide_2 => CollidableDamageWeaponBehavior_jm_collide_2
    procedure :: jm_isCollisionInterface_2 => CollidableDamageWeaponBehavior_jm_isCollisionInterface_2
    procedure :: jm_collideInterface_2 => CollidableDamageWeaponBehavior_jm_collideInterface_2
    procedure :: jm_getCollisionTypeWith_1 => CollidableDamageWeaponBehavior_jm_getCollisionTypeWith_1
    procedure :: jm_isCollided_0 => CollidableDamageWeaponBehavior_jm_isCollided_0
    procedure :: jm_setCollided_1 => CollidableDamageWeaponBehavior_jm_setCollided_1
  end type


contains

  function CollidableDamageWeaponBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableDamageWeaponBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableDamageWeaponBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableDamageWeaponBehavior_jnew_1(j_collidable) result(this)
    logical, value :: j_collidable
    class(CollidableDamageWeaponBehavior), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CollidableDamageWeaponBehavior'
    
    
        continue ! super()
        call this%jm_setCollided_1(.false.)
        call this%jm_setCollidable_1(.true.)
        this%f_collisionHelper => CollidableHelperFactory_jm_getInstance_0()
  end function

  recursive subroutine CollidableDamageWeaponBehavior_jm_init_1(this, j_sourceLayerInterface)
    class(CollidableDamageWeaponBehavior), target :: this
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

  recursive function CollidableDamageWeaponBehavior_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableDamageWeaponBehavior), target :: this
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

  recursive subroutine CollidableDamageWeaponBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableDamageWeaponBehavior), target :: this
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

  recursive function CollidableDamageWeaponBehavior_jm_isCollisionInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableDamageWeaponBehavior), target :: this
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

  recursive subroutine CollidableDamageWeaponBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableDamageWeaponBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_damageUtil%jm_process_2(DamageableInterface_jcast(j_ownerLayer), DamageableInterface_jcast(j_collidableInterfaceCompositeInterface))
        this%f_collided = .true.
  end subroutine

  recursive function CollidableDamageWeaponBehavior_jm_getCollisionTypeWith_1(this, j_layerInterface) result(jresult)
    class(CollidableDamageWeaponBehavior), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(CollisionType), pointer :: jresult
    class(CollisionTypeFactory), pointer :: jtemp1
        jtemp1 => CollisionTypeFactory_jm_getInstance_0()
        jresult => jtemp1%f_COLLISION
        return
  end function

  recursive function CollidableDamageWeaponBehavior_jm_isCollided_0(this) result(jresult)
    class(CollidableDamageWeaponBehavior), target :: this
    logical :: jresult
        jresult = this%f_collided
        return
  end function

  recursive subroutine CollidableDamageWeaponBehavior_jm_setCollided_1(this, j_collided)
    class(CollidableDamageWeaponBehavior), target :: this
    logical, value :: j_collided
        this%f_collided = j_collided
  end subroutine
end module CollidableDamageWeaponBehavior_m

function CollidableDamageWeaponBehavior_jnew_1_jext(p1) result(this)
  use CollidableDamageWeaponBehavior_m, only: JObject, CollidableDamageWeaponBehavior_jnew_1
  implicit none
      logical, value :: p1
  class(JObject), pointer :: this
  this => CollidableDamageWeaponBehavior_jnew_1(p1)
end function

