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
! package org.allbinary.ai
module ArtificialIntelligenceLayerProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use ArtificialIntelligenceLayerManager_m
  use ArtificialIntelligenceCompositeInterface_m
  implicit none

  type, extends(LayerProcessor) :: ArtificialIntelligenceLayerProcessor
  contains
    procedure :: jm_processAt_3 => ArtificialIntelligenceLayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => ArtificialIntelligenceLayerProcessor_jm_isProcessorLayer_1
  end type


contains

  function ArtificialIntelligenceLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceLayerProcessor)
      jresult => object
    end select
  end function

  recursive function ArtificialIntelligenceLayerProcessor_jnew_0() result(this)
    class(ArtificialIntelligenceLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceLayerProcessor'
        continue ! super()
  end function

  recursive subroutine ArtificialIntelligenceLayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(ArtificialIntelligenceLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(ArtificialIntelligenceCompositeInterface), pointer :: j_artificialIntelligenceCompositeInterface
    class(ArtificialIntelligenceInterface), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_artificialIntelligenceCompositeInterface => ArtificialIntelligenceCompositeInterface_jcast(j_layerInterface)
        jtemp1 => j_artificialIntelligenceCompositeInterface%jm_getArtificialIntelligenceInterface_0()
        call jtemp1%jm_processAI_1(j_allBinaryLayerManager)
  end subroutine

  recursive function ArtificialIntelligenceLayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(ArtificialIntelligenceLayerProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        if (j_layerInterface%jm_implmentsArtificialIntelligenceCompositeInterface_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module ArtificialIntelligenceLayerProcessor_m

function ArtificialIntelligenceLayerProcessor_jnew_0_jext() result(this)
  use ArtificialIntelligenceLayerProcessor_m, only: JObject, ArtificialIntelligenceLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ArtificialIntelligenceLayerProcessor_jnew_0()
end function

