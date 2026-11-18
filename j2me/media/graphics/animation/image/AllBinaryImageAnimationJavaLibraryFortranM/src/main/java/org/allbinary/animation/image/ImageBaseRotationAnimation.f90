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
module ImageBaseRotationAnimation_m
  use JR_m
  use DisposalUtil_m
  use AnimationBehavior_m
  use RotationAnimation_m
  use Anchor_m
  use PrimitiveIntUtil_m
  use AngleInfo_m
  use CircularIndexUtil_m
  implicit none

  type, extends(RotationAnimation) :: ImageBaseRotationAnimation
    class(Image), pointer :: f_image => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_getAnimationSize_0 => ImageBaseRotationAnimation_jm_getAnimationSize_0
    procedure :: jm_setSequence_1 => ImageBaseRotationAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => ImageBaseRotationAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => ImageBaseRotationAnimation_jm_paintXY_3
    procedure :: jm_getImage_0 => ImageBaseRotationAnimation_jm_getImage_0
    procedure :: jm_getWidth_0 => ImageBaseRotationAnimation_jm_getWidth_0
    procedure :: jm_getHeight_0 => ImageBaseRotationAnimation_jm_getHeight_0
    procedure :: jm_close_0 => ImageBaseRotationAnimation_jm_close_0
    procedure :: jm_finalize_0 => ImageBaseRotationAnimation_jm_finalize_0
  end type


contains

  function ImageBaseRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageBaseRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageBaseRotationAnimation)
      jresult => object
    end select
  end function

  recursive function ImageBaseRotationAnimation_jnew_4(j_image, j_angleInfo, j_totalAngle, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageBaseRotationAnimation), pointer :: this
    class(AngleIncrementInfo), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ImageBaseRotationAnimation'
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        jtemp1 => j_angleInfo%jm_getAngleIncrementInfo_0()
        continue ! super()
        this%f_image => j_image
  end function

  recursive function ImageBaseRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(ImageBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine ImageBaseRotationAnimation_jm_setSequence_1(this, j_sequence)
    class(ImageBaseRotationAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function ImageBaseRotationAnimation_jm_getSequence_0(this) result(jresult)
    class(ImageBaseRotationAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine ImageBaseRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageBaseRotationAnimation), target :: this
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

  recursive function ImageBaseRotationAnimation_jm_getImage_0(this) result(jresult)
    class(ImageBaseRotationAnimation), target :: this
    class(Image), pointer :: jresult
        jresult => this%f_image
        return
  end function

  recursive function ImageBaseRotationAnimation_jm_getWidth_0(this) result(jresult)
    class(ImageBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_image%jm_getWidth_0()
        return
  end function

  recursive function ImageBaseRotationAnimation_jm_getHeight_0(this) result(jresult)
    class(ImageBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_image%jm_getHeight_0()
        return
  end function

  recursive subroutine ImageBaseRotationAnimation_jm_close_0(this)
    class(ImageBaseRotationAnimation), target :: this
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

  recursive subroutine ImageBaseRotationAnimation_jm_finalize_0(this)
    class(ImageBaseRotationAnimation), target :: this
    class(DisposalUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => DisposalUtil_jm_getInstance_0()
        call jtemp3%jm_disposeImage_1(this%f_image)
  end subroutine
end module ImageBaseRotationAnimation_m

