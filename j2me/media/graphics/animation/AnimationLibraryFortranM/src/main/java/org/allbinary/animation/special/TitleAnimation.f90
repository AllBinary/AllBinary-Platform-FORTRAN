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
! package org.allbinary.animation.special
module TitleAnimation_m
  use JR_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use IndexedAnimationBehavior_m
  use BasicColor_m
  use BasicColorFactory_m
  use DisplayInfoSingleton_m
  use ABSystemWrapper_m
  use PrimitiveIntUtil_m
  use Integer_m
  use SpecialAnimation_m
  implicit none

  type, extends(SpecialAnimation) :: TitleAnimation
    class(ABSystemWrapper), pointer :: f_systemWrapper => null()
    real(4) :: f_deltaX = 0.0
    real(4) :: f_deltaY = 0.0
    real(4) :: f_deltaZ = 0.0
    type(JRef), allocatable :: f_basicColorArray(:)
    integer(4), allocatable :: f_dxArray(:)
    integer(4), allocatable :: f_dyArray(:)
    integer(4) :: f_widthP = 0
    type(JRef), allocatable :: f_animationInterfaceArray(:)
    integer(4) :: f_sizeP = 0
    integer(4) :: f_y = 0
    integer(8) :: f_lastFrameStartTime = 0_8
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    class(BasicColor), pointer :: f_CLEAR_COLOR => null()
  contains
    procedure :: jm_nextFrame_0 => TitleAnimation_jm_nextFrame_0
    procedure :: jm_isComplete_0 => TitleAnimation_jm_isComplete_0
    procedure :: jm_setSequence_1 => TitleAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => TitleAnimation_jm_getSequence_0
    procedure :: jm_getSize_0 => TitleAnimation_jm_getSize_0
    procedure :: jm_getFrame_0 => TitleAnimation_jm_getFrame_0
    procedure :: jm_setFrame_1 => TitleAnimation_jm_setFrame_1
    procedure :: jm_setLastFrame_0 => TitleAnimation_jm_setLastFrame_0
    procedure :: jm_reset_0 => TitleAnimation_jm_reset_0
    procedure :: jm_previousFrame_0 => TitleAnimation_jm_previousFrame_0
    procedure :: jm_paintFrameXY_4 => TitleAnimation_jm_paintFrameXY_4
    procedure :: jm_paintXY_3 => TitleAnimation_jm_paintXY_3
  end type


