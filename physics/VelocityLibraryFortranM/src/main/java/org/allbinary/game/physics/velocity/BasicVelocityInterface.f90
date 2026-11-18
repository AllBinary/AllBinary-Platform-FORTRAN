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
module BasicVelocityInterface_m
  use JR_m
  use Direction_m
  use BasicDecimal_m
  use Angle_m
  implicit none

  type, extends(JObject) :: BasicVelocityInterface
  contains
    procedure :: jm_getVelocityXBasicDecimalP_0 => BasicVelocityInterface_jm_getVelocityXBasicDecimalP_0
    procedure :: jm_getVelocityYBasicDecimalP_0 => BasicVelocityInterface_jm_getVelocityYBasicDecimalP_0
    procedure :: jm_zero_0 => BasicVelocityInterface_jm_zero_0
    procedure :: jm_setVelocityWithBigDecimalAndDirection_3 => BasicVelocityInterface_jm_setVelocityWithBigDecimalAndDirection_3
    procedure :: jm_addVelocityWithBigDecimalAndDirection_3 => BasicVelocityInterface_jm_addVelocityWithBigDecimalAndDirection_3
    procedure :: jm_setVelocityWithDirection_3 => BasicVelocityInterface_jm_setVelocityWithDirection_3
    procedure :: jm_addVelocityWithDirection_3 => BasicVelocityInterface_jm_addVelocityWithDirection_3
    procedure :: jm_setVelocityWithBigDecimal_3 => BasicVelocityInterface_jm_setVelocityWithBigDecimal_3
    procedure :: jm_addVelocityWithBigDecimal_3 => BasicVelocityInterface_jm_addVelocityWithBigDecimal_3
    procedure :: jm_setVelocity_3 => BasicVelocityInterface_jm_setVelocity_3
    procedure :: jm_addVelocity_3 => BasicVelocityInterface_jm_addVelocity_3
    procedure :: jm_addVelocityi_3 => BasicVelocityInterface_jm_addVelocityi_3
  end type


contains

  function BasicVelocityInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicVelocityInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicVelocityInterface)
      jresult => object
    end select
  end function

  function BasicVelocityInterface_jnew_0() result(this)
    class(BasicVelocityInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicVelocityInterface'
  end function

  recursive function BasicVelocityInterface_jm_getVelocityXBasicDecimalP_0(this) result(jresult)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), pointer :: jresult
    error stop 'AbstractMethodError: BasicVelocityInterface.getVelocityXBasicDecimalP'
  end function

  recursive function BasicVelocityInterface_jm_getVelocityYBasicDecimalP_0(this) result(jresult)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), pointer :: jresult
    error stop 'AbstractMethodError: BasicVelocityInterface.getVelocityYBasicDecimalP'
  end function

  recursive subroutine BasicVelocityInterface_jm_zero_0(this)
    class(BasicVelocityInterface), target :: this
    error stop 'AbstractMethodError: BasicVelocityInterface.zero'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_setVelocityWithBigDecimalAndDirection_3(this, j_magnitudeBasicDecimal, j_direction, j_otherDirection)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    error stop 'AbstractMethodError: BasicVelocityInterface.setVelocityWithBigDecimalAndDirection'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_addVelocityWithBigDecimalAndDirection_3(this, j_magnitudeBasicDecimal, j_direction, j_otherDirection)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    error stop 'AbstractMethodError: BasicVelocityInterface.addVelocityWithBigDecimalAndDirection'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_setVelocityWithDirection_3(this, j_magnitude, j_direction, j_otherDirection)
    class(BasicVelocityInterface), target :: this
    integer(8), value :: j_magnitude
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    error stop 'AbstractMethodError: BasicVelocityInterface.setVelocityWithDirection'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_addVelocityWithDirection_3(this, j_magnitude, j_direction, j_otherDirection)
    class(BasicVelocityInterface), target :: this
    integer(8), value :: j_magnitude
    class(Direction), target, optional :: j_direction
    class(Direction), target, optional :: j_otherDirection
    error stop 'AbstractMethodError: BasicVelocityInterface.addVelocityWithDirection'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_setVelocityWithBigDecimal_3(this, j_magnitudeBasicDecimal, j_angle, j_otherAngle)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    error stop 'AbstractMethodError: BasicVelocityInterface.setVelocityWithBigDecimal'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_addVelocityWithBigDecimal_3(this, j_magnitudeBasicDecimal, j_angle, j_otherAngle)
    class(BasicVelocityInterface), target :: this
    class(BasicDecimal), target, optional :: j_magnitudeBasicDecimal
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    error stop 'AbstractMethodError: BasicVelocityInterface.addVelocityWithBigDecimal'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_setVelocity_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityInterface), target :: this
    integer(8), value :: j_magnitude
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    error stop 'AbstractMethodError: BasicVelocityInterface.setVelocity'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_addVelocity_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityInterface), target :: this
    integer(8), value :: j_magnitude
    class(Angle), target, optional :: j_angle
    class(Angle), target, optional :: j_otherAngle
    error stop 'AbstractMethodError: BasicVelocityInterface.addVelocity'
  end subroutine

  recursive subroutine BasicVelocityInterface_jm_addVelocityi_3(this, j_magnitude, j_angle, j_otherAngle)
    class(BasicVelocityInterface), target :: this
    integer(8), value :: j_magnitude
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    error stop 'AbstractMethodError: BasicVelocityInterface.addVelocityi'
  end subroutine
end module BasicVelocityInterface_m

