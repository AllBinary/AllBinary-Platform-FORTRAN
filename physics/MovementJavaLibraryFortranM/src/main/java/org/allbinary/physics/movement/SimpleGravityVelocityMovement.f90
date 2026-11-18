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
module SimpleGravityVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use GravityUtil_m
  use VelocityProperties_m
  use BasicDecimal_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: SimpleGravityVelocityMovement
    class(GravityUtil), pointer :: f_gravityUtil => null()
  contains
    procedure :: jm_process_1 => SimpleGravityVelocityMovement_jm_process_1
  end type


contains

  function SimpleGravityVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleGravityVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleGravityVelocityMovement)
      jresult => object
    end select
  end function

  recursive function SimpleGravityVelocityMovement_jnew_1(j_speedBasicDecimal) result(this)
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    class(SimpleGravityVelocityMovement), pointer :: this
    allocate(this)
    this%jclass = 'SimpleGravityVelocityMovement'
    this%f_gravityUtil => GravityUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine SimpleGravityVelocityMovement_jm_process_1(this, j_layer)
    class(SimpleGravityVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gravityUtil%jm_process_2(this%jm_getVelocityProperties_0(), this%f_gravityUtil%f_GAME_GRAVITY_VELOCITY)
        call this%BasicConstantVelocityMovement%jm_process_1(j_layer)
  end subroutine
end module SimpleGravityVelocityMovement_m

