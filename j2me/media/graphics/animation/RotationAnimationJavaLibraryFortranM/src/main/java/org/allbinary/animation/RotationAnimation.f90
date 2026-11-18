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
module RotationAnimation_m
  use JR_m
  use Direction_m
  use DirectionUtil_m
  use StringMaker_m
  use Angle_m
  use AngleInfo_m
  use FrameUtil_m
  use CircularIndexUtil_m
  use IndexedAnimation_m
  use RotationAnimationInterface_m
  use AnimationBehavior_m
  implicit none

  type, extends(IndexedAnimation) :: RotationAnimation
    class(FrameUtil), pointer :: f_frameUtil => null()
    class(DirectionUtil), pointer :: f_directionUtil => null()
    class(AngleInfo), pointer :: f_angleInfo => null()
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
  contains
    procedure :: jm_nextRotationX_0 => RotationAnimation_jm_nextRotationX_0
    procedure :: jm_previousRotationX_0 => RotationAnimation_jm_previousRotationX_0
    procedure :: jm_nextRotation_0 => RotationAnimation_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => RotationAnimation_jm_previousRotation_0
    procedure :: jm_nextRotationZ_0 => RotationAnimation_jm_nextRotationZ_0
    procedure :: jm_previousRotationZ_0 => RotationAnimation_jm_previousRotationZ_0
    procedure :: jm_setFrame_1 => RotationAnimation_jm_setFrame_1
    procedure :: jm_setFrameByDirection_1 => RotationAnimation_jm_setFrameByDirection_1
    procedure :: jm_setFrameToAngle_1 => RotationAnimation_jm_setFrameToAngle_1
    procedure :: jm_adjustFrameToAngle_1 => RotationAnimation_jm_adjustFrameToAngle_1
    procedure :: jm_adjustFrame_1 => RotationAnimation_jm_adjustFrame_1
    procedure :: jm_getFrame_0 => RotationAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => RotationAnimation_jm_getSize_0
    procedure :: jm_getAngleInfoP_0 => RotationAnimation_jm_getAngleInfoP_0
    procedure :: jm_toString_0 => RotationAnimation_jm_toString_0
  end type

  ! RotationAnimation used as a RotationAnimationInterface
  type, extends(RotationAnimationInterface) :: RotationAnimation_jas_RotationAnimationInterface
    class(RotationAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_nextRotation_0 => RotationAnimation_jas_RotationAnimationInterface_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => RotationAnimation_jas_RotationAnimationInterface_jm_previousRotation_0
    procedure :: jm_getAngleInfoP_0 => RotationAnimation_jas_RotationAnimationInterface_jm_getAngleInfoP_0
  end type


contains

  function RotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RotationAnimation)
      jresult => object
    end select
  end function

  function RotationAnimation_jas_RotationAnimationInterface_jnew(object) result(jresult)
    class(RotationAnimation), target :: object
    class(RotationAnimation_jas_RotationAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RotationAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine RotationAnimation_jas_RotationAnimationInterface_jm_nextRotation_0(this)
    class(RotationAnimation_jas_RotationAnimationInterface), target :: this
    call this%jtarget%jm_nextRotation_0()
  end subroutine

  recursive subroutine RotationAnimation_jas_RotationAnimationInterface_jm_previousRotation_0(this)
    class(RotationAnimation_jas_RotationAnimationInterface), target :: this
    call this%jtarget%jm_previousRotation_0()
  end subroutine

  recursive function RotationAnimation_jas_RotationAnimationInterface_jm_getAngleInfoP_0(this) result(jresult)
    class(RotationAnimation_jas_RotationAnimationInterface), target :: this
    class(AngleInfo), pointer :: jresult
    jresult => this%jtarget%jm_getAngleInfoP_0()
  end function

  recursive function RotationAnimation_jnew_3(j_angleInfo, j_circularIndexUtil, j_animationBehavior) result(this)
    class(AngleInfo), target, optional :: j_angleInfo
    class(CircularIndexUtil), target, optional :: j_circularIndexUtil
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(RotationAnimation), pointer :: this
    allocate(this)
    this%jclass = 'RotationAnimation'
    this%f_frameUtil => FrameUtil_jm_getInstance_0()
    this%f_directionUtil => DirectionUtil_jm_getInstance_0()
    
    
        continue ! super()
        this%f_angleInfo => j_angleInfo
        this%f_circularIndexUtil => j_circularIndexUtil
  end function

  recursive subroutine RotationAnimation_jm_nextRotationX_0(this)
    class(RotationAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RotationAnimation_jm_previousRotationX_0(this)
    class(RotationAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RotationAnimation_jm_nextRotation_0(this)
    class(RotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_angleInfo%jm_adjustAngle_1(this%f_circularIndexUtil%jm_next_0())
  end subroutine

  recursive subroutine RotationAnimation_jm_previousRotation_0(this)
    class(RotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_angleInfo%jm_adjustAngle_1(this%f_circularIndexUtil%jm_previous_0())
  end subroutine

  recursive subroutine RotationAnimation_jm_nextRotationZ_0(this)
    class(RotationAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RotationAnimation_jm_previousRotationZ_0(this)
    class(RotationAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RotationAnimation_jm_setFrame_1(this, j_index)
    class(RotationAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_newFrame
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1(j_index)
        j_newFrame = this%f_circularIndexUtil%jm_getIndex_0()
        call this%f_angleInfo%jm_adjustAngle_1(j_newFrame)
  end subroutine

  recursive subroutine RotationAnimation_jm_setFrameByDirection_1(this, j_direction)
    class(RotationAnimation), target :: this
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

  recursive subroutine RotationAnimation_jm_setFrameToAngle_1(this, j_angle)
    class(RotationAnimation), target :: this
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

  recursive subroutine RotationAnimation_jm_adjustFrameToAngle_1(this, j_angle)
    class(RotationAnimation), target :: this
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

  recursive subroutine RotationAnimation_jm_adjustFrame_1(this, j_angle)
    class(RotationAnimation), target :: this
    integer(4), value :: j_angle
    class(AngleIncrementInfo), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_angleInfo%jm_getAngleIncrementInfo_0()
        call this%jm_setFrame_1(this%f_frameUtil%jm_getFrameForAngle_2(j_angle, jtemp1%jm_getAngleIncrement_0()))
  end subroutine

  recursive function RotationAnimation_jm_getFrame_0(this) result(jresult)
    class(RotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive function RotationAnimation_jm_getSize_0(this) result(jresult)
    class(RotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getSize_0()
        return
  end function

  recursive function RotationAnimation_jm_getAngleInfoP_0(this) result(jresult)
    class(RotationAnimation), target :: this
    class(AngleInfo), pointer :: jresult
        jresult => this%f_angleInfo
        return
  end function

  recursive function RotationAnimation_jm_toString_0(this) result(jresult)
    class(RotationAnimation), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
        jtemp7 => StringMaker_jnew_0()
        jtemp6 => jtemp7%jm_append_1(this%IndexedAnimation%jm_toString_0())
        jtemp5 => jtemp6%jm_append_1('circularIndexUtil: ')
        jtemp4 => jtemp5%jm_append_1(this%f_circularIndexUtil%jm_toString_0())
        jtemp3 => jtemp4%jm_append_1('angleInfo: ')
        jtemp2 => jtemp3%jm_append_1(this%f_angleInfo%jm_toString_0())
        jresult = jtemp2%jm_toString_0()
        return
  end function
end module RotationAnimation_m

