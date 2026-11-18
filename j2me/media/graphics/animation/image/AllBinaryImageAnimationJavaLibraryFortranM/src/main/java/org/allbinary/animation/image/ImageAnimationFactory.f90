! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module ImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use OpenGLUtil_m
  use PrimitiveIntUtil_m
  use BaseImageAnimationFactory_m
  use ImageAnimation_m
  use AdjustedImageAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: ImageAnimationFactory
  contains
    procedure :: jm_getInstance_1 => ImageAnimationFactory_jm_getInstance_1
  end type


contains

  function ImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function ImageAnimationFactory_jnew_6(j_image, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(ImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageAnimationFactory'
        continue ! super()
  end function

  recursive function ImageAnimationFactory_jm_createFactory_1(j_image) result(jresult)
    class(Image), target, optional :: j_image
    class(ImageAnimationFactory), pointer :: jresult
        jresult => ImageAnimationFactory_jnew_6(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), 0, 0, AnimationBehaviorFactory_jm_getInstance_0())
        return
  end function

  recursive function ImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(ImageAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Image), pointer :: j_scaledImage
    class(OpenGLUtil), pointer :: j_openGLUtil
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scaledImage => this%f_animationFactoryImageScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        j_openGLUtil => OpenGLUtil_jm_getInstance_0()
        j_scaledImage => j_openGLUtil%jm_addImage_1(j_scaledImage)
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            call this%f_animationFactoryImageScaleUtil%jm_processAdjust_1(this)
            jresult => AdjustedImageAnimation_jnew_4(j_scaledImage, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => ImageAnimation_jnew_2(j_scaledImage, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function
end module ImageAnimationFactory_m

