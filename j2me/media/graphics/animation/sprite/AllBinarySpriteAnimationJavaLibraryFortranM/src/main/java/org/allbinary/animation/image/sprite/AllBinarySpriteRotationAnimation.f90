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
! package org.allbinary.animation.image.sprite
module AllBinarySpriteRotationAnimation_m
  use JR_m
  use AnimationBehavior_m
  use Direction_m
  use Angle_m
  use AngleFactory_m
  use AngleInfo_m
  use HackRotationSpriteIndexedAnimation_m
  implicit none

  type, extends(HackRotationSpriteIndexedAnimation) :: AllBinarySpriteRotationAnimation
  contains
    procedure :: jm_nextRotation_0 => AllBinarySpriteRotationAnimation_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => AllBinarySpriteRotationAnimation_jm_previousRotation_0
    procedure :: jm_setFrameByDirection_1 => AllBinarySpriteRotationAnimation_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => AllBinarySpriteRotationAnimation_jm_setFrameToAngle_1
    procedure :: jm_setFrame_1 => AllBinarySpriteRotationAnimation_jm_setFrame_1
    procedure :: jm_adjustFrameToAngle_1 => AllBinarySpriteRotationAnimation_jm_adjustFrameToAngle_1
    procedure :: jm_adjustFrame_1 => AllBinarySpriteRotationAnimation_jm_adjustFrame_1
  end type


contains

  function AllBinarySpriteRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinarySpriteRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinarySpriteRotationAnimation)
      jresult => object
    end select
  end function

  recursive function AllBinarySpriteRotationAnimation_jnew_3(j_sprite, j_image, j_animationBehavior) result(this)
    class(Sprite), target, optional :: j_sprite
    class(Image), target, optional :: j_image
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AllBinarySpriteRotationAnimation), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinarySpriteRotationAnimation'
        jtemp1 => AngleFactory_jm_getInstance_0()
        continue ! super()
        call this%f_angleInfo%jm_adjustAngle_1(this%f_sprite%jm_getFrame_0())
  end function

  recursive subroutine AllBinarySpriteRotationAnimation_jm_nextRotation_0(this)
    class(AllBinarySpriteRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_nextFrame_0()
        call this%f_angleInfo%jm_adjustAngle_1(this%f_sprite%jm_getFrame_0())
  end subroutine

  recursive subroutine AllBinarySpriteRotationAnimation_jm_previousRotation_0(this)
    class(AllBinarySpriteRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_prevFrame_0()
        call this%f_angleInfo%jm_adjustAngle_1(this%f_sprite%jm_getFrame_0())
  end subroutine

  recursive subroutine AllBinarySpriteRotationAnimation_jm_setFrameByDirection_1(this, j_direction)
    class(AllBinarySpriteRotationAnimation), target :: this
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

  recursive subroutine AllBinarySpriteRotationAnimation_jm_setFrameToAngle_1(this, j_angle)
    class(AllBinarySpriteRotationAnimation), target :: this
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

  recursive subroutine AllBinarySpriteRotationAnimation_jm_setFrame_1(this, j_index)
    class(AllBinarySpriteRotationAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_setFrame_1(j_index)
        call this%f_angleInfo%jm_adjustAngle_1(this%jm_getFrame_0())
  end subroutine

  recursive subroutine AllBinarySpriteRotationAnimation_jm_adjustFrameToAngle_1(this, j_angle)
    class(AllBinarySpriteRotationAnimation), target :: this
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

  recursive subroutine AllBinarySpriteRotationAnimation_jm_adjustFrame_1(this, j_angle)
    class(AllBinarySpriteRotationAnimation), target :: this
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
end module AllBinarySpriteRotationAnimation_m

