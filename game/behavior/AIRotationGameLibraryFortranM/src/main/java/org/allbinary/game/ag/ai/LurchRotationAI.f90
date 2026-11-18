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
module LurchRotationAI_m
  use JR_m
  use IndexedAnimation_m
  use RotationAnimationInterface_m
  use RotationAnimationInterfaceCompositeInterface_m
  use LurchAI_m
  use GameInput_m
  use AllBinaryLayer_m
  use AngleIncrementInfo_m
  implicit none

  type, extends(LurchAI) :: LurchRotationAI
    class(IndexedAnimation), pointer :: f_rotationAnimationInterface => null()
  contains
    procedure :: jm_reverse_0 => LurchRotationAI_jm_reverse_0
    procedure :: jm_update_0 => LurchRotationAI_jm_update_0
  end type


contains

  function LurchRotationAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LurchRotationAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LurchRotationAI)
      jresult => object
    end select
  end function

  recursive function LurchRotationAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(LurchRotationAI), pointer :: this
    class(RotationAnimationInterfaceCompositeInterface), pointer :: j_rotationAnimationInterfaceCompositeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LurchRotationAI'
    
        continue ! super()
        j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_rotationAnimationInterface => j_rotationAnimationInterfaceCompositeInterface%jm_getRotationAnimationInterface_0()
        call this%jm_update_0()
  end function

  recursive subroutine LurchRotationAI_jm_reverse_0(this)
    class(LurchRotationAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%LurchAI%jm_reverse_0()
        call this%jm_update_0()
  end subroutine

  recursive subroutine LurchRotationAI_jm_update_0(this)
    class(LurchRotationAI), target :: this
    class(RotationAnimationInterface), pointer :: j_rotationAnimationInterface
    class(AngleIncrementInfo), pointer :: j_angleIncrementInfo
    class(RotationAnimationInterfaceCompositeInterface), pointer :: j_rotationAnimationInterfaceCompositeInterface
    class(AngleInfo), pointer :: jtemp1
    class(AngleInfo), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_currentRelativeAngle == 0)) then
            j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
            jtemp2 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
            j_angleIncrementInfo => jtemp2%jm_getAngleIncrementInfo_0()
            j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
            call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_RIGHT_FRAME%jm_intValue_0())
        else if ((this%f_currentRelativeAngle == 180)) then
            j_rotationAnimationInterface => RotationAnimationInterface_jcast(this%f_rotationAnimationInterface)
            jtemp1 => j_rotationAnimationInterface%jm_getAngleInfoP_0()
            j_angleIncrementInfo => jtemp1%jm_getAngleIncrementInfo_0()
            j_rotationAnimationInterfaceCompositeInterface => RotationAnimationInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
            call j_rotationAnimationInterfaceCompositeInterface%jm_setFrame_1(j_angleIncrementInfo%f_LEFT_FRAME%jm_intValue_0())
        end if
  end subroutine
end module LurchRotationAI_m

