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
module TweenedImageAnimation_m
  use JR_m
  use DisposalUtil_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use Anchor_m
  use PrimitiveIntUtil_m
  use CircularIndexUtil_m
  implicit none

  type, extends(IndexedAnimation) :: TweenedImageAnimation
    class(Image), pointer :: f_image => null()
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    integer(4) :: f_totalFrames = 0
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_getAnimationSize_0 => TweenedImageAnimation_jm_getAnimationSize_0
    procedure :: jm_nextFrame_0 => TweenedImageAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => TweenedImageAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => TweenedImageAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => TweenedImageAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => TweenedImageAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => TweenedImageAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => TweenedImageAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => TweenedImageAnimation_jm_paintXY_3
    procedure :: jm_close_0 => TweenedImageAnimation_jm_close_0
    procedure :: jm_finalize_0 => TweenedImageAnimation_jm_finalize_0
  end type


contains

  function TweenedImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TweenedImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TweenedImageAnimation)
      jresult => object
    end select
  end function

  recursive function TweenedImageAnimation_jnew_5(j_image, j_dx, j_dy, j_totalFrames, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_totalFrames
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(TweenedImageAnimation), pointer :: this
    allocate(this)
    this%jclass = 'TweenedImageAnimation'
    
    
    
    
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        this%f_image => j_image
        this%f_dx = j_dx
        this%f_dy = j_dy
        this%f_totalFrames = j_totalFrames
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(this%f_totalFrames)
  end function

  recursive function TweenedImageAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(TweenedImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine TweenedImageAnimation_jm_nextFrame_0(this)
    class(TweenedImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine TweenedImageAnimation_jm_previousFrame_0(this)
    class(TweenedImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
  end subroutine

  recursive subroutine TweenedImageAnimation_jm_setFrame_1(this, j_index)
    class(TweenedImageAnimation), target :: this
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

  recursive function TweenedImageAnimation_jm_getFrame_0(this) result(jresult)
    class(TweenedImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive function TweenedImageAnimation_jm_getSize_0(this) result(jresult)
    class(TweenedImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_totalFrames
        return
  end function

  recursive subroutine TweenedImageAnimation_jm_setSequence_1(this, j_sequence)
    class(TweenedImageAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function TweenedImageAnimation_jm_getSequence_0(this) result(jresult)
    class(TweenedImageAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine TweenedImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(TweenedImageAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_frame
    integer(4) :: j_currentX
    integer(4) :: j_currentY
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_frame = this%jm_getFrame_0()
        j_currentX = (this%f_dx * j_frame)
        j_currentY = (this%f_dy * j_frame)
        call j_graphics%jm_drawImage_4(this%f_image, (j_x + j_currentX), (j_y + j_currentY), this%f_anchor)
  end subroutine

  recursive subroutine TweenedImageAnimation_jm_close_0(this)
    class(TweenedImageAnimation), target :: this
    class(DisposalUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => DisposalUtil_jm_getInstance_0()
        call jtemp1%jm_disposeImage_1(this%f_image)
  end subroutine

  recursive subroutine TweenedImageAnimation_jm_finalize_0(this)
    class(TweenedImageAnimation), target :: this
    class(DisposalUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => DisposalUtil_jm_getInstance_0()
        call jtemp2%jm_disposeImage_1(this%f_image)
  end subroutine
end module TweenedImageAnimation_m

