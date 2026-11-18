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
! package org.allbinary.game.physics.velocity
module BasicVelocityProperties_m
  use JR_m
  use Direction_m
  use DirectionUtil_m
  use LogUtil_m
  use BasicDecimal_m
  use AxisMathVectorUtil_m
  use StringMaker_m
  use StringUtil_m
  use Angle_m
  use PositionStrings_m
  use CommonSeps_m
  use BasicVelocityInterface_m
  implicit none

  type, extends(BasicVelocityInterface) :: BasicVelocityProperties
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicDecimal), pointer :: f_velocityXBasicDecimal => null()
    class(BasicDecimal), pointer :: f_velocityYBasicDecimal => null()
    class(BasicDecimal), pointer :: f_velocityZBasicDecimal => null()
    class(AxisMathVectorUtil), pointer :: f_axisMathVectorUtil => null()
    class(DirectionUtil), pointer :: f_directionUtil => null()
  contains
    procedure :: jm_zero_0 => BasicVelocityProperties_jm_zero_0
    procedure :: jm_getVelocityXBasicDecimalP_0 => BasicVelocityProperties_jm_getVelocityXBasicDecimalP_0
    procedure :: jm_getVelocityYBasicDecimalP_0 => BasicVelocityProperties_jm_getVelocityYBasicDecimalP_0
    procedure :: jm_getVelocityZBasicDecimalP_0 => BasicVelocityProperties_jm_getVelocityZBasicDecimalP_0
    procedure :: jm_setVelocityWithBigDecimalAndDirection_3 => BasicVelocityProperties_jm_setVelocityWithBigDecimalAndDirection_3
    procedure :: jm_setVelocityWithDirection_3 => BasicVelocityProperties_jm_setVelocityWithDirection_3
    procedure :: jm_addVelocityWithBigDecimalAndDirection_3 => BasicVelocityProperties_jm_addVelocityWithBigDecimalAndDirection_3
    procedure :: jm_addVelocityWithDirection_3 => BasicVelocityProperties_jm_addVelocityWithDirection_3
    procedure :: jm_setVelocityWithBigDecimal_3 => BasicVelocityProperties_jm_setVelocityWithBigDecimal_3
    procedure :: jm_addVelocityWithBigDecimal_3 => BasicVelocityProperties_jm_addVelocityWithBigDecimal_3
    procedure :: jm_setVelocity_3 => BasicVelocityProperties_jm_setVelocity_3
    procedure :: jm_addVelocity_3 => BasicVelocityProperties_jm_addVelocity_3
    procedure :: jm_setVelocityi_3 => BasicVelocityProperties_jm_setVelocityi_3
    procedure :: jm_addVelocityi_3 => BasicVelocityProperties_jm_addVelocityi_3
    procedure :: jm_toString_0 => BasicVelocityProperties_jm_toString_0
  end type


