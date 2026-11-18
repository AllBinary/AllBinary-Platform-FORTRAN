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
module CollidableCharacterBehavior_m
  use JR_m
  use CollidableInterfaceCompositeInterface_m
  use CollisionType_m
  use CollisionTypeFactory_m
  use CollidableCompositeLayer_m
  use PickedUpLayerInterface_m
  use ForcedLogUtil_m
  use CollidableDestroyableDamageableBehavior_m
  use CollidableDestroyableDamageableLayer_m
  implicit none

  type, extends(CollidableDestroyableDamageableBehavior) :: CollidableCharacterBehavior
  contains
    procedure :: jm_collide_2 => CollidableCharacterBehavior_jm_collide_2
    procedure :: jm_collideInterface_2 => CollidableCharacterBehavior_jm_collideInterface_2
  end type


contains

  function CollidableCharacterBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableCharacterBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableCharacterBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableCharacterBehavior_jnew_1(j_collidable) result(this)
    logical, value :: j_collidable
    class(CollidableCharacterBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CollidableCharacterBehavior'
        continue ! super()
  end function

  recursive subroutine CollidableCharacterBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableCharacterBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    class(CollisionTypeFactory), pointer :: j_collisionTypeFactory
    class(CollisionType), pointer :: j_collisionType
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    class(CollidableBaseBehavior), pointer :: jtemp1
    class(PickupBehavior), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collisionTypeFactory => CollisionTypeFactory_jm_getInstance_0()
        jtemp1 => j_collidableInterfaceCompositeInterface%jm_getCollidableInferface_0()
        j_collisionType => jtemp1%jm_getCollisionTypeWith_1(j_ownerLayer)
        if (JR_same(j_collisionType, j_collisionTypeFactory%f_PICKUP)) then
            j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(j_ownerLayer)
            jtemp2 => j_collidableDestroyableDamageableLayer%jm_getPickupBehavior_0()
            call jtemp2%jm_doPickupLayer_1(PickedUpLayerInterface_jcast(j_collidableInterfaceCompositeInterface))
        else
            call this%CollidableDestroyableDamageableBehavior%jm_collide_2(j_ownerLayer, j_collidableInterfaceCompositeInterface)
        end if
  end subroutine

  recursive subroutine CollidableCharacterBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableCharacterBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine
end module CollidableCharacterBehavior_m

function CollidableCharacterBehavior_jnew_1_jext(p1) result(this)
  use CollidableCharacterBehavior_m, only: JObject, CollidableCharacterBehavior_jnew_1
  implicit none
      logical, value :: p1
  class(JObject), pointer :: this
  this => CollidableCharacterBehavior_jnew_1(p1)
end function

