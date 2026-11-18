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
module ImageArrayRotationAnimation_m
  use JR_m
  use AnimationBehavior_m
  use AngleInfo_m
  use ImageArrayBaseRotationAnimation_m
  use ImageArrayRotationAnimationInfo_m
  implicit none

  type, extends(ImageArrayBaseRotationAnimation) :: ImageArrayRotationAnimation
    integer(4) :: f_expectedTotalFrames = 0
  contains
    procedure :: jm_initImageArray_3 => ImageArrayRotationAnimation_jm_initImageArray_3
    procedure :: jm_setImageArray_1 => ImageArrayRotationAnimation_jm_setImageArray_1
  end type


contains

  function ImageArrayRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayRotationAnimation)
      jresult => object
    end select
  end function

  recursive function ImageArrayRotationAnimation_jnew_4(j_imageArray, j_angleInfo, j_totalAngle, j_animationBehavior) result(this)
    type(JRef) :: j_imageArray(:)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArrayRotationAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageArrayRotationAnimation'
    
        continue ! super()
        call this%jm_initImageArray_3(j_imageArray, j_angleInfo, j_totalAngle)
  end function

  recursive function ImageArrayRotationAnimation_jm_createAnimation_2(j_anyType, j_animationBehavior) result(jresult)
    class(JObject), target, optional :: j_anyType
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArrayRotationAnimation), pointer :: jresult
    class(ImageArrayRotationAnimationInfo), pointer :: j_imageRotationAnimationInfo
        j_imageRotationAnimationInfo => ImageArrayRotationAnimationInfo_jcast(j_anyType)
        jresult => ImageArrayRotationAnimation_jnew_4(j_imageRotationAnimationInfo%jm_getImageArray_0(), j_imageRotationAnimationInfo%jm_getAngleInfoP_0(), j_imageRotationAnimationInfo%jm_getTotalAngle_0(), j_animationBehavior)
        return
  end function

  recursive subroutine ImageArrayRotationAnimation_jm_initImageArray_3(this, j_imageArray, j_angleInfo, j_totalAngle)
    class(ImageArrayRotationAnimation), target :: this
    type(JRef) :: j_imageArray(:)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    class(AngleIncrementInfo), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_angleInfo%jm_getAngleIncrementInfo_0()
        this%f_expectedTotalFrames = (j_totalAngle / jtemp1%jm_getAngleIncrement_0())
        call this%f_angleInfo%jm_adjustAngle_1(0)
        if ((this%f_expectedTotalFrames /= this%jm_getSize_0())) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end subroutine

  recursive subroutine ImageArrayRotationAnimation_jm_setImageArray_1(this, j_imageArray)
    class(ImageArrayRotationAnimation), target :: this
    type(JRef) :: j_imageArray(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ImageArrayBaseRotationAnimation%jm_setImageArray_1(j_imageArray)
        call this%f_angleInfo%jm_adjustAngle_1(0)
  end subroutine
end module ImageArrayRotationAnimation_m

