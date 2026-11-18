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
! package org.allbinary.animation.image
module ImageArraySpecialAnimation_m
  use JR_m
  use AnimationBehavior_m
  use SpecialAnimationInterface_m
  use DisplayInfoSingleton_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use ImageArrayAnimation_m
  implicit none

  type, extends(ImageArrayAnimation) :: ImageArraySpecialAnimation
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    integer(4) :: f_loopCount = 0
    integer(4) :: f_loopCountTotal = 0
  contains
    procedure :: jm_getLoopCount_0 => ImageArraySpecialAnimation_jm_getLoopCount_0
    procedure :: jm_setLastFrame_0 => ImageArraySpecialAnimation_jm_setLastFrame_0
    procedure :: jm_reset_0 => ImageArraySpecialAnimation_jm_reset_0
    procedure :: jm_nextFrame_0 => ImageArraySpecialAnimation_jm_nextFrame_0
    procedure :: jm_isComplete_0 => ImageArraySpecialAnimation_jm_isComplete_0
    procedure :: jm_paintXY_3 => ImageArraySpecialAnimation_jm_paintXY_3
  end type

  ! ImageArraySpecialAnimation used as a SpecialAnimationInterface
  type, extends(SpecialAnimationInterface) :: ImageArraySpecialAnimation_jas_SpecialAnimationInterface
    class(ImageArraySpecialAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_setLastFrame_0 => ImageArraySpecialAnimation_jas_SpecialAnimationInterface_jm_setLastFrame_0
    procedure :: jm_isComplete_0 => ImageArraySpecialAnimation_jas_SpecialAnimationInterface_jm_isComplete_0
  end type


contains

  function ImageArraySpecialAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArraySpecialAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArraySpecialAnimation)
      jresult => object
    end select
  end function

  function ImageArraySpecialAnimation_jas_SpecialAnimationInterface_jnew(object) result(jresult)
    class(ImageArraySpecialAnimation), target :: object
    class(ImageArraySpecialAnimation_jas_SpecialAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ImageArraySpecialAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine ImageArraySpecialAnimation_jas_SpecialAnimationInterface_jm_setLastFrame_0(this)
    class(ImageArraySpecialAnimation_jas_SpecialAnimationInterface), target :: this
    call this%jtarget%jm_setLastFrame_0()
  end subroutine

  recursive function ImageArraySpecialAnimation_jas_SpecialAnimationInterface_jm_isComplete_0(this) result(jresult)
    class(ImageArraySpecialAnimation_jas_SpecialAnimationInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isComplete_0()
  end function

  recursive function ImageArraySpecialAnimation_jnew_2(j_imageArray, j_animationBehavior) result(this)
    type(JRef) :: j_imageArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArraySpecialAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageArraySpecialAnimation'
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(270)
    this%f_loopCount = 0
    this%f_loopCountTotal = 1
        continue ! super()
        call this%jm_reset_0()
  end function

  recursive function ImageArraySpecialAnimation_jm_getLoopCount_0(this) result(jresult)
    class(ImageArraySpecialAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_loopCount
        return
  end function

  recursive subroutine ImageArraySpecialAnimation_jm_setLastFrame_0(this)
    class(ImageArraySpecialAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1((this%f_circularIndexUtil%jm_getSize_0() - 1))
  end subroutine

  recursive subroutine ImageArraySpecialAnimation_jm_reset_0(this)
    class(ImageArraySpecialAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFrame_1((this%jm_getSize_0() - 1))
        this%f_loopCount = 0
  end subroutine

  recursive subroutine ImageArraySpecialAnimation_jm_nextFrame_0(this)
    class(ImageArraySpecialAnimation), target :: this
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getFrame_0() > 0)) then
            jtemp1 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
            if (this%f_timeDelayHelper%jm_isTime_1(jtemp1%f_startTime)) then
                call this%jm_previousFrame_0()
                if ((this%jm_getFrame_0() == 0)) then
                    this%f_loopCount = this%f_loopCount + 1
                end if
            end if
        end if
  end subroutine

  recursive function ImageArraySpecialAnimation_jm_isComplete_0(this) result(jresult)
    class(ImageArraySpecialAnimation), target :: this
    logical :: jresult
        if (((this%f_loopCount < this%f_loopCountTotal) .or. (this%jm_getFrame_0() /= 0))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive subroutine ImageArraySpecialAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageArraySpecialAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(DisplayInfoSingleton), pointer :: jtemp2
    class(Image), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => this%jm_getImage_1(this%f_circularIndexUtil%jm_getIndex_0())
        jtemp2 => DisplayInfoSingleton_jm_getInstance_0()
        j_x = (jtemp2%jm_getLastHalfWidth_0() - (shifta(jtemp3%jm_getWidth_0(), iand(1, 31))))
        j_y = 5
        call this%ImageArrayAnimation%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine
end module ImageArraySpecialAnimation_m

