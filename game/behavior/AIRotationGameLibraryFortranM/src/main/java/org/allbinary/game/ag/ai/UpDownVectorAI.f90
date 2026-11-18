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
module UpDownVectorAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use BasicVelocityProperties_m
  use VelocityInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use BasicDecimal_m
  implicit none

  type, extends(BasicAI) :: UpDownVectorAI
    class(BasicVelocityProperties), pointer :: f_velocityInterface => null()
    integer(4) :: f_index = 0
  contains
    procedure :: jm_processAI_1 => UpDownVectorAI_jm_processAI_1
  end type


contains

  function UpDownVectorAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpDownVectorAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpDownVectorAI)
      jresult => object
    end select
  end function

  recursive function UpDownVectorAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(UpDownVectorAI), pointer :: this
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(BasicDecimal), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'UpDownVectorAI'
    
    this%f_index = 0
        continue ! super()
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_velocityInterface => j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0()
        jtemp1 => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
        call jtemp1%jm_setint_1(0)
  end function

  recursive subroutine UpDownVectorAI_jm_processAI_1(this, j_layerManager)
    class(UpDownVectorAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    integer(4) :: j_y
    class(BasicDecimal), pointer :: j_basicDecimal
    class(AllBinaryLayer), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => this%jm_getOwnerLayerInterface_0()
        j_y = (jtemp2%jm_getHeight_0() * 270)
        if ((this%f_index < 5)) then
            j_basicDecimal => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
            call j_basicDecimal%jm_setint_1(0)
            call j_basicDecimal%jm_addint_1(j_y)
            this%f_index = this%f_index + 1
        else if ((this%f_index < 10)) then
            j_basicDecimal => this%f_velocityInterface%jm_getVelocityYBasicDecimalP_0()
            call j_basicDecimal%jm_setint_1(0)
            call j_basicDecimal%jm_subtractint_1(j_y)
            this%f_index = this%f_index + 1
        else
            this%f_index = 0
            call this%jm_processAI_1(j_layerManager)
        end if
  end subroutine
end module UpDownVectorAI_m

