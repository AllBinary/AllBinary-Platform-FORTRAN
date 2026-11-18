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
module HorizontaRotationManeuverAI_m
  use JR_m
  use ArtificialIntelligence_m
  use ArtificialIntelligenceTransitionInterface_m
  use IndexedAnimation_m
  use RotationAnimationInterface_m
  use RotationAnimationInterfaceCompositeInterface_m
  use BasicAI_m
  use GameInput_m
  use BasicVelocityProperties_m
  use VelocityInterface_m
  use VelocityInterfaceCompositeInterface_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use AngleIncrementInfo_m
  use CircularIndexUtil_m
  use Integer_m
  implicit none

  type, extends(BasicAI) :: HorizontaRotationManeuverAI
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4) :: f_currentSpeedDivisor = 0
    class(IndexedAnimation), pointer :: f_rotationAnimationInterface => null()
    class(BasicVelocityProperties), pointer :: f_baseVelocityInterface => null()
    class(VelocityInterface), pointer :: f_velocityInterface => null()
  contains
    procedure :: jm_transition_0 => HorizontaRotationManeuverAI_jm_transition_0
    procedure :: jm_processAI_1 => HorizontaRotationManeuverAI_jm_processAI_1
    procedure :: jm_reverse_0 => HorizontaRotationManeuverAI_jm_reverse_0
    procedure :: jm_accelerate_0 => HorizontaRotationManeuverAI_jm_accelerate_0
    procedure :: jm_drop_0 => HorizontaRotationManeuverAI_jm_drop_0
    procedure :: jm_getId_0 => HorizontaRotationManeuverAI_jm_getId_0
  end type

  ! HorizontaRotationManeuverAI used as a ArtificialIntelligenceTransitionInterface
  type, extends(ArtificialIntelligenceTransitionInterface) :: HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface
    class(HorizontaRotationManeuverAI), pointer :: jtarget => null()
  contains
    procedure :: jm_transition_0 => HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface_jm_transition_0
  end type


