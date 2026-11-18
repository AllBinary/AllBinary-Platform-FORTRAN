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
module ConstantVelocityNotifyViewChangeMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicVelocityProperties_m
  use AllBinaryLayer_m
  use BasicDecimal_m
  use AxisMathVectorUtil_m
  use AngleFactory_m
  use Movement_m
  implicit none

  type, extends(Movement) :: ConstantVelocityNotifyViewChangeMovement
    class(BasicVelocityProperties), pointer :: f_basicVelocityProperties => null()
    class(BasicDecimal), pointer :: f_speedBasicDecimal => null()
    class(AxisMathVectorUtil), pointer :: f_axisMathVectorUtil => null()
  contains
    procedure :: jm_init_3 => ConstantVelocityNotifyViewChangeMovement_jm_init_3
    procedure :: jm_moveOutsideRadius_4 => ConstantVelocityNotifyViewChangeMovement_jm_moveOutsideRadius_4
    procedure :: jm_process_1 => ConstantVelocityNotifyViewChangeMovement_jm_process_1
    procedure :: jm_stop_0 => ConstantVelocityNotifyViewChangeMovement_jm_stop_0
  end type


contains

  function ConstantVelocityNotifyViewChangeMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ConstantVelocityNotifyViewChangeMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ConstantVelocityNotifyViewChangeMovement)
      jresult => object
    end select
  end function

  recursive function ConstantVelocityNotifyViewChangeMovement_jnew_0() result(this)
    class(ConstantVelocityNotifyViewChangeMovement), pointer :: this
    allocate(this)
    this%jclass = 'ConstantVelocityNotifyViewChangeMovement'
    
    
    this%f_axisMathVectorUtil => AxisMathVectorUtil_jm_getInstance_0()
        this%f_speedBasicDecimal => BasicDecimal_jstatic_ZERO_BIGDECIMAL()
        this%f_basicVelocityProperties => BasicVelocityProperties_jnew_0()
  end function

  recursive subroutine ConstantVelocityNotifyViewChangeMovement_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(ConstantVelocityNotifyViewChangeMovement), target :: this
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
        call this%f_basicVelocityProperties%jm_setVelocityWithBigDecimal_3(j_speedBasicDecimal, j_angleFactory%jm_getAt_1(j_angle), j_angleFactory%jm_getAt_1(j_otherAngle))
  end subroutine

  recursive subroutine ConstantVelocityNotifyViewChangeMovement_jm_moveOutsideRadius_4(this, j_layer, j_radius, j_angle, j_otherAngle)
    class(ConstantVelocityNotifyViewChangeMovement), target :: this
    class(AllBinaryLayer), target, optional :: j_layer
    integer(8), value :: j_radius
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    integer(4) :: j_scaleFactorValue
    integer(4) :: j_xVector
    integer(4) :: j_yVector
    integer(4) :: j_zVector
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
        j_zVector = JR_l2i(((this%f_axisMathVectorUtil%jm_calculateZ_2(j_radius, j_otherAngle) / int(j_scaleFactorValue, 8))))
        call j_layer%jm_moveDXYZ_3(j_xVector, j_yVector, j_zVector)
  end subroutine

  recursive subroutine ConstantVelocityNotifyViewChangeMovement_jm_process_1(this, j_layer)
    class(ConstantVelocityNotifyViewChangeMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_z
    class(BasicDecimal), pointer :: jtemp1
    class(BasicDecimal), pointer :: jtemp2
    class(BasicDecimal), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_basicVelocityProperties%jm_getVelocityXBasicDecimalP_0()
        j_x = jtemp1%jm_getScaled_0()
        jtemp2 => this%f_basicVelocityProperties%jm_getVelocityYBasicDecimalP_0()
        j_y = jtemp2%jm_getScaled_0()
        jtemp3 => this%f_basicVelocityProperties%jm_getVelocityZBasicDecimalP_0()
        j_z = jtemp3%jm_getScaled_0()
        call j_layer%jm_moveDXYZ_3(j_x, j_y, j_z)
        if ((((j_x /= 0) .or. (j_y /= 0)) .or. (j_z /= 0))) then
            call j_layer%jm_onViewPositionChangeEvent_0()
        end if
  end subroutine

  recursive subroutine ConstantVelocityNotifyViewChangeMovement_jm_stop_0(this)
    class(ConstantVelocityNotifyViewChangeMovement), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicVelocityProperties%jm_zero_0()
  end subroutine
end module ConstantVelocityNotifyViewChangeMovement_m

function ConstantVelocityNotifyViewChangeMovement_jnew_0_jext() result(this)
  use ConstantVelocityNotifyViewChangeMovement_m, only: JObject, ConstantVelocityNotifyViewChangeMovement_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ConstantVelocityNotifyViewChangeMovement_jnew_0()
end function

