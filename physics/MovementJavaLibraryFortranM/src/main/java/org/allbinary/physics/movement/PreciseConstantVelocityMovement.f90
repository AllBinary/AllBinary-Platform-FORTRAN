! Generated Code Do Not Modify
! package org.allbinary.physics.movement
module PreciseConstantVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicVelocityProperties_m
  use BasicDecimal_m
  use MathUtil_m
  use ScaleFactorFactory_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: PreciseConstantVelocityMovement
    integer(4) :: f_accumulatedX = 0
    integer(4) :: f_accumulatedY = 0
    integer(4) :: f_accumulatedZ = 0
    integer(4) :: f_factorValue = 0
  contains
    procedure :: jm_init_3 => PreciseConstantVelocityMovement_jm_init_3
    procedure :: jm_process_1 => PreciseConstantVelocityMovement_jm_process_1
  end type


contains

  function PreciseConstantVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PreciseConstantVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PreciseConstantVelocityMovement)
      jresult => object
    end select
  end function

  recursive function PreciseConstantVelocityMovement_jnew_2(j_basicDecimal, j_velocityProperties) result(this)
    class(BasicDecimal), target, optional :: j_basicDecimal
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    class(PreciseConstantVelocityMovement), pointer :: this
    class(ScaleFactorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PreciseConstantVelocityMovement'
    
    
    
    jtemp1 => ScaleFactorFactory_jm_getInstance_0()
    this%f_factorValue = jtemp1%f_DEFAULT_SCALE_VALUE
        continue ! super()
  end function

  recursive subroutine PreciseConstantVelocityMovement_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(PreciseConstantVelocityMovement), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    continue
  end subroutine

  recursive subroutine PreciseConstantVelocityMovement_jm_process_1(this, j_layer)
    class(PreciseConstantVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(MathUtil), pointer :: j_mathUtil
    class(BasicVelocityProperties), pointer :: j_velocityProperties
    class(BasicDecimal), pointer :: jtemp2
    class(BasicDecimal), pointer :: jtemp3
    class(BasicDecimal), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mathUtil => MathUtil_jm_getInstance_0()
        j_velocityProperties => this%jm_getVelocityProperties_0()
        jtemp2 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        this%f_accumulatedX = JR_l2i(((int(this%f_accumulatedX, 8) + jtemp2%jm_getUnscaled_0())))
        jtemp3 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        this%f_accumulatedY = JR_l2i(((int(this%f_accumulatedY, 8) + jtemp3%jm_getUnscaled_0())))
        jtemp4 => j_velocityProperties%jm_getVelocityZBasicDecimalP_0()
        this%f_accumulatedZ = JR_l2i(((int(this%f_accumulatedZ, 8) + jtemp4%jm_getUnscaled_0())))
        call j_layer%jm_moveDXYZ_3((this%f_accumulatedX / this%f_factorValue), (this%f_accumulatedY / this%f_factorValue), (this%f_accumulatedZ / this%f_factorValue))
        if ((j_mathUtil%jm_abs_1(this%f_accumulatedX) > this%f_factorValue)) then
            this%f_accumulatedX = 0
        end if
        if ((j_mathUtil%jm_abs_1(this%f_accumulatedY) > this%f_factorValue)) then
            this%f_accumulatedY = 0
        end if
        if ((j_mathUtil%jm_abs_1(this%f_accumulatedZ) > this%f_factorValue)) then
            this%f_accumulatedZ = 0
        end if
  end subroutine
end module PreciseConstantVelocityMovement_m

