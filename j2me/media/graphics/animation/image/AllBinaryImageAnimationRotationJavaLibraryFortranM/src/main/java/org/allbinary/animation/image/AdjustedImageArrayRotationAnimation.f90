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
module AdjustedImageArrayRotationAnimation_m
  use JR_m
  use AnimationBehavior_m
  use AngleInfo_m
  use ImageArrayRotationAnimation_m
  use ImageArrayRotationAnimationInfo_m
  implicit none

  type, extends(ImageArrayRotationAnimation) :: AdjustedImageArrayRotationAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_init_2 => AdjustedImageArrayRotationAnimation_jm_init_2
    procedure :: jm_paintXY_3 => AdjustedImageArrayRotationAnimation_jm_paintXY_3
    procedure :: jm_setDx_1 => AdjustedImageArrayRotationAnimation_jm_setDx_1
    procedure :: jm_getDx_0 => AdjustedImageArrayRotationAnimation_jm_getDx_0
    procedure :: jm_setDy_1 => AdjustedImageArrayRotationAnimation_jm_setDy_1
    procedure :: jm_getDy_0 => AdjustedImageArrayRotationAnimation_jm_getDy_0
  end type


contains

  function AdjustedImageArrayRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedImageArrayRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedImageArrayRotationAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedImageArrayRotationAnimation_jnew_6(j_imageArray, j_angleInfo, j_totalAngle, j_dx, j_dy, j_animationBehavior) result(this)
    type(JRef) :: j_imageArray(:)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageArrayRotationAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdjustedImageArrayRotationAnimation'
    
    
        continue ! super()
        call this%jm_init_2(j_dx, j_dy)
  end function

  recursive function AdjustedImageArrayRotationAnimation_jm_createAdjustedImageArrayRotationAnimationInfo_2(j_anyType, j_animationBehavior) result(jresult)
    class(JObject), target, optional :: j_anyType
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageArrayRotationAnimation), pointer :: jresult
    class(ImageArrayRotationAnimationInfo), pointer :: j_imageRotationAnimationInfo
        j_imageRotationAnimationInfo => ImageArrayRotationAnimationInfo_jcast(j_anyType)
        jresult => AdjustedImageArrayRotationAnimation_jnew_6(j_imageRotationAnimationInfo%jm_getImageArray_0(), j_imageRotationAnimationInfo%jm_getAngleInfoP_0(), j_imageRotationAnimationInfo%jm_getTotalAngle_0(), j_imageRotationAnimationInfo%jm_getDx_0(), j_imageRotationAnimationInfo%jm_getDy_0(), j_animationBehavior)
        return
  end function

  recursive function AdjustedImageArrayRotationAnimation_jm_createAnimation_4(j_imageArray, j_angleInfo, j_totalAngle, j_animationBehavior) result(jresult)
    type(JRef) :: j_imageArray(:)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageArrayRotationAnimation), pointer :: jresult
        associate (jstaticref1 => Image_jcast(j_imageArray((0) + 1)%v))
        jresult => AdjustedImageArrayRotationAnimation_jnew_6(j_imageArray, j_angleInfo, j_totalAngle, (-(shifta(jstaticref1%jm_getWidth_0(), iand(2, 31)))), (-(shifta(jstaticref1%jm_getHeight_0(), iand(2, 31)))), j_animationBehavior)
        end associate
        return
  end function

  recursive subroutine AdjustedImageArrayRotationAnimation_jm_init_2(this, j_dx, j_dy)
    class(AdjustedImageArrayRotationAnimation), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setDx_1(j_dx)
        call this%jm_setDy_1(j_dy)
  end subroutine

  recursive subroutine AdjustedImageArrayRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedImageArrayRotationAnimation), target :: this
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
        call this%ImageArrayRotationAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine

  recursive subroutine AdjustedImageArrayRotationAnimation_jm_setDx_1(this, j_dx)
    class(AdjustedImageArrayRotationAnimation), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function AdjustedImageArrayRotationAnimation_jm_getDx_0(this) result(jresult)
    class(AdjustedImageArrayRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine AdjustedImageArrayRotationAnimation_jm_setDy_1(this, j_dy)
    class(AdjustedImageArrayRotationAnimation), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive function AdjustedImageArrayRotationAnimation_jm_getDy_0(this) result(jresult)
    class(AdjustedImageArrayRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function
end module AdjustedImageArrayRotationAnimation_m

