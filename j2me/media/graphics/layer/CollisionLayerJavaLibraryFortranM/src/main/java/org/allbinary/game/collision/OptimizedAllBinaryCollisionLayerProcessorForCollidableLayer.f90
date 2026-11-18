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
module OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_m
  use JR_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use ABLayerManager_m
  use LayerProcessor_m
  use OptimizedAllBinaryCollisionLayerManager_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(LayerProcessor) :: OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer
  contains
    procedure :: jm_processAt_3 => OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jm_isProcessorLayer_1
  end type


contains

  function OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer)
      jresult => object
    end select
  end function

  recursive function OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jnew_0() result(this)
    class(OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer'
        continue ! super()
  end function

  recursive subroutine OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(CollidableCompositeLayer), pointer :: j_collidableInterfaceCompositeInterface
    class(CollidableBaseBehavior), pointer :: j_collidableBase
    class(ABLayerManager), pointer :: j_layerManager
    integer(4) :: j_size
    class(CollidableCompositeLayer), pointer :: j_collidableInterfaceCompositeInterface2
    class(CollidableBaseBehavior), pointer :: j_collidableBase2
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collidableInterfaceCompositeInterface => CollidableCompositeLayer_jcast(j_layerInterface)
        j_collidableBase => j_collidableInterfaceCompositeInterface%jm_getCollidableInferface_0()
        if (j_collidableBase%jm_isCollidable_1(j_collidableInterfaceCompositeInterface)) then
            j_layerManager => this%jm_getLayerManager_0()
            j_size = j_layerManager%jm_getSize_0()
            continue
            continue
            j_index = (j_index + 1)
            do while ((j_index < j_size))
                j_collidableInterfaceCompositeInterface2 => CollidableCompositeLayer_jcast(j_layerManager%jm_getLayerAt_1(j_index))
                j_collidableBase2 => j_collidableInterfaceCompositeInterface2%jm_getCollidableInferface_0()
                if ((j_collidableBase2%jm_isCollidable_1(j_collidableInterfaceCompositeInterface) .and. j_collidableBase%jm_isCollision_2(j_collidableInterfaceCompositeInterface, j_collidableInterfaceCompositeInterface2))) then
                    call j_collidableBase%jm_collide_2(j_collidableInterfaceCompositeInterface, j_collidableInterfaceCompositeInterface2)
                    call j_collidableBase2%jm_collide_2(j_collidableInterfaceCompositeInterface2, j_collidableInterfaceCompositeInterface)
                end if
                j_index = j_index + 1
            end do
        end if
  end subroutine

  recursive function OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        if (j_layerInterface%jm_implmentsCollidableInterface_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_m

function OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jnew_0_jext() result(this)
  use OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_m, only: JObject, OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_jnew_0()
end function

