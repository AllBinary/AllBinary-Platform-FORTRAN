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
! package org.allbinary.game.ag.ai.tactical
module HorizontalManeuverAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(BasicAI) :: HorizontalManeuverAI
    integer(4) :: f_currentRelativeAngle = 0
    integer(4) :: f_currentSpeed = 0
  contains
    procedure :: jm_processAI_1 => HorizontalManeuverAI_jm_processAI_1
    procedure :: jm_reverse_0 => HorizontalManeuverAI_jm_reverse_0
    procedure :: jm_accelerate_0 => HorizontalManeuverAI_jm_accelerate_0
    procedure :: jm_drop_0 => HorizontalManeuverAI_jm_drop_0
  end type


contains

  function HorizontalManeuverAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HorizontalManeuverAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HorizontalManeuverAI)
      jresult => object
    end select
  end function

  recursive function HorizontalManeuverAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(HorizontalManeuverAI), pointer :: this
    allocate(this)
    this%jclass = 'HorizontalManeuverAI'
    this%f_currentRelativeAngle = 0
    
        continue ! super()
        this%f_currentSpeed = 5
  end function

  recursive subroutine HorizontalManeuverAI_jm_processAI_1(this, j_layerManager)
    class(HorizontalManeuverAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_x
    class(DisplayInfoSingleton), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_x = j_ownerLayerInterface%jm_getXP_0()
        if (((j_ownerLayerInterface%jm_getXP_0() - this%f_currentSpeed) <= 0)) then
            call this%jm_reverse_0()
            call this%jm_drop_0()
        end if
        jtemp1 => DisplayInfoSingleton_jm_getInstance_0()
        if (((j_ownerLayerInterface%jm_getX2_0() + this%f_currentSpeed) > jtemp1%jm_getLastWidth_0())) then
            call this%jm_reverse_0()
            call this%jm_accelerate_0()
            call this%jm_drop_0()
        end if
        if ((this%f_currentRelativeAngle == 0)) then
            j_x = (j_x + this%f_currentSpeed)
        else if ((this%f_currentRelativeAngle == 180)) then
            j_x = (j_x - this%f_currentSpeed)
        end if
        call j_ownerLayerInterface%jm_setPosition_3(j_x, j_ownerLayerInterface%jm_getYP_0(), j_ownerLayerInterface%jm_getZP_0())
        if ((this%f_currentRelativeAngle == 0)) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM0())
        else if ((this%f_currentRelativeAngle == 180)) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_POUND())
        end if
  end subroutine

  recursive subroutine HorizontalManeuverAI_jm_reverse_0(this)
    class(HorizontalManeuverAI), target :: this
        if ((this%f_currentRelativeAngle == 180)) then
            this%f_currentRelativeAngle = 0
        else if ((this%f_currentRelativeAngle == 0)) then
            this%f_currentRelativeAngle = 180
        end if
  end subroutine

  recursive subroutine HorizontalManeuverAI_jm_accelerate_0(this)
    class(HorizontalManeuverAI), target :: this
        if ((this%f_currentSpeed < 20)) then
            this%f_currentSpeed = this%f_currentSpeed + 1
        end if
  end subroutine

  recursive subroutine HorizontalManeuverAI_jm_drop_0(this)
    class(HorizontalManeuverAI), target :: this
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    integer(4) :: j_y
    class(DisplayInfoSingleton), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_y = j_ownerLayerInterface%jm_getYP_0()
        jtemp2 => DisplayInfoSingleton_jm_getInstance_0()
        if (((j_ownerLayerInterface%jm_getY2_0() + j_ownerLayerInterface%jm_getHeight_0()) > jtemp2%jm_getLastHeight_0())) then
            j_y = 0
        else
            j_y = (j_y + (j_ownerLayerInterface%jm_getHeight_0() + 1))
        end if
        call j_ownerLayerInterface%jm_setPosition_3(j_ownerLayerInterface%jm_getXP_0(), j_y, j_ownerLayerInterface%jm_getZP_0())
  end subroutine
end module HorizontalManeuverAI_m

