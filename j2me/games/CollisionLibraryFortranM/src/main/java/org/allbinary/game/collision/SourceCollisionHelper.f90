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
module SourceCollisionHelper_m
  use JR_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  use CollisionHelper_m
  implicit none

  type, extends(CollisionHelper) :: SourceCollisionHelper
  contains
    procedure :: jm_isCollidable_1 => SourceCollisionHelper_jm_isCollidable_1
  end type


contains

  function SourceCollisionHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SourceCollisionHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SourceCollisionHelper)
      jresult => object
    end select
  end function

  recursive function SourceCollisionHelper_jnew_1(j_layerInterface) result(this)
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(SourceCollisionHelper), pointer :: this
    allocate(this)
    this%jclass = 'SourceCollisionHelper'
        continue ! super()
  end function

  recursive function SourceCollisionHelper_jm_isCollidable_1(this, j_layerInterface) result(jresult)
    class(SourceCollisionHelper), target :: this
    class(CollidableCompositeLayer), target, optional :: j_layerInterface
    logical :: jresult
        if ((.not. JR_same(this%f_sourceLayerInterface, j_layerInterface))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function
end module SourceCollisionHelper_m