contains

  function HorizontaRotationManeuverAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HorizontaRotationManeuverAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HorizontaRotationManeuverAI)
      jresult => object
    end select
  end function

  function HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface_jnew(object) result(jresult)
    class(HorizontaRotationManeuverAI), target :: object
    class(HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HorizontaRotationManeuverAI'
    jresult%jtarget => object
  end function

  recursive subroutine HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface_jm_transition_0(this)
    class(HorizontaRotationManeuverAI_jas_ArtificialIntelligenceTransitionInterface), target :: this
    call this%jtarget%jm_transition_0()
  end subroutine

  recursive function HorizontaRotationManeuverAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(HorizontaRotationManeuverAI), pointer :: this
    class(RotationAnimationInterfaceCompositeInterface), pointer :: j_rotationAnimationInterfaceCompositeInterface
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(RotationAnimationInterface), pointer :: j_rotationAnimationInterface
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    class(AngleInfo), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HorizontaRotationManeuverAI'
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstanceAt_2(10, Integer_jstatic_MAX_VALUE())
    this%f_currentSpeedDivisor = 5
    
    
    
        continue ! super()
        j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_rotationAnimationInterface => j_rotationAnimationInterfaceCompositeInterface%jm_getRotationAnimationInterface_0()
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_baseVelocityInterface => j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0()
        this%f_velocityInterface => VelocityInterface_jcast(this%f_baseVelocityInterface)
        j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
        jtemp1 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
        j_angleIncrementInfo => jtemp1%jm_getAngleIncrementInfo_0()
        call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())
  end function

  recursive subroutine HorizontaRotationManeuverAI_jm_transition_0(this)
    class(HorizontaRotationManeuverAI), target :: this
    class(RotationAnimationInterface), pointer :: j_rotationAnimationInterface
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    class(RotationAnimationInterfaceCompositeInterface), pointer :: j_rotationAnimationInterfaceCompositeInterface
    class(AllBinaryLayer), pointer :: j_allbinaryLayer
    class(AngleInfo), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
        jtemp2 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
        j_angleIncrementInfo => jtemp2%jm_getAngleIncrementInfo_0()
        j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())
        j_allbinaryLayer => this%jm_getOwnerLayerInterface_0()
        call j_allbinaryLayer%jm_setPosition_3(j_allbinaryLayer%jm_getXP_0(), 1, j_allbinaryLayer%jm_getZP_0())
  end subroutine

  recursive subroutine HorizontaRotationManeuverAI_jm_processAI_1(this, j_layerManager)
    class(HorizontaRotationManeuverAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(RotationAnimationInterface), pointer :: j_rotationAnimationInterface
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    integer(4) :: j_frame
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    integer(4) :: j_index
    class(AngleInfo), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
        jtemp3 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
        j_angleIncrementInfo => jtemp3%jm_getAngleIncrementInfo_0()
        j_frame = this%f_rotationAnimationInterface%jm_getFrame_0()
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        if ((((j_ownerLayerInterface%jm_getXP_0() - j_ownerLayerInterface%jm_getWidth_0()) <= 0) .and. (j_frame == j_angleIncrementInfo%f_LEFT_FRAME%jm_intValue_0()))) then
            call this%jm_reverse_0()
            call this%jm_drop_0()
        end if
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        if ((((j_ownerLayerInterface%jm_getX2_0() + j_ownerLayerInterface%jm_getWidth_0()) > j_displayInfo%jm_getLastWidth_0()) .and. (j_frame == j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0()))) then
            call this%jm_reverse_0()
            call this%jm_accelerate_0()
            call this%jm_drop_0()
        end if
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        if (((mod(j_index, this%f_currentSpeedDivisor) == 0) .and. (mod(j_index, 2) == 0))) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_UP())
            call this%f_velocityInterface%jm_limitMaxXYVelocity_1((this%f_velocityInterface%jm_getMaxForwardVelocity_0() / this%f_currentSpeedDivisor))
        end if
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        if ((j_frame == j_angleIncrementInfo%f_LEFT_FRAME%jm_intValue_0())) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM0())
        else if ((j_frame == j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_POUND())
        end if
  end subroutine

  recursive subroutine HorizontaRotationManeuverAI_jm_reverse_0(this)
    class(HorizontaRotationManeuverAI), target :: this
    class(RotationAnimationInterface), pointer :: j_rotationAnimationInterface
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    integer(4) :: j_frame
    class(RotationAnimationInterfaceCompositeInterface), pointer :: j_rotationAnimationInterfaceCompositeInterface
    class(AngleInfo), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
        jtemp4 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
        j_angleIncrementInfo => jtemp4%jm_getAngleIncrementInfo_0()
        j_frame = this%f_rotationAnimationInterface%jm_getFrame_0()
        if ((j_frame == j_angleIncrementInfo%f_LEFT_FRAME%jm_intValue_0())) then
            j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
            call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())
            call this%f_baseVelocityInterface%jm_zero_0()
        else if ((j_frame == j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())) then
            j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
            call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_LEFT_FRAME%jm_intValue_0())
            call this%f_baseVelocityInterface%jm_zero_0()
        end if
  end subroutine

  recursive subroutine HorizontaRotationManeuverAI_jm_accelerate_0(this)
    class(HorizontaRotationManeuverAI), target :: this
        if ((this%f_currentSpeedDivisor > 1)) then
            this%f_currentSpeedDivisor = this%f_currentSpeedDivisor - 1
        end if
  end subroutine

  recursive subroutine HorizontaRotationManeuverAI_jm_drop_0(this)
    class(HorizontaRotationManeuverAI), target :: this
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_y = j_ownerLayerInterface%jm_getYP_0()
        if (((j_ownerLayerInterface%jm_getY2_0() + j_ownerLayerInterface%jm_getHeight_0()) > j_displayInfo%jm_getLastHeight_0())) then
            j_y = 0
        else
            j_y = (j_y + (j_ownerLayerInterface%jm_getHeight_0() + 1))
        end if
        call j_ownerLayerInterface%jm_setPosition_3(j_ownerLayerInterface%jm_getXP_0(), j_y, j_ownerLayerInterface%jm_getZP_0())
  end subroutine

  recursive function HorizontaRotationManeuverAI_jm_getId_0(this) result(jresult)
    class(HorizontaRotationManeuverAI), target :: this
    integer(4) :: jresult
        jresult = ArtificialIntelligence_jstatic_AI_ID()
        return
  end function
end module HorizontaRotationManeuverAI_m

