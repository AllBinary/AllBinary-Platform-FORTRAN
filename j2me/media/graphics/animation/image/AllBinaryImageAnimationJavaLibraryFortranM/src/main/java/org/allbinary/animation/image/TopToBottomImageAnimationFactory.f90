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
module TopToBottomImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use BaseImageAnimationFactory_m
  use TopToBottomImageAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: TopToBottomImageAnimationFactory
  contains
    procedure :: jm_getInstance_1 => TopToBottomImageAnimationFactory_jm_getInstance_1
  end type


contains

  function TopToBottomImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TopToBottomImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TopToBottomImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function TopToBottomImageAnimationFactory_jnew_3(j_image, j_sequenceArray, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(TopToBottomImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'TopToBottomImageAnimationFactory'
        continue ! super()
  end function

  recursive function TopToBottomImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(TopToBottomImageAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Image), pointer :: j_scaledImage
        j_scaledImage => this%f_animationFactoryImageScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        jresult => TopToBottomImageAnimation_jnew_3(j_scaledImage, this%jm_getSequenceArray_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function
end module TopToBottomImageAnimationFactory_m

