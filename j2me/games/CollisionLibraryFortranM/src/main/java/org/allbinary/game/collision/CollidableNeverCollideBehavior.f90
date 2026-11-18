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
module CollidableNeverCollideBehavior_m
  use JR_m
  use CollidableCompositeLayer_m
  use CollidableBaseBehavior_m
  use CollidableInterfaceCompositeInterface_m
  implicit none

  type, extends(CollidableBaseBehavior) :: CollidableNeverCollideBehavior
  contains
    procedure :: jm_isCollision_2 => CollidableNeverCollideBehavior_jm_isCollision_2
    procedure :: jm_collide_2 => CollidableNeverCollideBehavior_jm_collide_2
    procedure :: jm_collideInterface_2 => CollidableNeverCollideBehavior_jm_collideInterface_2
    procedure :: jm_isCollisionInterface_2 => CollidableNeverCollideBehavior_jm_isCollisionInterface_2
  end type


contains

  function CollidableNeverCollideBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableNeverCollideBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableNeverCollideBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableNeverCollideBehavior_jnew_1(j_isCollidable) result(this)
    logical, value :: j_isCollidable
    class(CollidableNeverCollideBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CollidableNeverCollideBehavior'
        continue ! super()
  end function

  recursive function CollidableNeverCollideBehavior_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableNeverCollideBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine CollidableNeverCollideBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableNeverCollideBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    continue
  end subroutine

  recursive subroutine CollidableNeverCollideBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableNeverCollideBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    continue
  end subroutine

  recursive function CollidableNeverCollideBehavior_jm_isCollisionInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableNeverCollideBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        jresult = .false.
        return
  end function
end module CollidableNeverCollideBehavior_m

function CollidableNeverCollideBehavior_jnew_1_jext(p1) result(this)
  use CollidableNeverCollideBehavior_m, only: JObject, CollidableNeverCollideBehavior_jnew_1
  implicit none
      logical, value :: p1
  class(JObject), pointer :: this
  this => CollidableNeverCollideBehavior_jnew_1(p1)
end function

