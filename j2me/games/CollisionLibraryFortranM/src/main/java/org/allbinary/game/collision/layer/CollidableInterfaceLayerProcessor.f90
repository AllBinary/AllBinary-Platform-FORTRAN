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
! package org.allbinary.game.collision.layer
module CollidableInterfaceLayerProcessor_m
  use JR_m
  use CollidableInterfaceCompositeInterface_m
  use CollidableCompositeLayer_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use CollidableInterfaceLayerManager_m
  use AllBinaryCollisionManager_m
  implicit none

  type, extends(LayerProcessor) :: CollidableInterfaceLayerProcessor
  contains
    procedure :: jm_processAt_3 => CollidableInterfaceLayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => CollidableInterfaceLayerProcessor_jm_isProcessorLayer_1
  end type


contains

  function CollidableInterfaceLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableInterfaceLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableInterfaceLayerProcessor)
      jresult => object
    end select
  end function

  recursive function CollidableInterfaceLayerProcessor_jnew_0() result(this)
    class(CollidableInterfaceLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'CollidableInterfaceLayerProcessor'
        continue ! super()
  end function

  recursive subroutine CollidableInterfaceLayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(CollidableInterfaceLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(CollidableInterfaceCompositeInterface), pointer :: j_collidableInterfaceCompositeInterface
    class(CollidableBaseBehavior), pointer :: jtemp1
    class(AllBinaryCollisionManager), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collidableInterfaceCompositeInterface => CollidableInterfaceCompositeInterface_jcast(j_layerInterface)
        jtemp1 => j_collidableInterfaceCompositeInterface%jm_getCollidableInferface_0()
        if (jtemp1%jm_isCollidable_1(CollidableCompositeLayer_jcast(j_collidableInterfaceCompositeInterface))) then
            jtemp2 => AllBinaryCollisionManager_jm_getInstance_0()
            call jtemp2%jm_process_3(this%jm_getLayerManager_0(), j_collidableInterfaceCompositeInterface, j_index)
        end if
  end subroutine

  recursive function CollidableInterfaceLayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(CollidableInterfaceLayerProcessor), target :: this
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
end module CollidableInterfaceLayerProcessor_m

function CollidableInterfaceLayerProcessor_jnew_0_jext() result(this)
  use CollidableInterfaceLayerProcessor_m, only: JObject, CollidableInterfaceLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollidableInterfaceLayerProcessor_jnew_0()
end function

