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
! package org.allbinary.game.collision
module CollidableInterface_m
  use JR_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  use NamedInterface_m
  use CollisionType_m
  implicit none

  type, extends(NamedInterface) :: CollidableInterface
  contains
    procedure :: jm_isCollidable_1 => CollidableInterface_jm_isCollidable_1
    procedure :: jm_isCollision_2 => CollidableInterface_jm_isCollision_2
    procedure :: jm_collide_2 => CollidableInterface_jm_collide_2
    procedure :: jm_getCollisionTypeWith_1 => CollidableInterface_jm_getCollisionTypeWith_1
  end type


contains

  function CollidableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableInterface)
      jresult => object
    end select
  end function

  function CollidableInterface_jnew_0() result(this)
    class(CollidableInterface), pointer :: this
    allocate(this)
    this%jclass = 'CollidableInterface'
  end function

  recursive function CollidableInterface_jm_isCollidable_1(this, j_ownerLayer) result(jresult)
    class(CollidableInterface), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    logical :: jresult
    error stop 'AbstractMethodError: CollidableInterface.isCollidable'
  end function

  recursive function CollidableInterface_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableInterface), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
    error stop 'AbstractMethodError: CollidableInterface.isCollision'
  end function

  recursive subroutine CollidableInterface_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableInterface), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    error stop 'AbstractMethodError: CollidableInterface.collide'
  end subroutine

  recursive function CollidableInterface_jm_getCollisionTypeWith_1(this, j_layerInterface) result(jresult)
    class(CollidableInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(CollisionType), pointer :: jresult
    error stop 'AbstractMethodError: CollidableInterface.getCollisionTypeWith'
  end function
end module CollidableInterface_m

