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
! package org.allbinary.physics.movement
module NoZBasicConstantVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicVelocityProperties_m
  use VelocityInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use BasicDecimal_m
  use AxisMathVectorUtil_m
  use AngleFactory_m
  use Movement_m
  implicit none

  type, extends(Movement) :: NoZBasicConstantVelocityMovement
    class(BasicVelocityProperties), pointer :: f_velocityProperties => null()
    class(BasicDecimal), pointer :: f_speedBasicDecimal => null()
    class(AxisMathVectorUtil), pointer :: f_axisMathVectorUtil => null()
  contains
    procedure :: jm_init_3 => NoZBasicConstantVelocityMovement_jm_init_3
    procedure :: jm_moveOutsideRadius_4 => NoZBasicConstantVelocityMovement_jm_moveOutsideRadius_4
    procedure :: jm_process_1 => NoZBasicConstantVelocityMovement_jm_process_1
    procedure :: jm_toString_0 => NoZBasicConstantVelocityMovement_jm_toString_0
    procedure :: jm_stop_0 => NoZBasicConstantVelocityMovement_jm_stop_0
    procedure :: jm_getVelocityProperties_0 => NoZBasicConstantVelocityMovement_jm_getVelocityProperties_0
    procedure :: jm_setVelocityProperties_1 => NoZBasicConstantVelocityMovement_jm_setVelocityProperties_1
    procedure :: jm_setSpeedBasicDecimal_1 => NoZBasicConstantVelocityMovement_jm_setSpeedBasicDecimal_1
    procedure :: jm_getSpeedBasicDecimal_0 => NoZBasicConstantVelocityMovement_jm_getSpeedBasicDecimal_0
  end type

  ! NoZBasicConstantVelocityMovement used as a VelocityInterfaceCompositeInterface
  type, extends(VelocityInterfaceCompositeInterface) :: NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface
    class(NoZBasicConstantVelocityMovement), pointer :: jtarget => null()
  contains
    procedure :: jm_getVelocityProperties_0 => NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface_jm_getVelocityProperties_0
  end type


contains

  function NoZBasicConstantVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoZBasicConstantVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoZBasicConstantVelocityMovement)
      jresult => object
    end select
  end function

  function NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface_jnew(object) result(jresult)
    class(NoZBasicConstantVelocityMovement), target :: object
    class(NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NoZBasicConstantVelocityMovement'
    jresult%jtarget => object
  end function

  recursive function NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface_jm_getVelocityProperties_0(this) result(jresult)
    class(NoZBasicConstantVelocityMovement_jas_VelocityInterfaceCompositeInterface), target :: this
    class(BasicVelocityProperties), pointer :: jresult
    jresult => this%jtarget%jm_getVelocityProperties_0()
  end function

  recursive function NoZBasicConstantVelocityMovement_jnew_2(j_basicDecimal, j_velocityProperties) result(this)
    class(BasicDecimal), target, optional :: j_basicDecimal
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    class(NoZBasicConstantVelocityMovement), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NoZBasicConstantVelocityMovement'
    
    this%f_speedBasicDecimal => BasicDecimal_jstatic_ZERO_BIGDECIMAL()
    this%f_axisMathVectorUtil => AxisMathVectorUtil_jm_getInstance_0()
        call this%jm_setSpeedBasicDecimal_1(j_basicDecimal)
        this%f_velocityProperties => j_velocityProperties
  end function

  recursive subroutine NoZBasicConstantVelocityMovement_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(AngleFactory), pointer :: j_angleFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_speedBasicDecimal => j_speedBasicDecimal
        j_angleFactory => AngleFactory_jm_getInstance_0()
        call this%f_velocityProperties%jm_setVelocityWithBigDecimal_3(j_speedBasicDecimal, j_angleFactory%jm_getAt_1(j_angle), j_angleFactory%jm_getAt_1(j_otherAngle))
  end subroutine

  recursive subroutine NoZBasicConstantVelocityMovement_jm_moveOutsideRadius_4(this, j_layer, j_radius, j_angle, j_otherAngle)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(AllBinaryLayer), target, optional :: j_layer
    integer(8), value :: j_radius
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    integer(4) :: j_scaleFactorValue
    integer(4) :: j_xVector
    integer(4) :: j_yVector
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scaleFactorValue = this%f_speedBasicDecimal%jm_getScaledFactorValue_0()
        j_xVector = JR_l2i(((this%f_axisMathVectorUtil%jm_calculateX_2(j_radius, j_angle) / int(j_scaleFactorValue, 8))))
        j_yVector = JR_l2i(((this%f_axisMathVectorUtil%jm_calculateY_2(j_radius, j_angle) / int(j_scaleFactorValue, 8))))
        call j_layer%jm_moveDXYZ_3(j_xVector, j_yVector, 0)
  end subroutine

  recursive subroutine NoZBasicConstantVelocityMovement_jm_process_1(this, j_layer)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(BasicDecimal), pointer :: jtemp1
    class(BasicDecimal), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        jtemp2 => this%f_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        call j_layer%jm_moveDXYZ_3(jtemp1%jm_getScaled_0(), jtemp2%jm_getScaled_0(), 0)
  end subroutine

  recursive function NoZBasicConstantVelocityMovement_jm_toString_0(this) result(jresult)
    class(NoZBasicConstantVelocityMovement), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_velocityProperties%jm_toString_0()
        return
  end function

  recursive subroutine NoZBasicConstantVelocityMovement_jm_stop_0(this)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_velocityProperties%jm_zero_0()
  end subroutine

  recursive function NoZBasicConstantVelocityMovement_jm_getVelocityProperties_0(this) result(jresult)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(BasicVelocityProperties), pointer :: jresult
        jresult => this%f_velocityProperties
        return
  end function

  recursive subroutine NoZBasicConstantVelocityMovement_jm_setVelocityProperties_1(this, j_velocityProperties)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
        this%f_velocityProperties => j_velocityProperties
  end subroutine

  recursive subroutine NoZBasicConstantVelocityMovement_jm_setSpeedBasicDecimal_1(this, j_speedBasicDecimal)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
        this%f_speedBasicDecimal => j_speedBasicDecimal
  end subroutine

  recursive function NoZBasicConstantVelocityMovement_jm_getSpeedBasicDecimal_0(this) result(jresult)
    class(NoZBasicConstantVelocityMovement), target :: this
    class(BasicDecimal), pointer :: jresult
        jresult => this%f_speedBasicDecimal
        return
  end function
end module NoZBasicConstantVelocityMovement_m

