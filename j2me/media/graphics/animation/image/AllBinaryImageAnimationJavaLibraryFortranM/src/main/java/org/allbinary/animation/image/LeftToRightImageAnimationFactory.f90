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
module LeftToRightImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use BaseImageAnimationFactory_m
  use LeftToRightImageAnimation_m
  use AdjustedLeftToRightImageAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: LeftToRightImageAnimationFactory
  contains
    procedure :: jm_getInstance_1 => LeftToRightImageAnimationFactory_jm_getInstance_1
  end type


contains

  function LeftToRightImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LeftToRightImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LeftToRightImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function LeftToRightImageAnimationFactory_jnew_5(j_image, j_sequenceArray, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(LeftToRightImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'LeftToRightImageAnimationFactory'
        continue ! super()
  end function

  recursive function LeftToRightImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(LeftToRightImageAnimationFactory), target :: this
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
            jresult => AdjustedLeftToRightImageAnimation_jnew_5(j_scaledImage, this%jm_getSequenceArray_0(), this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => LeftToRightImageAnimation_jnew_3(j_scaledImage, this%jm_getSequenceArray_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function
end module LeftToRightImageAnimationFactory_m

