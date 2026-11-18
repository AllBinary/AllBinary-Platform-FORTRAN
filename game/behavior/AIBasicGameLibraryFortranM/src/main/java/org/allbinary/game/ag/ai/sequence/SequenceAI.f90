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
module SequenceAI_m
  use JR_m
  use ArtificialIntelligence_m
  use ArtificialIntelligenceInterface_m
  use ArtificialIntelligenceTransitionInterface_m
  use ArrayAI_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use StringMaker_m
  use StringUtil_m
  implicit none

  type, extends(ArrayAI) :: SequenceAI
    integer(4) :: f_index = 0
  contains
    procedure :: jm_processAI_1 => SequenceAI_jm_processAI_1
    procedure :: jm_next_0 => SequenceAI_jm_next_0
    procedure :: jm_getIndex_0 => SequenceAI_jm_getIndex_0
    procedure :: jm_setIndex_1 => SequenceAI_jm_setIndex_1
    procedure :: jm_getSelectedArtificialIntelligenceInterface_0 => SequenceAI_jm_getSelectedArtificialIntelligenceInterface_0
    procedure :: jm_getName_0 => SequenceAI_jm_getName_0
    procedure :: jm_toString_0 => SequenceAI_jm_toString_0
  end type

  character(len=:), allocatable, save :: SequenceAI_jcell_SEQUENCE_AI
  logical, save :: SequenceAI_jset_SEQUENCE_AI = .false.

contains

  function SequenceAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SequenceAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SequenceAI)
      jresult => object
    end select
  end function

  function SequenceAI_jstatic_SEQUENCE_AI() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. SequenceAI_jset_SEQUENCE_AI) then
      SequenceAI_jset_SEQUENCE_AI = .true.
      SequenceAI_jcell_SEQUENCE_AI = 'Sequence AI'
    end if
    jresult = SequenceAI_jcell_SEQUENCE_AI
  end function

  subroutine SequenceAI_jsetstatic_SEQUENCE_AI(jvalue)
    character(len=*), intent(in) :: jvalue
    SequenceAI_jset_SEQUENCE_AI = .true.
    SequenceAI_jcell_SEQUENCE_AI = jvalue
  end subroutine

  recursive function SequenceAI_jnew_3(j_artificialIntelligenceInterfaceArray, j_ownerLayerInterface, j_gameInput) result(this)
    type(JRef) :: j_artificialIntelligenceInterfaceArray(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(SequenceAI), pointer :: this
    allocate(this)
    this%jclass = 'SequenceAI'
    
        continue ! super()
  end function

  recursive subroutine SequenceAI_jm_processAI_1(this, j_layerManager)
    class(SequenceAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_getArtificialIntelligenceInterface_0()((this%f_index) + 1)%jm_processAI_1(j_layerManager)
  end subroutine

  recursive subroutine SequenceAI_jm_next_0(this)
    class(SequenceAI), target :: this
    class(ArtificialIntelligenceInterface), pointer :: j_artificialIntelligenceInterface
    class(ArtificialIntelligenceTransitionInterface), pointer :: j_artificialIntelligenceTransitionInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_index = this%f_index + 1
        j_artificialIntelligenceInterface => this%jm_getSelectedArtificialIntelligenceInterface_0()
        if ((j_artificialIntelligenceInterface%jm_getId_0() == ArtificialIntelligence_jstatic_AI_ID())) then
            j_artificialIntelligenceTransitionInterface => ArtificialIntelligenceTransitionInterface_jcast(j_artificialIntelligenceInterface)
            call j_artificialIntelligenceTransitionInterface%jm_transition_0()
        end if
  end subroutine

  recursive function SequenceAI_jm_getIndex_0(this) result(jresult)
    class(SequenceAI), target :: this
    integer(4) :: jresult
        jresult = this%f_index
        return
  end function

  recursive subroutine SequenceAI_jm_setIndex_1(this, j_index)
    class(SequenceAI), target :: this
    integer(4), value :: j_index
        this%f_index = j_index
  end subroutine

  recursive function SequenceAI_jm_getSelectedArtificialIntelligenceInterface_0(this) result(jresult)
    class(SequenceAI), target :: this
    class(ArtificialIntelligenceInterface), pointer :: jresult
        jresult => this%jm_getArtificialIntelligenceInterface_0()((this%f_index) + 1)
        return
  end function

  recursive function SequenceAI_jm_getName_0(this) result(jresult)
    class(SequenceAI), target :: this
    character(len=:), allocatable :: jresult
        jresult = SequenceAI_jstatic_SEQUENCE_AI()
        return
  end function

  recursive function SequenceAI_jm_toString_0(this) result(jresult)
    class(SequenceAI), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%ArrayAI%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Selected AI: ')
        jtemp1 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_1(this%jm_getSelectedArtificialIntelligenceInterface_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module SequenceAI_m

