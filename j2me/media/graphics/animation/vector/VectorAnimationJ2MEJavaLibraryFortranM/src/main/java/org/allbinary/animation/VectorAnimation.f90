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
module VectorAnimation_m
  use JR_m
  use BasicColor_m
  use NullUtil_m
  use PrimitiveIntUtil_m
  use CircularIndexUtil_m
  use IndexedAnimation_m
  use VectorAnimationInterface_m
  use AnimationBehavior_m
  implicit none

  type, extends(IndexedAnimation) :: VectorAnimation
    integer(4), allocatable :: f_currentPoints(:,:,:)
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
  contains
    procedure :: jm_setBasicColorP_1 => VectorAnimation_jm_setBasicColorP_1
    procedure :: jm_changeBasicColor_1 => VectorAnimation_jm_changeBasicColor_1
    procedure :: jm_setAlpha_1 => VectorAnimation_jm_setAlpha_1
    procedure :: jm_setScale_2 => VectorAnimation_jm_setScale_2
    procedure :: jm_setMaxScale_2 => VectorAnimation_jm_setMaxScale_2
    procedure :: jm_updateModifiers_0 => VectorAnimation_jm_updateModifiers_0
    procedure :: jm_getAnimationSize_0 => VectorAnimation_jm_getAnimationSize_0
    procedure :: jm_getSize_0 => VectorAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => VectorAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => VectorAnimation_jm_getSequence_0
    procedure :: jm_nextFrame_0 => VectorAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => VectorAnimation_jm_previousFrame_0
    procedure :: jm_paintVectors_3 => VectorAnimation_jm_paintVectors_3
    procedure :: jm_paintXY_3 => VectorAnimation_jm_paintXY_3
    procedure :: jm_getFrame_0 => VectorAnimation_jm_getFrame_0
    procedure :: jm_setFrame_1 => VectorAnimation_jm_setFrame_1
    procedure :: jm_getPoints_1 => VectorAnimation_jm_getPoints_1
    procedure :: jm_setPoints_1 => VectorAnimation_jm_setPoints_1
    procedure :: jm_getBasicColorP_0 => VectorAnimation_jm_getBasicColorP_0
  end type

  ! VectorAnimation used as a VectorAnimationInterface
  type, extends(VectorAnimationInterface) :: VectorAnimation_jas_VectorAnimationInterface
    class(VectorAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getPoints_1 => VectorAnimation_jas_VectorAnimationInterface_jm_getPoints_1
  end type


contains

  function VectorAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimation)
      jresult => object
    end select
  end function

  function VectorAnimation_jas_VectorAnimationInterface_jnew(object) result(jresult)
    class(VectorAnimation), target :: object
    class(VectorAnimation_jas_VectorAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'VectorAnimation'
    jresult%jtarget => object
  end function

  recursive function VectorAnimation_jas_VectorAnimationInterface_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorAnimation_jas_VectorAnimationInterface), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
    jresult = this%jtarget%jm_getPoints_1(j_frame)
  end function

  recursive function VectorAnimation_jnew_3(j_currentPoints, j_basicColor, j_animationBehavior) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(VectorAnimation), pointer :: this
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorAnimation'
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_currentPoints = jtemp1%f_NULL_INT_ARRAY_ARRAY_ARRAY
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(0)
        continue ! super()
        call this%jm_setPoints_1(j_currentPoints)
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive function VectorAnimation_jm_createVectorAnimation_3(j_currentPoints2, j_basicColor, j_animationBehavior) result(jresult)
    integer(4) :: j_currentPoints2(:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(VectorAnimation), pointer :: jresult
    integer(4), allocatable :: j_currentPoints(:,:,:)
    integer(4) :: j_size
    integer(4) :: j_index
        j_currentPoints = JR_newIntArray3(1, size(j_currentPoints2, 1), 2)
        j_size = size(j_currentPoints2, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_currentPoints((0) + 1, (j_index) + 1)((0) + 1) = j_currentPoints2((j_index) + 1, (0) + 1)
            j_currentPoints((0) + 1, (j_index) + 1)((1) + 1) = j_currentPoints2((j_index) + 1, (1) + 1)
            j_index = j_index + 1
        end do
        jresult => VectorAnimation_jnew_3(j_currentPoints, j_basicColor, j_animationBehavior)
        return
  end function

  recursive subroutine VectorAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(VectorAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    logical :: j_changed
    class(BasicColor), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        jtemp2 => this%jm_getBasicColorP_0()
        if (((.not. associated(this%jm_getBasicColorP_0())) .or. (jtemp2%jm_intValue_0() /= j_basicColor%jm_intValue_0()))) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_setBasicColorP_1(j_basicColor)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine VectorAnimation_jm_changeBasicColor_1(this, j_basicColor)
    class(VectorAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    logical :: j_changed
    class(BasicColor), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        jtemp3 => this%jm_getChangeBasicColor_0()
        if (((.not. associated(this%jm_getChangeBasicColor_0())) .or. (jtemp3%jm_intValue_0() /= j_basicColor%jm_intValue_0()))) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_changeBasicColor_1(j_basicColor)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine VectorAnimation_jm_setAlpha_1(this, j_alpha)
    class(VectorAnimation), target :: this
    integer(4), value :: j_alpha
    logical :: j_changed
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        if ((this%f_alphaP /= j_alpha)) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_setAlpha_1(j_alpha)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine VectorAnimation_jm_setScale_2(this, j_scaleX, j_scaleY)
    class(VectorAnimation), target :: this
    real(4), value :: j_scaleX
    real(4), value :: j_scaleY
    continue
  end subroutine

  recursive subroutine VectorAnimation_jm_setMaxScale_2(this, j_maxScaleX, j_maxScaleY)
    class(VectorAnimation), target :: this
    real(4), value :: j_maxScaleX
    real(4), value :: j_maxScaleY
    continue
  end subroutine

  recursive subroutine VectorAnimation_jm_updateModifiers_0(this)
    class(VectorAnimation), target :: this
    continue
  end subroutine

  recursive function VectorAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(VectorAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive function VectorAnimation_jm_getSize_0(this) result(jresult)
    class(VectorAnimation), target :: this
    integer(4) :: jresult
        jresult = size(this%f_currentPoints, 1)
        return
  end function

  recursive subroutine VectorAnimation_jm_setSequence_1(this, j_sequence)
    class(VectorAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function VectorAnimation_jm_getSequence_0(this) result(jresult)
    class(VectorAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine VectorAnimation_jm_nextFrame_0(this)
    class(VectorAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine VectorAnimation_jm_previousFrame_0(this)
    class(VectorAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
  end subroutine

  recursive subroutine VectorAnimation_jm_paintVectors_3(this, j_graphics, j_x, j_y)
    class(VectorAnimation), target :: this
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
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_nextPointX = 0
            j_nextPointY = 0
            continue
            continue
            j_currentPointsFrame = this%f_currentPoints((this%f_circularIndexUtil%jm_getIndex_0()) + 1, :)
            j_size = size(j_currentPointsFrame, 1)
            j_index = (j_size - 2)
            j_index = j_index - 1
            jtemp4 = j_index
            do while ((jtemp4 >= 0))
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

  recursive subroutine VectorAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(VectorAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_basicColor)
        call this%jm_paintVectors_3(j_graphics, j_x, j_y)
  end subroutine

  recursive function VectorAnimation_jm_getFrame_0(this) result(jresult)
    class(VectorAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive subroutine VectorAnimation_jm_setFrame_1(this, j_index)
    class(VectorAnimation), target :: this
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

  recursive function VectorAnimation_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorAnimation), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
        jresult = this%f_currentPoints((j_frame) + 1, :)
        return
  end function

  recursive subroutine VectorAnimation_jm_setPoints_1(this, j_currentPoints)
    class(VectorAnimation), target :: this
    integer(4) :: j_currentPoints(:,:,:)
        this%f_currentPoints = j_currentPoints
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(size(j_currentPoints, 1))
  end subroutine

  recursive function VectorAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(VectorAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%IndexedAnimation%jm_getBasicColorP_0()
        return
  end function
end module VectorAnimation_m

