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
! package org.allbinary.game.ag.ai.sequence
module NumberLayersSequenceAI_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use SequenceAI_m
  implicit none

  type, extends(SequenceAI) :: NumberLayersSequenceAI
    integer(4) :: f_numberOfLayersLeft = 0
  contains
    procedure :: jm_processAI_1 => NumberLayersSequenceAI_jm_processAI_1
  end type


contains

  function NumberLayersSequenceAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberLayersSequenceAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberLayersSequenceAI)
      jresult => object
    end select
  end function

  recursive function NumberLayersSequenceAI_jnew_4(j_numberOfEnemiesLeft, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(this)
    integer(4), value :: j_numberOfEnemiesLeft
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(NumberLayersSequenceAI), pointer :: this
    allocate(this)
    this%jclass = 'NumberLayersSequenceAI'
    
        continue ! super()
        this%f_numberOfLayersLeft = j_numberOfEnemiesLeft
  end function

  recursive subroutine NumberLayersSequenceAI_jm_processAI_1(this, j_layerManager)
    class(NumberLayersSequenceAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getIndex_0() == 0)) then
            if ((j_layerManager%jm_getSize_0() < this%f_numberOfLayersLeft)) then
                call this%jm_setIndex_1(1)
            end if
        end if
        call this%SequenceAI%jm_processAI_1(j_layerManager)
  end subroutine
end module NumberLayersSequenceAI_m

