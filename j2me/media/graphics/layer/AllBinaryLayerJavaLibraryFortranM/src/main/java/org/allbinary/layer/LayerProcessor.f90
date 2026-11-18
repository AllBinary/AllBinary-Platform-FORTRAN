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
module LayerProcessor_m
  use JR_m
  use CommonStrings_m
  use LayerProcessorInterface_m
  use ABLayerManager_m
  use AllBinaryLayerManager_m
  use AllBinaryLayer_m
  implicit none

  type, extends(LayerProcessorInterface) :: LayerProcessor
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ABLayerManager), pointer :: f_layerManager => null()
  contains
    procedure :: jm_processAt_3 => LayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => LayerProcessor_jm_isProcessorLayer_1
    procedure :: jm_getLayerManager_0 => LayerProcessor_jm_getLayerManager_0
    procedure :: jm_process_1 => LayerProcessor_jm_process_1
  end type


contains

  function LayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerProcessor)
      jresult => object
    end select
  end function

  recursive function LayerProcessor_jnew_1(j_layerManager) result(this)
    class(ABLayerManager), target, optional :: j_layerManager
    class(LayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'LayerProcessor'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
        this%f_layerManager => j_layerManager
  end function

  recursive subroutine LayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(LayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function LayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(LayerProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function LayerProcessor_jm_getLayerManager_0(this) result(jresult)
    class(LayerProcessor), target :: this
    class(ABLayerManager), pointer :: jresult
        jresult => this%f_layerManager
        return
  end function

  recursive subroutine LayerProcessor_jm_process_1(this, j_allBinaryLayerManager)
    class(LayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(ABLayerManager), pointer :: j_layerManager
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerManager => this%jm_getLayerManager_0()
        j_size = j_layerManager%jm_getSize_0()
        j_index = 0
        do while ((j_index < j_size))
            call this%jm_processAt_3(j_allBinaryLayerManager, AllBinaryLayer_jcast(j_layerManager%jm_getLayerAt_1(j_index)), j_index)
            j_index = j_index + 1
        end do
  end subroutine
end module LayerProcessor_m

