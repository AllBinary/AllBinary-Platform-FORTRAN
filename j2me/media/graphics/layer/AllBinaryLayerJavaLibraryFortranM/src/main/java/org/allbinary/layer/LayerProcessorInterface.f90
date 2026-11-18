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
! package org.allbinary.layer
module LayerProcessorInterface_m
  use JR_m
  use BasicLayerProcessorInterface_m
  use ABLayerManager_m
  use AllBinaryLayerManager_m
  use AllBinaryLayer_m
  implicit none

  type, extends(BasicLayerProcessorInterface) :: LayerProcessorInterface
  contains
    procedure :: jm_getLayerManager_0 => LayerProcessorInterface_jm_getLayerManager_0
    procedure :: jm_processAt_3 => LayerProcessorInterface_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => LayerProcessorInterface_jm_isProcessorLayer_1
  end type


contains

  function LayerProcessorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerProcessorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerProcessorInterface)
      jresult => object
    end select
  end function

  function LayerProcessorInterface_jnew_0() result(this)
    class(LayerProcessorInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerProcessorInterface'
  end function

  recursive function LayerProcessorInterface_jm_getLayerManager_0(this) result(jresult)
    class(LayerProcessorInterface), target :: this
    class(ABLayerManager), pointer :: jresult
    error stop 'AbstractMethodError: LayerProcessorInterface.getLayerManager'
  end function

  recursive subroutine LayerProcessorInterface_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(LayerProcessorInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    error stop 'AbstractMethodError: LayerProcessorInterface.processAt'
  end subroutine

  recursive function LayerProcessorInterface_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(LayerProcessorInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
    error stop 'AbstractMethodError: LayerProcessorInterface.isProcessorLayer'
  end function
end module LayerProcessorInterface_m

