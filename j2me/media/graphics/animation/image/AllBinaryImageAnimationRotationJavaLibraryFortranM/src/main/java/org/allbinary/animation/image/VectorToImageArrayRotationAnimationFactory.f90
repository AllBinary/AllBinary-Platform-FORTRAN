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
module VectorToImageArrayRotationAnimationFactory_m
  use JR_m
  use NullImage_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use VectorAnimation_m
  use GameConfigurationCentral_m
  use BasicColor_m
  use AnimationFrameToImageUtil_m
  use PrimitiveIntUtil_m
  use AngleFactory_m
  use AngleInfo_m
  use ScaleProperties_m
  use ImageToRotationImageArrayUtil_m
  use VectorInfo_m
  use BaseImageAnimationFactory_m
  use AdjustedImageArrayRotationAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: VectorToImageArrayRotationAnimationFactory
    type(JRef), allocatable :: f_imageArray(:)
    integer(4) :: f_angleIncrement = 0
  contains
    procedure :: jm_init_0 => VectorToImageArrayRotationAnimationFactory_jm_init_0
    procedure :: jm_getInstance_1 => VectorToImageArrayRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_getAngleIncrement_0 => VectorToImageArrayRotationAnimationFactory_jm_getAngleIncrement_0
    procedure :: jm_setInitialScale_1 => VectorToImageArrayRotationAnimationFactory_jm_setInitialScale_1
  end type


contains

  function VectorToImageArrayRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorToImageArrayRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorToImageArrayRotationAnimationFactory)
      jresult => object
    end select
  end function

  recursive function VectorToImageArrayRotationAnimationFactory_jnew_3(j_vectorInfo, j_basicColor, j_animationBehaviorFactory) result(this)
    class(VectorInfo), target, optional :: j_vectorInfo
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(VectorToImageArrayRotationAnimationFactory), pointer :: this
    class(AnimationFrameToImageUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorToImageArrayRotationAnimationFactory'
    this%f_imageArray = NullImage_jstatic_NULL_IMAGE_ARRAY()
    
        jtemp1 => AnimationFrameToImageUtil_jm_getInstance_0()
        continue ! super()
        call this%jm_init_0()
  end function

  recursive subroutine VectorToImageArrayRotationAnimationFactory_jm_init_0(this)
    class(VectorToImageArrayRotationAnimationFactory), target :: this
    class(AngleFactory), pointer :: j_angleFactory
    class(GameConfigurationCentral), pointer :: jtemp2
    class(ImageToRotationImageArrayUtil), pointer :: jtemp3
        j_angleFactory => AngleFactory_jm_getInstance_0()
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        this%f_angleIncrement = (j_angleFactory%f_TOTAL_ANGLE / jtemp2%jm_getGameControlFidelity_0())
        jtemp3 => ImageToRotationImageArrayUtil_jm_getInstance_0()
        this%f_imageArray = jtemp3%jm_generate_3(this%jm_getImage_0(), this%jm_getAngleIncrement_0(), j_angleFactory%f_TOTAL_ANGLE)
  end subroutine

  recursive function VectorToImageArrayRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(VectorToImageArrayRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(AngleFactory), pointer :: jtemp4
    class(AngleFactory), pointer :: jtemp5
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            jtemp5 => AngleFactory_jm_getInstance_0()
            jresult => AdjustedImageArrayRotationAnimation_jnew_6(this%f_imageArray, AngleInfo_jm_getInstance_1(JR_i16(this%jm_getAngleIncrement_0())), jtemp5%f_TOTAL_ANGLE, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jtemp4 => AngleFactory_jm_getInstance_0()
            jresult => AdjustedImageArrayRotationAnimation_jm_createAnimation_4(this%f_imageArray, AngleInfo_jm_getInstance_1(JR_i16(this%f_angleIncrement)), jtemp4%f_TOTAL_ANGLE, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function

  recursive function VectorToImageArrayRotationAnimationFactory_jm_getAngleIncrement_0(this) result(jresult)
    class(VectorToImageArrayRotationAnimationFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_angleIncrement
        return
  end function

  recursive subroutine VectorToImageArrayRotationAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(VectorToImageArrayRotationAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module VectorToImageArrayRotationAnimationFactory_m

