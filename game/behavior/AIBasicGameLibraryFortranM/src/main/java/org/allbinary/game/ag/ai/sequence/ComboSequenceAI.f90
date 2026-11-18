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
module ComboSequenceAI_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use SequenceAI_m
  implicit none

  type, extends(SequenceAI) :: ComboSequenceAI
  contains
    procedure :: jm_processAI_1 => ComboSequenceAI_jm_processAI_1
  end type


contains

  function ComboSequenceAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ComboSequenceAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ComboSequenceAI)
      jresult => object
    end select
  end function

  recursive function ComboSequenceAI_jnew_3(j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(this)
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ComboSequenceAI), pointer :: this
    allocate(this)
    this%jclass = 'ComboSequenceAI'
        continue ! super()
  end function

  recursive subroutine ComboSequenceAI_jm_processAI_1(this, j_layerManager)
    class(ComboSequenceAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    type(JRef), allocatable :: j_artificialIntelligenceInterfaceArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_artificialIntelligenceInterfaceArray = this%jm_getArtificialIntelligenceInterface_0()
        j_size = size(j_artificialIntelligenceInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            call this%jm_setIndex_1(j_index)
            call this%SequenceAI%jm_processAI_1(j_layerManager)
            j_index = j_index + 1
        end do
  end subroutine
end module ComboSequenceAI_m

