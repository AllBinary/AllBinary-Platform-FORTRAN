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
! package org.allbinary.direction
module DirectionalInterface_m
  use JR_m
  use Angle_m
  use Direction_m
  implicit none

  type, extends(JObject) :: DirectionalInterface
  contains
    procedure :: jm_setFrameByDirection_1 => DirectionalInterface_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => DirectionalInterface_jm_setFrameToAngle_1
    procedure :: jm_adjustFrameToAngle_1 => DirectionalInterface_jm_adjustFrameToAngle_1
    procedure :: jm_adjustFrame_1 => DirectionalInterface_jm_adjustFrame_1
  end type


contains

  function DirectionalInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionalInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionalInterface)
      jresult => object
    end select
  end function

  function DirectionalInterface_jnew_0() result(this)
    class(DirectionalInterface), pointer :: this
    allocate(this)
    this%jclass = 'DirectionalInterface'
  end function

  recursive subroutine DirectionalInterface_jm_setFrameByDirection_1(this, j_direction)
    class(DirectionalInterface), target :: this
    class(Direction), target, optional :: j_direction
    error stop 'AbstractMethodError: DirectionalInterface.setFrameByDirection'
  end subroutine

  recursive subroutine DirectionalInterface_jm_setFrameToAngle_1(this, j_angle)
    class(DirectionalInterface), target :: this
    class(Angle), target, optional :: j_angle
    error stop 'AbstractMethodError: DirectionalInterface.setFrameToAngle'
  end subroutine

  recursive subroutine DirectionalInterface_jm_adjustFrameToAngle_1(this, j_newAngle)
    class(DirectionalInterface), target :: this
    class(Angle), target, optional :: j_newAngle
    error stop 'AbstractMethodError: DirectionalInterface.adjustFrameToAngle'
  end subroutine

  recursive subroutine DirectionalInterface_jm_adjustFrame_1(this, j_angle)
    class(DirectionalInterface), target :: this
    integer(4), value :: j_angle
    error stop 'AbstractMethodError: DirectionalInterface.adjustFrame'
  end subroutine
end module DirectionalInterface_m

