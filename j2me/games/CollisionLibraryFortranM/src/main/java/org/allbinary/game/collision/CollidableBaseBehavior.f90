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
module CollidableBaseBehavior_m
  use JR_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use CommonStrings_m
  use CollidableInterface_m
  use LayerCollisionUtil_m
  use CollidableInterfaceCompositeInterface_m
  use CollisionTypeFactory_m
  use CollisionType_m
  implicit none

  type, extends(CollidableInterface) :: CollidableBaseBehavior
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(LayerCollisionUtil), pointer :: f_layerCollisionUtil => null()
    logical :: f_collidable = .false.
  contains
    procedure :: jm_update_0 => CollidableBaseBehavior_jm_update_0
    procedure :: jm_getName_0 => CollidableBaseBehavior_jm_getName_0
    procedure :: jm_setCollidable_1 => CollidableBaseBehavior_jm_setCollidable_1
    procedure :: jm_isCollidable_1 => CollidableBaseBehavior_jm_isCollidable_1
    procedure :: jm_collide_2 => CollidableBaseBehavior_jm_collide_2
    procedure :: jm_isCollision_2 => CollidableBaseBehavior_jm_isCollision_2
    procedure :: jm_isCollisionInterface_2 => CollidableBaseBehavior_jm_isCollisionInterface_2
    procedure :: jm_collideInterface_2 => CollidableBaseBehavior_jm_collideInterface_2
    procedure :: jm_paint_2 => CollidableBaseBehavior_jm_paint_2
    procedure :: jm_getCollisionTypeWith_1 => CollidableBaseBehavior_jm_getCollisionTypeWith_1
  end type


contains

  function CollidableBaseBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableBaseBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableBaseBehavior)
      jresult => object
    end select
  end function

  recursive function CollidableBaseBehavior_jnew_1(j_collidable) result(this)
    logical, value :: j_collidable
    class(CollidableBaseBehavior), pointer :: this
    allocate(this)
    this%jclass = 'CollidableBaseBehavior'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_layerCollisionUtil => LayerCollisionUtil_jm_getInstance_0()
    this%f_collidable = .true.
        this%f_collidable = j_collidable
  end function

  recursive subroutine CollidableBaseBehavior_jm_update_0(this)
    class(CollidableBaseBehavior), target :: this
    continue
  end subroutine

  recursive function CollidableBaseBehavior_jm_getName_0(this) result(jresult)
    class(CollidableBaseBehavior), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp1
        jtemp1 = JR_className(this)
        jresult = jtemp1
        return
  end function

  recursive subroutine CollidableBaseBehavior_jm_setCollidable_1(this, j_collidable)
    class(CollidableBaseBehavior), target :: this
    logical, value :: j_collidable
        this%f_collidable = j_collidable
  end subroutine

  recursive function CollidableBaseBehavior_jm_isCollidable_1(this, j_ownerLayer) result(jresult)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    logical :: jresult
        jresult = this%f_collidable
        return
  end function

  recursive subroutine CollidableBaseBehavior_jm_collide_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    character(len=:), allocatable :: jtemp7
        jtemp6 => CommonLabels_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp7 = JR_className(this)
        jtemp4 => jtemp5%jm_append_1(this%f_commonStrings%f_NOT_IMPLEMENTED)
        jtemp3 => jtemp4%jm_append_1(jtemp6%f_COLON_SEP)
        jtemp2 => jtemp3%jm_append_1(jtemp7)
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function CollidableBaseBehavior_jm_isCollision_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableCompositeLayer), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        jresult = this%f_layerCollisionUtil%jm_isCollision_2(j_ownerLayer, j_collidableInterfaceCompositeInterface)
        return
  end function

  recursive function CollidableBaseBehavior_jm_isCollisionInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface) result(jresult)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
    logical :: jresult
        jresult = this%f_layerCollisionUtil%jm_isCollision_2(j_ownerLayer, AllBinaryLayer_jcast(j_collidableInterfaceCompositeInterface))
        return
  end function

  recursive subroutine CollidableBaseBehavior_jm_collideInterface_2(this, j_ownerLayer, j_collidableInterfaceCompositeInterface)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(CollidableInterfaceCompositeInterface), target, optional :: j_collidableInterfaceCompositeInterface
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine CollidableBaseBehavior_jm_paint_2(this, j_ownerLayer, j_graphics)
    class(CollidableBaseBehavior), target :: this
    class(CollidableCompositeLayer), target, optional :: j_ownerLayer
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function CollidableBaseBehavior_jm_getCollisionTypeWith_1(this, j_layerInterface) result(jresult)
    class(CollidableBaseBehavior), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(CollisionType), pointer :: jresult
    class(CollisionTypeFactory), pointer :: jtemp8
        jtemp8 => CollisionTypeFactory_jm_getInstance_0()
        jresult => jtemp8%f_NONE
        return
  end function
end module CollidableBaseBehavior_m