contains

  function BasicVelocityProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicVelocityProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicVelocityProperties)
      jresult => object
    end select
  end function

  recursive function BasicVelocityProperties_jnew_0() result(this)
    class(BasicVelocityProperties), pointer :: this
    allocate(this)
    this%jclass = 'BasicVelocityProperties'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
    
    this%f_axisMathVectorUtil => AxisMathVectorUtil_jm_getInstance_0()
    this%f_directionUtil => DirectionUtil_jm_getInstance_0()
        this%f_velocityXBasicDecimal => BasicDecimal_jnew_1(int(0, 8))
        this%f_velocityYBasicDecimal => BasicDecimal_jnew_1(int(0, 8))
        this%f_velocityZBasicDecimal => BasicDecimal_jnew_1(int(0, 8))
  end function

  recursive subroutine BasicVelocityProperties_jm_zero_0(this)
    class(BasicVelocityProperties), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_velocityXBasicDecimal%jm_setint_1(0)
        call this%f_velocityYBasicDecimal%jm_setint_1(0)
        call this%f_velocityZBasicDecimal%jm_setint_1(0)
  end subroutine

  recursive function BasicVelocityProperties_jm_getVelocityXBasicDecimalP_0(this) result(jresult)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), pointer :: jresult
        jresult => this%f_velocityXBasicDecimal
        return
  end function

  recursive function BasicVelocityProperties_jm_getVelocityYBasicDecimalP_0(this) result(jresult)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), pointer :: jresult
        jresult => this%f_velocityYBasicDecimal
        return
  end function

  recursive function BasicVelocityProperties_jm_getVelocityZBasicDecimalP_0(this) result(jresult)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), pointer :: jresult
        jresult => this%f_velocityZBasicDecimal
        return
  end function

  recursive subroutine BasicVelocityProperties_jm_setVelocityWithBigDecimalAndDirection_3(this, j_magnitudeBasicDecimal, j_direction, j_otherDirection)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    class(Angle), pointer :: j_angle
    class(Angle), pointer :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_angle => this%f_directionUtil%jm_getAngle_1(j_direction)
        j_otherAngle => this%f_directionUtil%jm_getAngle_1(j_otherDirection)
        call this%jm_setVelocityWithBigDecimal_3(j_magnitudeBasicDecimal, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_setVelocityWithDirection_3(this, j_magnitude, j_direction, j_otherDirection)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    class(Angle), pointer :: j_angle
    class(Angle), pointer :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_angle => this%f_directionUtil%jm_getAngle_1(j_direction)
        j_otherAngle => this%f_directionUtil%jm_getAngle_1(j_otherDirection)
        call this%jm_setVelocity_3(j_magnitude, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_addVelocityWithBigDecimalAndDirection_3(this, j_magnitudeBasicDecimal, j_direction, j_otherDirection)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    class(Angle), pointer :: j_angle
    class(Angle), pointer :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_angle => this%f_directionUtil%jm_getAngle_1(j_direction)
        j_otherAngle => this%f_directionUtil%jm_getAngle_1(j_otherDirection)
        call this%jm_addVelocityWithBigDecimal_3(j_magnitudeBasicDecimal, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_addVelocityWithDirection_3(this, j_magnitude, j_direction, j_otherDirection)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    class(Angle), pointer :: j_angle
    class(Angle), pointer :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_angle => this%f_directionUtil%jm_getAngle_1(j_direction)
        j_otherAngle => this%f_directionUtil%jm_getAngle_1(j_otherDirection)
        call this%jm_addVelocity_3(j_magnitude, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_setVelocityWithBigDecimal_3(this, j_magnitudeBasicDecimal, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    integer(8) :: j_magnitude
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_magnitude = j_magnitudeBasicDecimal%jm_getUnscaled_0()
        call this%jm_setVelocity_3(j_magnitude, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_addVelocityWithBigDecimal_3(this, j_magnitudeBasicDecimal, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    integer(8) :: j_magnitude
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_magnitude = j_magnitudeBasicDecimal%jm_getUnscaled_0()
        call this%jm_addVelocity_3(j_magnitude, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_setVelocity_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setVelocityi_3(j_magnitude, j_angle%jm_getValue_0(), j_otherAngle%jm_getValue_0())
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_addVelocity_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_addVelocityi_3(j_magnitude, j_angle%jm_getValue_0(), j_otherAngle%jm_getValue_0())
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_setVelocityi_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    integer(8) :: j_xVector
    integer(8) :: j_yVector
    integer(8) :: j_zVector
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_xVector = ((this%f_axisMathVectorUtil%jm_calculateX_2(j_magnitude, j_angle) / int(this%f_velocityXBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        j_yVector = ((this%f_axisMathVectorUtil%jm_calculateY_2(j_magnitude, j_angle) / int(this%f_velocityYBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        j_zVector = ((this%f_axisMathVectorUtil%jm_calculateZ_2(j_magnitude, j_otherAngle) / int(this%f_velocityZBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        call this%f_velocityXBasicDecimal%jm_setlong_1(j_xVector)
        call this%f_velocityYBasicDecimal%jm_setlong_1(j_yVector)
        call this%f_velocityZBasicDecimal%jm_setlong_1(j_zVector)
  end subroutine

  recursive subroutine BasicVelocityProperties_jm_addVelocityi_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityProperties), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    integer(8) :: j_xVector
    integer(8) :: j_yVector
    integer(8) :: j_zVector
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_xVector = ((this%f_axisMathVectorUtil%jm_calculateX_2(j_magnitude, j_angle) / int(this%f_velocityXBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        j_yVector = ((this%f_axisMathVectorUtil%jm_calculateY_2(j_magnitude, j_angle) / int(this%f_velocityYBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        j_zVector = ((this%f_axisMathVectorUtil%jm_calculateZ_2(j_magnitude, j_otherAngle) / int(this%f_velocityZBasicDecimal%jm_getScaledFactorValue_0(), 8)))
        call this%f_velocityXBasicDecimal%jm_addlong_1(j_xVector)
        call this%f_velocityYBasicDecimal%jm_addlong_1(j_yVector)
        call this%f_velocityZBasicDecimal%jm_addlong_1(j_zVector)
  end subroutine

  recursive function BasicVelocityProperties_jm_toString_0(this) result(jresult)
    class(BasicVelocityProperties), target :: this
    character(len=:), allocatable :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    class(PositionStrings), pointer :: j_positionStrings
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: j_stringUtil
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_positionStrings => PositionStrings_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        j_stringUtil => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Velocity ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_X_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_velocityXBasicDecimal))
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Y_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_velocityYBasicDecimal))
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Z_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_velocityZBasicDecimal))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BasicVelocityProperties_m

