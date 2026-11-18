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
module DelayedConstantVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicVelocityProperties_m
  use BasicDecimal_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: DelayedConstantVelocityMovement
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
  contains
    procedure :: jm_init_3 => DelayedConstantVelocityMovement_jm_init_3
    procedure :: jm_process_1 => DelayedConstantVelocityMovement_jm_process_1
  end type


contains

  function DelayedConstantVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DelayedConstantVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DelayedConstantVelocityMovement)
      jresult => object
    end select
  end function

  recursive function DelayedConstantVelocityMovement_jnew_2(j_basicDecimal, j_velocityProperties) result(this)
    class(BasicDecimal), target, optional :: j_basicDecimal
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    class(DelayedConstantVelocityMovement), pointer :: this
    allocate(this)
    this%jclass = 'DelayedConstantVelocityMovement'
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(60)
        continue ! super()
  end function

  recursive subroutine DelayedConstantVelocityMovement_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(DelayedConstantVelocityMovement), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    continue
  end subroutine

  recursive subroutine DelayedConstantVelocityMovement_jm_process_1(this, j_layer)
    class(DelayedConstantVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if (this%f_timeDelayHelper%jm_isTime_1(jtemp1%f_startTime)) then
            call this%BasicConstantVelocityMovement%jm_process_1(j_layer)
        end if
  end subroutine
end module DelayedConstantVelocityMovement_m

