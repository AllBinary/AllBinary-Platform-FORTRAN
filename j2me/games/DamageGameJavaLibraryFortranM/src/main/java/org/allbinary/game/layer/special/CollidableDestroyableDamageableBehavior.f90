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
! package org.allbinary.game.layer.special
module CollidableDestroyableDamageableBehavior_m
  use JR_m
  use CollidableBaseBehavior_m
  use CollidableInterfaceCompositeInterface_m
  use DamageUtil_m
  use CollidableCompositeLayer_m
  use ForcedLogUtil_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(CollidableBaseBehavior) :: CollidableDestroyableDamageableBehavior
    class(DamageUtil), pointer :: f_damageUtil => null()
  contains
    procedure :: jm_isCollision_2 => CollidableDestroyableDamageableBehavior_jm_isCollision_2
    procedure :: jm_collide_2 => CollidableDestroyableDamageableBehavior_jm_collide_2
    procedure :: jm_isCollisionInterface_2 => CollidableDestroyableDamageableBehavior_jm_isCollisionInterface_2
    procedure :: jm_collideInterface_2 => CollidableDestroyableDamageableBehavior_jm_collideInterface_2
  end type


contains

  function CollidableDestroyableDamageableBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableDestroyableDamageableBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableDestroyableDamageableBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableDestroyableDamageableBehavior_jnew_1(j_collidable) result(this)
    logical, value :: j_collidable
    class(CollidableDestroyableDamageableBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CollidableDestroyableDamageableBehavior'
    this%f_damageUtil => DamageUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive function CollidableDestroyableDamageableBehavior_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableDestroyableDamageableBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        if ((j_ownerLayer%jm_getGroupInterface_0()((0) + 1) /= j_collidableInterfaceCompositeInterface%jm_getGroupInterface_0()((0) + 1))) then
            jresult = this%CollidableBaseBehavior%jm_isCollision_2(j_ownerLayer, j_collidableInterfaceCompositeInterface)
            return
        end if
        jresult = .false.
        return
  end function

  recursive subroutine CollidableDestroyableDamageableBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableDestroyableDamageableBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    class(CollidableDestroyableDamageableLayer), pointer :: j_ownerCollidableDestroyableDamageableLayer
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerCollidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(j_ownerLayer)
        j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(j_collidableInterfaceCompositeInterface)
        call j_ownerCollidableDestroyableDamageableLayer%jm_damage_2(j_collidableDestroyableDamageableLayer%jm_getDamage_1(0), 0)
  end subroutine

  recursive function CollidableDestroyableDamageableBehavior_jm_isCollisionInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableDestroyableDamageableBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2('No Longer Used', this)
        jresult = .false.
        return
  end function

  recursive subroutine CollidableDestroyableDamageableBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableDestroyableDamageableBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2('No Longer Used', this)
  end subroutine
end module CollidableDestroyableDamageableBehavior_m

function CollidableDestroyableDamageableBehavior_jnew_1_jext(p1) result(this)
  use CollidableDestroyableDamageableBehavior_m, only: JObject, CollidableDestroyableDamageableBehavior_jnew_1
  implicit none
      logical, value :: p1
  class(JObject), pointer :: this
  this => CollidableDestroyableDamageableBehavior_jnew_1(p1)
end function

