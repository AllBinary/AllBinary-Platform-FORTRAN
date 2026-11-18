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
module ImageArrayBaseRotationAnimation_m
  use JR_m
  use NullImage_m
  use DisposalUtil_m
  use AnimationBehavior_m
  use RotationAnimation_m
  use Anchor_m
  use PrimitiveIntUtil_m
  use AngleInfo_m
  use ImageModifierUtil_m
  use CircularIndexUtil_m
  implicit none

  type, extends(RotationAnimation) :: ImageArrayBaseRotationAnimation
    class(ImageModifierUtil), pointer :: f_imageModifierUtil => null()
    type(JRef), allocatable :: f_originalImageArray(:)
    type(JRef), allocatable :: f_imageArray(:)
    class(Image), pointer :: f_currentImage => null()
    integer(4) :: f_totalFrames = 0
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_getAnimationSize_0 => ImageArrayBaseRotationAnimation_jm_getAnimationSize_0
    procedure :: jm_setAlpha_1 => ImageArrayBaseRotationAnimation_jm_setAlpha_1
    procedure :: jm_nextRotation_0 => ImageArrayBaseRotationAnimation_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => ImageArrayBaseRotationAnimation_jm_previousRotation_0
    procedure :: jm_setFrame_1 => ImageArrayBaseRotationAnimation_jm_setFrame_1
    procedure :: jm_setSequence_1 => ImageArrayBaseRotationAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => ImageArrayBaseRotationAnimation_jm_getSequence_0
    procedure :: jm_setImageArray_1 => ImageArrayBaseRotationAnimation_jm_setImageArray_1
    procedure :: jm_paintXY_3 => ImageArrayBaseRotationAnimation_jm_paintXY_3
    procedure :: jm_close_0 => ImageArrayBaseRotationAnimation_jm_close_0
    procedure :: jm_finalize_0 => ImageArrayBaseRotationAnimation_jm_finalize_0
  end type


contains

  function ImageArrayBaseRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayBaseRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayBaseRotationAnimation)
      jresult => object
    end select
  end function

  recursive function ImageArrayBaseRotationAnimation_jnew_3(j_originalImageArray, j_angleInfo, j_animationBehavior) result(this)
    type(JRef) :: j_originalImageArray(:)
    class(AngleInfo), target, optional :: j_angleInfo
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArrayBaseRotationAnimation), pointer :: this
    class(AngleIncrementInfo), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageArrayBaseRotationAnimation'
    this%f_imageModifierUtil => ImageModifierUtil_jm_getInstanceOrCreate_0()
    
    this%f_imageArray = NullImage_jstatic_NULL_IMAGE_ARRAY()
    
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        jtemp1 => j_angleInfo%jm_getAngleIncrementInfo_0()
        continue ! super()
        this%f_originalImageArray = j_originalImageArray
        call this%jm_setImageArray_1(this%f_imageModifierUtil%jm_getImageArray_1(j_originalImageArray))
        this%f_currentImage => Image_jcast(this%f_imageArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
  end function

  recursive function ImageArrayBaseRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine ImageArrayBaseRotationAnimation_jm_setAlpha_1(this, j_alpha)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4), value :: j_alpha
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_alphaP /= j_alpha)) then
            call this%RotationAnimation%jm_setAlpha_1(j_alpha)
            call this%f_imageModifierUtil%jm_reset_0()
            j_index = this%f_circularIndexUtil%jm_getIndex_0()
            call this%f_imageModifierUtil%jm_setAlpha_4(Image_jcast(this%f_originalImageArray((j_index) + 1)%v), Image_jcast(this%f_imageArray((j_index) + 1)%v), j_index, this%f_alphaP)
        end if
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_nextRotation_0(this)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RotationAnimation%jm_nextRotation_0()
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        call this%f_imageModifierUtil%jm_setAlpha_4(Image_jcast(this%f_originalImageArray((j_index) + 1)%v), Image_jcast(this%f_imageArray((j_index) + 1)%v), j_index, this%f_alphaP)
        this%f_currentImage => Image_jcast(this%f_imageArray((j_index) + 1)%v)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_previousRotation_0(this)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RotationAnimation%jm_previousRotation_0()
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        call this%f_imageModifierUtil%jm_setAlpha_4(Image_jcast(this%f_originalImageArray((j_index) + 1)%v), Image_jcast(this%f_imageArray((j_index) + 1)%v), j_index, this%f_alphaP)
        this%f_currentImage => Image_jcast(this%f_imageArray((j_index) + 1)%v)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_setFrame_1(this, j_index)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4), value :: j_index
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RotationAnimation%jm_setFrame_1(j_index)
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        call this%f_imageModifierUtil%jm_setAlpha_4(Image_jcast(this%f_originalImageArray((j_index) + 1)%v), Image_jcast(this%f_imageArray((j_index) + 1)%v), j_index, this%f_alphaP)
        this%f_currentImage => Image_jcast(this%f_imageArray((j_index) + 1)%v)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_setSequence_1(this, j_sequence)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function ImageArrayBaseRotationAnimation_jm_getSequence_0(this) result(jresult)
    class(ImageArrayBaseRotationAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine ImageArrayBaseRotationAnimation_jm_setImageArray_1(this, j_imageArray)
    class(ImageArrayBaseRotationAnimation), target :: this
    type(JRef) :: j_imageArray(:)
        this%f_imageArray = j_imageArray
        this%f_totalFrames = size(j_imageArray, 1)
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(this%f_totalFrames)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageArrayBaseRotationAnimation), target :: this
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
        call j_graphics%jm_drawImage_4(this%f_currentImage, j_x, j_y, this%f_anchor)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_close_0(this)
    class(ImageArrayBaseRotationAnimation), target :: this
    class(DisposalUtil), pointer :: j_disposalUtil
    integer(4) :: j_size2
    integer(4) :: j_index
    integer(4) :: j_size
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_disposalUtil => DisposalUtil_jm_getInstance_0()
        j_size2 = size(this%f_imageArray, 1)
        j_index = 0
        do while ((j_index < j_size2))
            call j_disposalUtil%jm_disposeImage_1(Image_jcast(this%f_imageArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        j_size = size(this%f_originalImageArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            call j_disposalUtil%jm_disposeImage_1(Image_jcast(this%f_originalImageArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        call j_disposalUtil%jm_disposeImage_1(this%f_currentImage)
  end subroutine

  recursive subroutine ImageArrayBaseRotationAnimation_jm_finalize_0(this)
    class(ImageArrayBaseRotationAnimation), target :: this
    class(DisposalUtil), pointer :: j_disposalUtil
    integer(4) :: j_size2
    integer(4) :: j_index
    integer(4) :: j_size
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_disposalUtil => DisposalUtil_jm_getInstance_0()
        j_size2 = size(this%f_imageArray, 1)
        j_index = 0
        do while ((j_index < j_size2))
            call j_disposalUtil%jm_disposeImage_1(Image_jcast(this%f_imageArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        j_size = size(this%f_originalImageArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            call j_disposalUtil%jm_disposeImage_1(Image_jcast(this%f_originalImageArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
        call j_disposalUtil%jm_disposeImage_1(this%f_currentImage)
  end subroutine
end module ImageArrayBaseRotationAnimation_m

