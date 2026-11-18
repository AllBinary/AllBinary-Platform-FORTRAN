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
module ImageAnimation_m
  use JR_m
  use DisposalUtil_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use Anchor_m
  use PrimitiveIntUtil_m
  implicit none

  type, extends(IndexedAnimation) :: ImageAnimation
    class(Image), pointer :: f_image => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_getAnimationSize_0 => ImageAnimation_jm_getAnimationSize_0
    procedure :: jm_nextFrame_0 => ImageAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => ImageAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => ImageAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => ImageAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => ImageAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => ImageAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => ImageAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => ImageAnimation_jm_paintXY_3
    procedure :: jm_getImage_0 => ImageAnimation_jm_getImage_0
    procedure :: jm_close_0 => ImageAnimation_jm_close_0
    procedure :: jm_finalize_0 => ImageAnimation_jm_finalize_0
  end type


contains

  function ImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageAnimation)
      jresult => object
    end select
  end function

  recursive function ImageAnimation_jnew_2(j_image, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageAnimation), pointer :: this
    allocate(this)
    this%jclass = 'ImageAnimation'
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        this%f_image => j_image
  end function

  recursive function ImageAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(ImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine ImageAnimation_jm_nextFrame_0(this)
    class(ImageAnimation), target :: this
    continue
  end subroutine

  recursive subroutine ImageAnimation_jm_previousFrame_0(this)
    class(ImageAnimation), target :: this
    continue
  end subroutine

  recursive subroutine ImageAnimation_jm_setFrame_1(this, j_index)
    class(ImageAnimation), target :: this
    integer(4), value :: j_index
    continue
  end subroutine

  recursive function ImageAnimation_jm_getFrame_0(this) result(jresult)
    class(ImageAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ImageAnimation_jm_getSize_0(this) result(jresult)
    class(ImageAnimation), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function

  recursive subroutine ImageAnimation_jm_setSequence_1(this, j_sequence)
    class(ImageAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function ImageAnimation_jm_getSequence_0(this) result(jresult)
    class(ImageAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine ImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageAnimation), target :: this
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
        call j_graphics%jm_drawImage_4(this%f_image, j_x, j_y, this%f_anchor)
  end subroutine

  recursive function ImageAnimation_jm_getImage_0(this) result(jresult)
    class(ImageAnimation), target :: this
    class(Image), pointer :: jresult
        jresult => this%f_image
        return
  end function

  recursive subroutine ImageAnimation_jm_close_0(this)
    class(ImageAnimation), target :: this
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

  recursive subroutine ImageAnimation_jm_finalize_0(this)
    class(ImageAnimation), target :: this
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
end module ImageAnimation_m

