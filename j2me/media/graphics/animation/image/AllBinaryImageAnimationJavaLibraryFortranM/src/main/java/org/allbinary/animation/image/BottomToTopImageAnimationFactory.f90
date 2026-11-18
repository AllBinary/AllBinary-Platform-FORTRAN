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
module BottomToTopImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use PrimitiveIntUtil_m
  use BaseImageAnimationFactory_m
  use BottomToTopImageAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: BottomToTopImageAnimationFactory
  contains
    procedure :: jm_getInstance_1 => BottomToTopImageAnimationFactory_jm_getInstance_1
  end type


contains

  function BottomToTopImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BottomToTopImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BottomToTopImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function BottomToTopImageAnimationFactory_jnew_2(j_image, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(BottomToTopImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'BottomToTopImageAnimationFactory'
        continue ! super()
  end function

  recursive function BottomToTopImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(BottomToTopImageAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Image), pointer :: j_scaledImage
        j_scaledImage => this%f_animationFactoryImageScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        jresult => BottomToTopImageAnimation_jnew_2(j_scaledImage, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function
end module BottomToTopImageAnimationFactory_m

