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
! package org.allbinary.game.input
module OptimizedGameInputLayerProcessorForCollidableLayer_m
  use JR_m
  use AllBinaryGameLayer_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use OptimizedGameInputLayerManager_m
  implicit none

  type, extends(LayerProcessor) :: OptimizedGameInputLayerProcessorForCollidableLayer
  contains
    procedure :: jm_processAt_3 => OptimizedGameInputLayerProcessorForCollidableLayer_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => OptimizedGameInputLayerProcessorForCollidableLayer_jm_isProcessorLayer_1
  end type


contains

  function OptimizedGameInputLayerProcessorForCollidableLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedGameInputLayerProcessorForCollidableLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedGameInputLayerProcessorForCollidableLayer)
      jresult => object
    end select
  end function

  recursive function OptimizedGameInputLayerProcessorForCollidableLayer_jnew_0() result(this)
    class(OptimizedGameInputLayerProcessorForCollidableLayer), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedGameInputLayerProcessorForCollidableLayer'
        continue ! super()
  end function

  recursive subroutine OptimizedGameInputLayerProcessorForCollidableLayer_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(OptimizedGameInputLayerProcessorForCollidableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(AllBinaryGameLayer), pointer :: j_gameInputInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameInputInterface => AllBinaryGameLayer_jcast(j_layerInterface)
        call j_gameInputInterface%jm_processInput_1(j_allBinaryLayerManager)
  end subroutine

  recursive function OptimizedGameInputLayerProcessorForCollidableLayer_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(OptimizedGameInputLayerProcessorForCollidableLayer), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        if (j_layerInterface%jm_implmentsGameInputInterface_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module OptimizedGameInputLayerProcessorForCollidableLayer_m

function OptimizedGameInputLayerProcessorForCollidableLayer_jnew_0_jext() result(this)
  use OptimizedGameInputLayerProcessorForCollidableLayer_m, only: JObject, OptimizedGameInputLayerProcessorForCollidableLayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedGameInputLayerProcessorForCollidableLayer_jnew_0()
end function

