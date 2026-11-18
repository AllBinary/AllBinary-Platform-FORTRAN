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
module RightToLeftImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use PrimitiveIntUtil_m
  use BaseImageAnimationFactory_m
  use RightToLeftImageAnimation_m
  use AdjustedRightToLeftImageAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: RightToLeftImageAnimationFactory
  contains
    procedure :: jm_getInstance_1 => RightToLeftImageAnimationFactory_jm_getInstance_1
  end type


contains

  function RightToLeftImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RightToLeftImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RightToLeftImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function RightToLeftImageAnimationFactory_jnew_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(RightToLeftImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'RightToLeftImageAnimationFactory'
        continue ! super()
  end function

  recursive function RightToLeftImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(RightToLeftImageAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Image), pointer :: j_scaledImage
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scaledImage => this%f_animationFactoryImageScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            call this%f_animationFactoryImageScaleUtil%jm_processAdjust_1(this)
            jresult => AdjustedRightToLeftImageAnimation_jnew_4(j_scaledImage, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => RightToLeftImageAnimation_jnew_2(j_scaledImage, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function
end module RightToLeftImageAnimationFactory_m