contains

  function TitleAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TitleAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TitleAnimation)
      jresult => object
    end select
  end function

  recursive function TitleAnimation_jnew_7(j_animationInterfaceArray, j_basicColorArray, j_dxArray, j_dyArray, j_y, j_width, j_animationBehavior) result(this)
    type(JRef) :: j_animationInterfaceArray(:)
    type(JRef) :: j_basicColorArray(:)
    integer(4) :: j_dxArray(:)
    integer(4) :: j_dyArray(:)
    integer(4), value :: j_y
    integer(4), value :: j_width
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(TitleAnimation), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TitleAnimation'
    this%f_systemWrapper => ABSystemWrapper_jm_getInstance_0()
    
    
    
    
    
    
    
    
    
    
    
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_CLEAR_COLOR => jtemp1%f_CLEAR_COLOR
        continue ! super()
        this%f_lastFrameStartTime = this%f_systemWrapper%jm_currentTimeMillis_0()
        this%f_animationInterfaceArray = j_animationInterfaceArray
        this%f_sizeP = size(this%f_animationInterfaceArray, 1)
        this%f_basicColorArray = j_basicColorArray
        this%f_dxArray = j_dxArray
        this%f_dyArray = j_dyArray
        this%f_y = j_y
        this%f_widthP = j_width
        call this%jm_reset_0()
  end function

  recursive function TitleAnimation_jm_createAnimation_6(j_animationInterfaceArray, j_basicColorArray, j_dxArray, j_dyArray, j_y, j_width) result(jresult)
    type(JRef) :: j_animationInterfaceArray(:)
    type(JRef) :: j_basicColorArray(:)
    integer(4) :: j_dxArray(:)
    integer(4) :: j_dyArray(:)
    integer(4), value :: j_y
    integer(4), value :: j_width
    class(TitleAnimation), pointer :: jresult
        jresult => TitleAnimation_jnew_7(j_animationInterfaceArray, j_basicColorArray, j_dxArray, j_dyArray, j_y, j_width, IndexedAnimationBehavior_jnew_2(1, int(250, 8)))
        return
  end function

  recursive subroutine TitleAnimation_jm_nextFrame_0(this)
    class(TitleAnimation), target :: this
    integer(8) :: j_currentTime
    integer(8) :: j_totalTimeElapsed
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_currentTime = this%f_systemWrapper%jm_currentTimeMillis_0()
        j_totalTimeElapsed = (j_currentTime - this%f_lastFrameStartTime)
        j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(this%jm_getAnimationBehavior_0())
        if ((j_totalTimeElapsed > j_indexedAnimationBehavior%f_frameDelayTime)) then
            call this%jm_previousFrame_0()
            this%f_lastFrameStartTime = j_currentTime
        end if
        associate (jstaticref1 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        if ((jstaticref1%jm_getFrame_0() == 0)) then
            j_indexedAnimationBehavior%f_loopIndex = j_indexedAnimationBehavior%f_loopIndex + 1
        end if
        end associate
  end subroutine

  recursive function TitleAnimation_jm_isComplete_0(this) result(jresult)
    class(TitleAnimation), target :: this
    logical :: jresult
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
        j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(this%jm_getAnimationBehavior_0())
        if ((((j_indexedAnimationBehavior%f_loopTotal == (-1)) .or. (j_indexedAnimationBehavior%f_loopIndex < j_indexedAnimationBehavior%f_loopTotal)) .or. (this%jm_getFrame_0() /= 0))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive subroutine TitleAnimation_jm_setSequence_1(this, j_sequence)
    class(TitleAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function TitleAnimation_jm_getSequence_0(this) result(jresult)
    class(TitleAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive function TitleAnimation_jm_getSize_0(this) result(jresult)
    class(TitleAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref2 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref2%jm_getSize_0()
        end associate
        return
  end function

  recursive function TitleAnimation_jm_getFrame_0(this) result(jresult)
    class(TitleAnimation), target :: this
    integer(4) :: jresult
        associate (jstaticref3 => IndexedAnimation_jcast(this%f_animationInterfaceArray((0) + 1)%v))
        jresult = jstaticref3%jm_getFrame_0()
        end associate
        return
  end function

  recursive subroutine TitleAnimation_jm_setFrame_1(this, j_index)
    class(TitleAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        do while ((j_index < this%f_sizeP))
            associate (jstaticref4 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref4%jm_setFrame_1(j_index)
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine TitleAnimation_jm_setLastFrame_0(this)
    class(TitleAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFrame_1((this%jm_getSize_0() - 1))
  end subroutine

  recursive subroutine TitleAnimation_jm_reset_0(this)
    class(TitleAnimation), target :: this
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setLastFrame_0()
        j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(this%jm_getAnimationBehavior_0())
        call j_indexedAnimationBehavior%jm_reset_0()
  end subroutine

  recursive subroutine TitleAnimation_jm_previousFrame_0(this)
    class(TitleAnimation), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        do while ((j_index < this%f_sizeP))
            associate (jstaticref5 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref5%jm_previousFrame_0()
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine TitleAnimation_jm_paintFrameXY_4(this, j_graphics, j_frame, j_x, j_y)
    class(TitleAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_frame
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFrame_1(j_frame)
        call this%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine

  recursive subroutine TitleAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(TitleAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_x
    integer(4) :: j_deltaX
    integer(4) :: j_deltaY
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_x = 0
        if ((this%f_widthP /= Integer_jstatic_MIN_VALUE())) then
            j_x = ((((this%f_displayInfoSingleton%jm_getLastWidth_0() - this%f_widthP)) / 2))
        end if
        continue
        continue
        j_index = 0
        do while ((j_index < this%f_sizeP))
            j_deltaX = (this%f_dxArray((j_index) + 1) + j_x)
            j_deltaY = (this%f_dyArray((j_index) + 1) + this%f_y)
            if ((.not. JR_same(BasicColor_jcast(this%f_basicColorArray((j_index) + 1)%v), this%f_CLEAR_COLOR))) then
                call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, BasicColor_jcast(this%f_basicColorArray((j_index) + 1)%v))
            end if
            associate (jstaticref6 => IndexedAnimation_jcast(this%f_animationInterfaceArray((j_index) + 1)%v))
            call jstaticref6%jm_paintXY_3(j_graphics, j_deltaX, j_deltaY)
            end associate
            j_index = j_index + 1
        end do
  end subroutine
end module TitleAnimation_m

