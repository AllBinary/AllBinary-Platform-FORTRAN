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
module MovementInterface_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicDecimal_m
  implicit none

  type, extends(JObject) :: MovementInterface
  contains
    procedure :: jm_init_3 => MovementInterface_jm_init_3
    procedure :: jm_process_1 => MovementInterface_jm_process_1
    procedure :: jm_stop_0 => MovementInterface_jm_stop_0
  end type


contains

  function MovementInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MovementInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MovementInterface)
      jresult => object
    end select
  end function

  function MovementInterface_jnew_0() result(this)
    class(MovementInterface), pointer :: this
    allocate(this)
    this%jclass = 'MovementInterface'
  end function

  recursive subroutine MovementInterface_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(MovementInterface), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    error stop 'AbstractMethodError: MovementInterface.init'
  end subroutine

  recursive subroutine MovementInterface_jm_process_1(this, j_layer)
    class(MovementInterface), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    error stop 'AbstractMethodError: MovementInterface.process'
  end subroutine

  recursive subroutine MovementInterface_jm_stop_0(this)
    class(MovementInterface), target :: this
    error stop 'AbstractMethodError: MovementInterface.stop'
  end subroutine
end module MovementInterface_m

