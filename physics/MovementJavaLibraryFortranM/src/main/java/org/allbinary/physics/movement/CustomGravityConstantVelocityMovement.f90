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
module CustomGravityConstantVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use GravityUtil_m
  use VelocityProperties_m
  use BasicDecimal_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: CustomGravityConstantVelocityMovement
    integer(4) :: f_customGravity = 0
    class(GravityUtil), pointer :: f_gravityUtil => null()
  contains
    procedure :: jm_process_1 => CustomGravityConstantVelocityMovement_jm_process_1
  end type


contains

  function CustomGravityConstantVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomGravityConstantVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomGravityConstantVelocityMovement)
      jresult => object
    end select
  end function

  recursive function CustomGravityConstantVelocityMovement_jnew_2(j_speedBasicDecimal, j_customGravity) result(this)
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_customGravity
    class(CustomGravityConstantVelocityMovement), pointer :: this
    allocate(this)
    this%jclass = 'CustomGravityConstantVelocityMovement'
    
    this%f_gravityUtil => GravityUtil_jm_getInstance_0()
        continue ! super()
        this%f_customGravity = j_customGravity
  end function

  recursive subroutine CustomGravityConstantVelocityMovement_jm_process_1(this, j_layer)
    class(CustomGravityConstantVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(VelocityProperties), pointer :: j_velocityProperties
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicConstantVelocityMovement%jm_process_1(j_layer)
        call this%f_gravityUtil%jm_process_2(this%jm_getVelocityProperties_0(), this%f_customGravity)
        j_velocityProperties => VelocityProperties_jcast(this%jm_getVelocityProperties_0())
        call j_velocityProperties%jm_limitMaxYForwardVelocity_0()
  end subroutine
end module CustomGravityConstantVelocityMovement_m

