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
module PooledImageArrayRotationAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use GameConfigurationCentral_m
  use NullUtil_m
  use AngleFactory_m
  use ScaleProperties_m
  use ImageToRotationImageArrayUtil_m
  use ImageArrayRotationAnimationInfo_m
  use AdjustedImageArrayRotationAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: PooledImageArrayRotationAnimationFactory
    class(JObject), pointer :: f_allBinaryImageRotationAnimationInfo => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => PooledImageArrayRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => PooledImageArrayRotationAnimationFactory_jm_setInitialScale_1
  end type


contains

  function PooledImageArrayRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PooledImageArrayRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PooledImageArrayRotationAnimationFactory)
      jresult => object
    end select
  end function

  recursive function PooledImageArrayRotationAnimationFactory_jnew_7(j_image, j_width, j_height, j_dx, j_dy, j_angleIncrement, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_angleIncrement
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(PooledImageArrayRotationAnimationFactory), pointer :: this
    integer(4) :: j_totalAngle
    type(JRef), allocatable :: j_imageArray(:)
    class(AngleFactory), pointer :: jtemp6
    class(ImageToRotationImageArrayUtil), pointer :: jtemp7
    class(NullUtil), pointer :: jtemp5
    allocate(this)
    this%jclass = 'PooledImageArrayRotationAnimationFactory'
    jtemp5 => NullUtil_jm_getInstance_0()
    this%f_allBinaryImageRotationAnimationInfo => jtemp5%f_NULL_OBJECT
    
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
        jtemp6 => AngleFactory_jm_getInstance_0()
        j_totalAngle = jtemp6%f_TOTAL_ANGLE
        jtemp7 => ImageToRotationImageArrayUtil_jm_getInstance_0()
        j_imageArray = jtemp7%jm_generate_3(j_image, j_angleIncrement, j_totalAngle)
        this%f_allBinaryImageRotationAnimationInfo => ImageArrayRotationAnimationInfo_jnew_5(j_imageArray, j_angleIncrement, j_totalAngle, j_dx, j_dy)
  end function

  recursive function PooledImageArrayRotationAnimationFactory_jm_createFactory_2(j_image, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(PooledImageArrayRotationAnimationFactory), pointer :: jresult
    integer(4) :: j_totalAngle
    integer(4) :: j_angleIncrement
    class(AngleFactory), pointer :: jtemp1
    class(GameConfigurationCentral), pointer :: jtemp2
        jtemp1 => AngleFactory_jm_getInstance_0()
        j_totalAngle = jtemp1%f_TOTAL_ANGLE
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        j_angleIncrement = ((j_totalAngle / jtemp2%jm_getGameControlFidelity_0()))
        jresult => PooledImageArrayRotationAnimationFactory_jnew_7(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), (-(shifta(j_image%jm_getWidth_0(), iand(2, 31)))), (-(shifta(j_image%jm_getHeight_0(), iand(2, 31)))), j_angleIncrement, j_animationBehaviorFactory)
        return
  end function

  recursive function PooledImageArrayRotationAnimationFactory_jm_createDXY_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(PooledImageArrayRotationAnimationFactory), pointer :: jresult
    integer(4) :: j_totalAngle
    integer(4) :: j_angleIncrement
    class(AngleFactory), pointer :: jtemp3
    class(GameConfigurationCentral), pointer :: jtemp4
        jtemp3 => AngleFactory_jm_getInstance_0()
        j_totalAngle = jtemp3%f_TOTAL_ANGLE
        jtemp4 => GameConfigurationCentral_jm_getInstance_0()
        j_angleIncrement = ((j_totalAngle / jtemp4%jm_getGameControlFidelity_0()))
        jresult => PooledImageArrayRotationAnimationFactory_jnew_7(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), j_dx, j_dy, j_angleIncrement, j_animationBehaviorFactory)
        return
  end function

  recursive function PooledImageArrayRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(PooledImageArrayRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => AdjustedImageArrayRotationAnimation_jm_createAdjustedImageArrayRotationAnimationInfo_2(this%f_allBinaryImageRotationAnimationInfo, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive subroutine PooledImageArrayRotationAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(PooledImageArrayRotationAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module PooledImageArrayRotationAnimationFactory_m

