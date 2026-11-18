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
module StopAtEdgeAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use BasicVelocityProperties_m
  use VelocityInterfaceCompositeInterface_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(BasicAI) :: StopAtEdgeAI
  contains
    procedure :: jm_processAI_1 => StopAtEdgeAI_jm_processAI_1
  end type


contains

  function StopAtEdgeAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StopAtEdgeAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StopAtEdgeAI)
      jresult => object
    end select
  end function

  recursive function StopAtEdgeAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(StopAtEdgeAI), pointer :: this
    allocate(this)
    this%jclass = 'StopAtEdgeAI'
        continue ! super()
  end function

  recursive subroutine StopAtEdgeAI_jm_processAI_1(this, j_layerManager)
    class(StopAtEdgeAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(BasicVelocityProperties), pointer :: j_velocityProperties
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_x2
    integer(4) :: j_y2
    integer(4) :: j_width
    integer(4) :: j_height
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(BasicDecimal), pointer :: jtemp1
    class(BasicDecimal), pointer :: jtemp2
    class(BasicDecimal), pointer :: jtemp3
    class(BasicDecimal), pointer :: jtemp4
    class(BasicDecimal), pointer :: jtemp5
    class(BasicDecimal), pointer :: jtemp6
    class(BasicDecimal), pointer :: jtemp7
    class(BasicDecimal), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(j_ownerLayerInterface)
        j_velocityProperties => j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0()
        j_x = j_ownerLayerInterface%jm_getXP_0()
        j_y = j_ownerLayerInterface%jm_getYP_0()
        j_x2 = j_ownerLayerInterface%jm_getX2_0()
        j_y2 = j_ownerLayerInterface%jm_getY2_0()
        j_width = j_ownerLayerInterface%jm_getWidth_0()
        j_height = j_ownerLayerInterface%jm_getHeight_0()
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        jtemp1 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        if (((j_x2 + jtemp1%jm_getScaled_0()) > j_displayInfo%jm_getLastWidth_0())) then
            call j_ownerLayerInterface%jm_setPosition_3((j_displayInfo%jm_getLastWidth_0() - j_width), j_y, j_ownerLayerInterface%jm_getZP_0())
            jtemp2 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
            call jtemp2%jm_setint_1(0)
        end if
        jtemp3 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        if (((j_y2 + jtemp3%jm_getScaled_0()) > j_displayInfo%jm_getLastHeight_0())) then
            call j_ownerLayerInterface%jm_setPosition_3(j_x, (j_displayInfo%jm_getLastHeight_0() - j_height), j_ownerLayerInterface%jm_getZP_0())
            jtemp4 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
            call jtemp4%jm_setint_1(0)
        end if
        jtemp5 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        if (((j_x + jtemp5%jm_getScaled_0()) < 0)) then
            call j_ownerLayerInterface%jm_setPosition_3(0, j_y, j_ownerLayerInterface%jm_getZP_0())
            jtemp6 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
            call jtemp6%jm_setint_1(0)
        end if
        jtemp7 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        if (((j_y + jtemp7%jm_getScaled_0()) < 0)) then
            call j_ownerLayerInterface%jm_setPosition_3(j_x, 0, j_ownerLayerInterface%jm_getZP_0())
            jtemp8 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
            call jtemp8%jm_setint_1(0)
        end if
  end subroutine
end module StopAtEdgeAI_m

