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
module CollidableAlwaysPickupNeverCollideBehavior_m
  use JR_m
  use AllBinaryLayer_m
  use CollidableNeverCollideBehavior_m
  use CollisionTypeFactory_m
  use CollisionType_m
  implicit none

  type, extends(CollidableNeverCollideBehavior) :: CollidableAlwaysPickupNeverCollideBehavior
  contains
    procedure :: jm_getCollisionTypeWith_1 => CollidableAlwaysPickupNeverCollideBehavior_jm_getCollisionTypeWith_1
  end type


contains

  function CollidableAlwaysPickupNeverCollideBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableAlwaysPickupNeverCollideBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableAlwaysPickupNeverCollideBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableAlwaysPickupNeverCollideBehavior_jnew_0() result(this)
    class(CollidableAlwaysPickupNeverCollideBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CollidableAlwaysPickupNeverCollideBehavior'
        continue ! super()
  end function

  recursive function CollidableAlwaysPickupNeverCollideBehavior_jm_getCollisionTypeWith_1(this, j_layerInterface) result(jresult)
    class(CollidableAlwaysPickupNeverCollideBehavior), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(CollisionType), pointer :: jresult
    class(CollisionTypeFactory), pointer :: jtemp1
        jtemp1 => CollisionTypeFactory_jm_getInstance_0()
        jresult => jtemp1%f_PICKUP
        return
  end function
end module CollidableAlwaysPickupNeverCollideBehavior_m

function CollidableAlwaysPickupNeverCollideBehavior_jnew_0_jext() result(this)
  use CollidableAlwaysPickupNeverCollideBehavior_m, only: JObject, CollidableAlwaysPickupNeverCollideBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollidableAlwaysPickupNeverCollideBehavior_jnew_0()
end function

