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
module VectorBaseRotationAnimation_m
  use JR_m
  use BasicColor_m
  use NullUtil_m
  use PrimitiveIntUtil_m
  use AngleInfo_m
  use CircularIndexUtil_m
  use RotationAnimation_m
  use VectorAnimationInterface_m
  use AnimationBehavior_m
  implicit none

  type, extends(RotationAnimation) :: VectorBaseRotationAnimation
    integer(4), allocatable :: f_currentPoints(:,:,:)
  contains
    procedure :: jm_getAnimationSize_0 => VectorBaseRotationAnimation_jm_getAnimationSize_0
    procedure :: jm_getFrame_0 => VectorBaseRotationAnimation_jm_getFrame_0
    procedure :: jm_setFrame_1 => VectorBaseRotationAnimation_jm_setFrame_1
    procedure :: jm_nextFrame_0 => VectorBaseRotationAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => VectorBaseRotationAnimation_jm_previousFrame_0
    procedure :: jm_getSize_0 => VectorBaseRotationAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => VectorBaseRotationAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => VectorBaseRotationAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => VectorBaseRotationAnimation_jm_paintXY_3
    procedure :: jm_getPoints_1 => VectorBaseRotationAnimation_jm_getPoints_1
    procedure :: jm_setPoints_1 => VectorBaseRotationAnimation_jm_setPoints_1
    procedure :: jm_getBasicColorP_0 => VectorBaseRotationAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => VectorBaseRotationAnimation_jm_setBasicColorP_1
  end type

  ! VectorBaseRotationAnimation used as a VectorAnimationInterface
  type, extends(VectorAnimationInterface) :: VectorBaseRotationAnimation_jas_VectorAnimationInterface
    class(VectorBaseRotationAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getPoints_1 => VectorBaseRotationAnimation_jas_VectorAnimationInterface_jm_getPoints_1
  end type


contains

  function VectorBaseRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorBaseRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorBaseRotationAnimation)
      jresult => object
    end select
  end function

  function VectorBaseRotationAnimation_jas_VectorAnimationInterface_jnew(object) result(jresult)
    class(VectorBaseRotationAnimation), target :: object
    class(VectorBaseRotationAnimation_jas_VectorAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'VectorBaseRotationAnimation'
    jresult%jtarget => object
  end function

  recursive function VectorBaseRotationAnimation_jas_VectorAnimationInterface_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorBaseRotationAnimation_jas_VectorAnimationInterface), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
    jresult = this%jtarget%jm_getPoints_1(j_frame)
  end function

  recursive function VectorBaseRotationAnimation_jnew_4(j_angleInfo, j_currentPoints, j_basicColor, j_animationBehavior) result(this)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(VectorBaseRotationAnimation), pointer :: this
    class(AngleIncrementInfo), pointer :: jtemp2
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorBaseRotationAnimation'
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_currentPoints = jtemp1%f_NULL_INT_ARRAY_ARRAY_ARRAY
        jtemp2 => j_angleInfo%jm_getAngleIncrementInfo_0()
        continue ! super()
        call this%jm_setPoints_1(j_currentPoints)
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive function VectorBaseRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive function VectorBaseRotationAnimation_jm_getFrame_0(this) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive subroutine VectorBaseRotationAnimation_jm_setFrame_1(this, j_index)
    class(VectorBaseRotationAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1(j_index)
  end subroutine

  recursive subroutine VectorBaseRotationAnimation_jm_nextFrame_0(this)
    class(VectorBaseRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine VectorBaseRotationAnimation_jm_previousFrame_0(this)
    class(VectorBaseRotationAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
  end subroutine

  recursive function VectorBaseRotationAnimation_jm_getSize_0(this) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = size(this%f_currentPoints, 1)
        return
  end function

  recursive subroutine VectorBaseRotationAnimation_jm_setSequence_1(this, j_sequence)
    class(VectorBaseRotationAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function VectorBaseRotationAnimation_jm_getSequence_0(this) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine VectorBaseRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(VectorBaseRotationAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_nextPointX
    integer(4) :: j_nextPointY
    integer(4), allocatable :: j_nextPoint(:)
    integer(4), allocatable :: j_point(:)
    integer(4), allocatable :: j_currentPointsFrame(:,:)
    integer(4) :: j_size
    integer(4) :: j_index
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_basicColor)
        continue ! try
            j_nextPointX = 0
            j_nextPointY = 0
            continue
            continue
            j_currentPointsFrame = this%f_currentPoints((this%f_circularIndexUtil%jm_getIndex_0()) + 1, :)
            j_size = size(j_currentPointsFrame, 1)
            j_index = (j_size - 2)
            j_index = j_index - 1
            jtemp3 = j_index
            do while ((jtemp3 >= 0))
                j_nextPoint = j_currentPointsFrame((j_index) + 1, :)
                j_point = j_currentPointsFrame(((j_index + 1)) + 1, :)
                j_nextPointX = j_nextPoint((0) + 1)
                j_nextPointY = j_nextPoint((1) + 1)
                if ((j_nextPointX /= 1000)) then
                    call j_graphics%jm_drawLine_4((j_point((0) + 1) + j_x), (j_point((1) + 1) + j_y), (j_nextPointX + j_x), (j_nextPointY + j_y))
                else
                    j_index = j_index - 1
                end if
            end do
  end subroutine

  recursive function VectorBaseRotationAnimation_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
        jresult = this%f_currentPoints((j_frame) + 1, :)
        return
  end function

  recursive subroutine VectorBaseRotationAnimation_jm_setPoints_1(this, j_currentPoints)
    class(VectorBaseRotationAnimation), target :: this
    integer(4) :: j_currentPoints(:,:,:)
        this%f_currentPoints = j_currentPoints
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(this%f_currentPoints, 1))
  end subroutine

  recursive function VectorBaseRotationAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(VectorBaseRotationAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%RotationAnimation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine VectorBaseRotationAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(VectorBaseRotationAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RotationAnimation%jm_setBasicColorP_1(j_basicColor)
  end subroutine
end module VectorBaseRotationAnimation_m

