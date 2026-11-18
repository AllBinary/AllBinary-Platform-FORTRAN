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
module ImageRotationAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use PrimitiveIntUtil_m
  use AngleFactory_m
  use AngleInfo_m
  use BaseImageAnimationFactory_m
  use ImageBaseRotationAnimation_m
  use AdjustedImageBaseRotationAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: ImageRotationAnimationFactory
    integer(4) :: f_angleIncrement = 0
  contains
    procedure :: jm_getInstance_1 => ImageRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_getAngleIncrementP_0 => ImageRotationAnimationFactory_jm_getAngleIncrementP_0
  end type


contains

  function ImageRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageRotationAnimationFactory)
      jresult => object
    end select
  end function

  recursive function ImageRotationAnimationFactory_jnew_7(j_image, j_width, j_height, j_dx, j_dy, j_angleIncrement, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_angleIncrement
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(ImageRotationAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageRotationAnimationFactory'
    
        continue ! super()
        this%f_angleIncrement = j_angleIncrement
        this%f_animationFactoryInitializationVisitor%f_dx = j_dx
        this%f_animationFactoryInitializationVisitor%f_dy = j_dy
  end function

  recursive function ImageRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(ImageRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(AngleFactory), pointer :: jtemp1
    class(AngleFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            call this%f_animationFactoryImageScaleUtil%jm_processAdjust_1(this)
            jtemp2 => AngleFactory_jm_getInstance_0()
            jresult => AdjustedImageBaseRotationAnimation_jnew_6(this%jm_getImage_0(), AngleInfo_jm_getInstance_1(this%f_angleIncrement), jtemp2%f_TOTAL_ANGLE, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jtemp1 => AngleFactory_jm_getInstance_0()
            jresult => ImageBaseRotationAnimation_jnew_4(this%jm_getImage_0(), AngleInfo_jm_getInstance_1(this%f_angleIncrement), jtemp1%f_TOTAL_ANGLE, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function

  recursive function ImageRotationAnimationFactory_jm_getAngleIncrementP_0(this) result(jresult)
    class(ImageRotationAnimationFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_angleIncrement
        return
  end function
end module ImageRotationAnimationFactory_m

