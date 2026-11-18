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
! package org.allbinary.animation
module VectorRotationAnimation_m
  use JR_m
  use Direction_m
  use BasicColor_m
  use Angle_m
  use AngleFactory_m
  use AngleInfo_m
  use VectorBaseRotationAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(VectorBaseRotationAnimation) :: VectorRotationAnimation
  contains
    procedure :: jm_setFrameByDirection_1 => VectorRotationAnimation_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => VectorRotationAnimation_jm_setFrameToAngle_1
    procedure :: jm_setFrame_1 => VectorRotationAnimation_jm_setFrame_1
    procedure :: jm_adjustFrame_1 => VectorRotationAnimation_jm_adjustFrame_1
    procedure :: jm_adjustFrameToAngle_1 => VectorRotationAnimation_jm_adjustFrameToAngle_1
  end type


contains

  function VectorRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorRotationAnimation)
      jresult => object
    end select
  end function

  recursive function VectorRotationAnimation_jnew_3(j_currentPoints, j_basicColor, j_animationBehavior) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(VectorRotationAnimation), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorRotationAnimation'
        jtemp1 => AngleFactory_jm_getInstance_0()
        continue ! super()
        call this%f_angleInfo%jm_adjustAngle_1(this%jm_getFrame_0())
  end function

  recursive subroutine VectorRotationAnimation_jm_setFrameByDirection_1(this, j_direction)
    class(VectorRotationAnimation), target :: this
    class(Direction), target, optional :: j_direction
    class(Angle), pointer :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_angle => this%f_directionUtil%jm_getFrameAngle_1(j_direction)
        call this%jm_adjustFrameToAngle_1(j_angle)
  end subroutine

  recursive subroutine VectorRotationAnimation_jm_setFrameToAngle_1(this, j_angle)
    class(VectorRotationAnimation), target :: this
    class(Angle), target, optional :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_adjustFrameToAngle_1(j_angle)
  end subroutine

  recursive subroutine VectorRotationAnimation_jm_setFrame_1(this, j_index)
    class(VectorRotationAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%VectorBaseRotationAnimation%jm_setFrame_1(j_index)
        call this%f_angleInfo%jm_adjustAngle_1(this%jm_getFrame_0())
  end subroutine

  recursive subroutine VectorRotationAnimation_jm_adjustFrame_1(this, j_angle)
    class(VectorRotationAnimation), target :: this
    integer(4), value :: j_angle
    class(JObject), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => this%f_angleInfo%jm_getAngleIncrementInfo_0()
        call this%jm_setFrame_1(this%f_frameUtil%jm_getFrameForAngle_2(j_angle, jtemp2%jm_getAngleIncrement_0()))
  end subroutine

  recursive subroutine VectorRotationAnimation_jm_adjustFrameToAngle_1(this, j_angle)
    class(VectorRotationAnimation), target :: this
    class(Angle), target, optional :: j_angle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_adjustFrame_1(j_angle%jm_getValue_0())
  end subroutine
end module VectorRotationAnimation_m

