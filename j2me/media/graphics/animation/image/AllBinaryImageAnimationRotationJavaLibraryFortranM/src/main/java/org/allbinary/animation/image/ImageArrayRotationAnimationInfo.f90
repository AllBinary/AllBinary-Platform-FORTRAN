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
module ImageArrayRotationAnimationInfo_m
  use JR_m
  use AngleInfo_m
  implicit none

  type, extends(JObject) :: ImageArrayRotationAnimationInfo
    type(JRef), allocatable :: f_imageArray(:)
    integer(4) :: f_angleIncrement = 0
    integer(4) :: f_totalAngle = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_setImageArray_1 => ImageArrayRotationAnimationInfo_jm_setImageArray_1
    procedure :: jm_getImageArray_0 => ImageArrayRotationAnimationInfo_jm_getImageArray_0
    procedure :: jm_getAngleInfoP_0 => ImageArrayRotationAnimationInfo_jm_getAngleInfoP_0
    procedure :: jm_setTotalAngle_1 => ImageArrayRotationAnimationInfo_jm_setTotalAngle_1
    procedure :: jm_getTotalAngle_0 => ImageArrayRotationAnimationInfo_jm_getTotalAngle_0
    procedure :: jm_setDx_1 => ImageArrayRotationAnimationInfo_jm_setDx_1
    procedure :: jm_getDx_0 => ImageArrayRotationAnimationInfo_jm_getDx_0
    procedure :: jm_setDy_1 => ImageArrayRotationAnimationInfo_jm_setDy_1
    procedure :: jm_getDy_0 => ImageArrayRotationAnimationInfo_jm_getDy_0
  end type


contains

  function ImageArrayRotationAnimationInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayRotationAnimationInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayRotationAnimationInfo)
      jresult => object
    end select
  end function

  recursive function ImageArrayRotationAnimationInfo_jnew_5(j_imageArray, j_angleIncrement, j_totalAngle, j_dx, j_dy) result(this)
    type(JRef) :: j_imageArray(:)
    integer(4), value :: j_angleIncrement
    integer(4), value :: j_totalAngle
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(ImageArrayRotationAnimationInfo), pointer :: this
    allocate(this)
    this%jclass = 'ImageArrayRotationAnimationInfo'
    
    
    
    
    
        this%f_imageArray = j_imageArray
        this%f_angleIncrement = j_angleIncrement
        this%f_totalAngle = j_totalAngle
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine ImageArrayRotationAnimationInfo_jm_setImageArray_1(this, j_imageArray)
    class(ImageArrayRotationAnimationInfo), target :: this
    type(JRef) :: j_imageArray(:)
        this%f_imageArray = j_imageArray
  end subroutine

  recursive function ImageArrayRotationAnimationInfo_jm_getImageArray_0(this) result(jresult)
    class(ImageArrayRotationAnimationInfo), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_imageArray
        return
  end function

  recursive function ImageArrayRotationAnimationInfo_jm_getAngleInfoP_0(this) result(jresult)
    class(ImageArrayRotationAnimationInfo), target :: this
    class(AngleInfo), pointer :: jresult
        jresult => AngleInfo_jm_getInstance_1(JR_i16(this%f_angleIncrement))
        return
  end function

  recursive subroutine ImageArrayRotationAnimationInfo_jm_setTotalAngle_1(this, j_totalAngle)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4), value :: j_totalAngle
        this%f_totalAngle = j_totalAngle
  end subroutine

  recursive function ImageArrayRotationAnimationInfo_jm_getTotalAngle_0(this) result(jresult)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_totalAngle
        return
  end function

  recursive subroutine ImageArrayRotationAnimationInfo_jm_setDx_1(this, j_dx)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function ImageArrayRotationAnimationInfo_jm_getDx_0(this) result(jresult)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine ImageArrayRotationAnimationInfo_jm_setDy_1(this, j_dy)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive function ImageArrayRotationAnimationInfo_jm_getDy_0(this) result(jresult)
    class(ImageArrayRotationAnimationInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function
end module ImageArrayRotationAnimationInfo_m

