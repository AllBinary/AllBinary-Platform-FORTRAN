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
module CollisionHelper_m
  use JR_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: CollisionHelper
    class(AllBinaryLayer), pointer :: f_sourceLayerInterface => null()
  contains
    procedure :: jm_isCollidable_1 => CollisionHelper_jm_isCollidable_1
    procedure :: jm_getOwnerLayerInterface_0 => CollisionHelper_jm_getOwnerLayerInterface_0
    procedure :: jm_setOwnerLayerInterface_1 => CollisionHelper_jm_setOwnerLayerInterface_1
  end type


contains

  function CollisionHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollisionHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollisionHelper)
      jresult => object
    end select
  end function

  recursive function CollisionHelper_jnew_1(j_sourceLayerInterface) result(this)
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(CollisionHelper), pointer :: this
    allocate(this)
    this%jclass = 'CollisionHelper'
    
        this%f_sourceLayerInterface => j_sourceLayerInterface
  end function

  recursive function CollisionHelper_jm_isCollidable_1(this, j_layerInterface) result(jresult)
    class(CollisionHelper), target :: this
    class(CollidableCompositeLayer), target, optional :: j_layerInterface
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function CollisionHelper_jm_getOwnerLayerInterface_0(this) result(jresult)
    class(CollisionHelper), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_sourceLayerInterface
        return
  end function

  recursive subroutine CollisionHelper_jm_setOwnerLayerInterface_1(this, j_sourceLayerInterface)
    class(CollisionHelper), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
        this%f_sourceLayerInterface => j_sourceLayerInterface
  end subroutine
end module CollisionHelper_m

