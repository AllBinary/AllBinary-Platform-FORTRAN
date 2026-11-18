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
module OscillateVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use VelocityProperties_m
  use BasicDecimal_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: OscillateVelocityMovement
    integer(4) :: f_oscillateMin = 0
    integer(4) :: f_oscillateMax = 0
    integer(4) :: f_oscillate = 0
    logical :: f_oscillatePositive = .false.
  contains
    procedure :: jm_process_1 => OscillateVelocityMovement_jm_process_1
  end type


contains

  function OscillateVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OscillateVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OscillateVelocityMovement)
      jresult => object
    end select
  end function

  recursive function OscillateVelocityMovement_jnew_3(j_speedBasicDecimal, j_oscillateMin, j_oscillateMax) result(this)
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_oscillateMin
    integer(4), value :: j_oscillateMax
    class(OscillateVelocityMovement), pointer :: this
    allocate(this)
    this%jclass = 'OscillateVelocityMovement'
    
    
    
    
        continue ! super()
        this%f_oscillateMin = j_oscillateMin
        this%f_oscillateMax = j_oscillateMax
  end function

  recursive subroutine OscillateVelocityMovement_jm_process_1(this, j_layer)
    class(OscillateVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    class(BasicDecimal), pointer :: jtemp1
    class(BasicVelocityProperties), pointer :: jtemp2
    class(BasicDecimal), pointer :: jtemp3
    class(BasicVelocityProperties), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicConstantVelocityMovement%jm_process_1(j_layer)
        if ((this%f_oscillate < this%f_oscillateMin)) then
            this%f_oscillatePositive = .true.
        else if ((this%f_oscillate > this%f_oscillateMax)) then
            this%f_oscillatePositive = .false.
        end if
        if (this%f_oscillatePositive) then
            this%f_oscillate = this%f_oscillate + 1
            jtemp4 => this%jm_getVelocityProperties_0()
            jtemp3 => jtemp4%jm_getVelocityXBasicDecimalP_0()
            call jtemp3%jm_addint_1(2000)
        else
            this%f_oscillate = this%f_oscillate - 1
            jtemp2 => this%jm_getVelocityProperties_0()
            jtemp1 => jtemp2%jm_getVelocityXBasicDecimalP_0()
            call jtemp1%jm_subtractint_1(2000)
        end if
  end subroutine
end module OscillateVelocityMovement_m

