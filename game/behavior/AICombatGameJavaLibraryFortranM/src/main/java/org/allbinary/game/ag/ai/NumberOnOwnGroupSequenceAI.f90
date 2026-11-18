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
! package org.allbinary.game.ag.ai
module NumberOnOwnGroupSequenceAI_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use SequenceAI_m
  use GameInput_m
  use GroupLayerManagerListener_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use Integer_m
  implicit none

  type, extends(SequenceAI) :: NumberOnOwnGroupSequenceAI
    integer(4), allocatable :: f_numberOnSameTeam(:)
  contains
    procedure :: jm_processAI_1 => NumberOnOwnGroupSequenceAI_jm_processAI_1
  end type


contains

  function NumberOnOwnGroupSequenceAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberOnOwnGroupSequenceAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberOnOwnGroupSequenceAI)
      jresult => object
    end select
  end function

  recursive function NumberOnOwnGroupSequenceAI_jnew_4(j_numberOnSameTeam, j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(this)
    integer(4) :: j_numberOnSameTeam(:)
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(NumberOnOwnGroupSequenceAI), pointer :: this
    allocate(this)
    this%jclass = 'NumberOnOwnGroupSequenceAI'
    
        continue ! super()
        this%f_numberOnSameTeam = j_numberOnSameTeam
  end function

  recursive subroutine NumberOnOwnGroupSequenceAI_jm_processAI_1(this, j_layerManager)
    class(NumberOnOwnGroupSequenceAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), pointer :: j_layerInterface
    integer(4) :: j_index
    integer(4) :: j_size
    class(GroupLayerManagerListener), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerInterface => this%jm_getOwnerLayerInterface_0()
        j_index = this%jm_getIndex_0()
        if ((size(this%f_numberOnSameTeam, 1) > j_index)) then
            jtemp1 => GroupLayerManagerListener_jm_getInstance_0()
            j_size = jtemp1%jm_getGroupSizeFromInterface_1(j_layerInterface)
            if ((int(this%f_numberOnSameTeam((j_index) + 1), 4) > j_size)) then
                call this%jm_next_0()
            end if
        end if
        call this%SequenceAI%jm_processAI_1(j_layerManager)
  end subroutine
end module NumberOnOwnGroupSequenceAI_m

