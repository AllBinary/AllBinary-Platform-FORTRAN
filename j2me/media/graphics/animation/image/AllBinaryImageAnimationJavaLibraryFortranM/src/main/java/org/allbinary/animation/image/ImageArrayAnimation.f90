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
module ImageArrayAnimation_m
  use JR_m
  use NullImage_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use Anchor_m
  use PrimitiveIntUtil_m
  use CircularIndexUtil_m
  implicit none

  type, extends(IndexedAnimation) :: ImageArrayAnimation
    type(JRef), allocatable :: f_imageArray(:)
    integer(4) :: f_totalFrames = 0
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_getAnimationSize_0 => ImageArrayAnimation_jm_getAnimationSize_0
    procedure :: jm_nextFrame_0 => ImageArrayAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => ImageArrayAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => ImageArrayAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => ImageArrayAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => ImageArrayAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => ImageArrayAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => ImageArrayAnimation_jm_getSequence_0
    procedure :: jm_getImage_1 => ImageArrayAnimation_jm_getImage_1
    procedure :: jm_getImageArray_0 => ImageArrayAnimation_jm_getImageArray_0
    procedure :: jm_setImageArray_1 => ImageArrayAnimation_jm_setImageArray_1
    procedure :: jm_paintXY_3 => ImageArrayAnimation_jm_paintXY_3
  end type


contains

  function ImageArrayAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayAnimation)
      jresult => object
    end select
  end function

  recursive function ImageArrayAnimation_jnew_2(j_imageArray, j_animationBehavior) result(this)
    type(JRef) :: j_imageArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArrayAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageArrayAnimation'
    this%f_imageArray = NullImage_jstatic_NULL_IMAGE_ARRAY()
    
    this%f_circularIndexUtil => CircularIndexUtil_jstatic_NULL_CIRCULAR_INDEX_UTIL()
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        call this%jm_setImageArray_1(j_imageArray)
  end function

  recursive function ImageArrayAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(ImageArrayAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine ImageArrayAnimation_jm_nextFrame_0(this)
    class(ImageArrayAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine ImageArrayAnimation_jm_previousFrame_0(this)
    class(ImageArrayAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
  end subroutine

  recursive subroutine ImageArrayAnimation_jm_setFrame_1(this, j_index)
    class(ImageArrayAnimation), target :: this
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

  recursive function ImageArrayAnimation_jm_getFrame_0(this) result(jresult)
    class(ImageArrayAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive function ImageArrayAnimation_jm_getSize_0(this) result(jresult)
    class(ImageArrayAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_totalFrames
        return
  end function

  recursive subroutine ImageArrayAnimation_jm_setSequence_1(this, j_sequence)
    class(ImageArrayAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function ImageArrayAnimation_jm_getSequence_0(this) result(jresult)
    class(ImageArrayAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive function ImageArrayAnimation_jm_getImage_1(this, j_index) result(jresult)
    class(ImageArrayAnimation), target :: this
    integer(4), value :: j_index
    class(Image), pointer :: jresult
        jresult => Image_jcast(this%f_imageArray((j_index) + 1)%v)
        return
  end function

  recursive function ImageArrayAnimation_jm_getImageArray_0(this) result(jresult)
    class(ImageArrayAnimation), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_imageArray
        return
  end function

  recursive subroutine ImageArrayAnimation_jm_setImageArray_1(this, j_imageArray)
    class(ImageArrayAnimation), target :: this
    type(JRef) :: j_imageArray(:)
        this%f_imageArray = j_imageArray
        this%f_totalFrames = size(j_imageArray, 1)
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(this%f_totalFrames)
  end subroutine

  recursive subroutine ImageArrayAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageArrayAnimation), target :: this
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
        call j_graphics%jm_drawImage_4(Image_jcast(this%f_imageArray((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v), j_x, j_y, this%f_anchor)
  end subroutine
end module ImageArrayAnimation_m

