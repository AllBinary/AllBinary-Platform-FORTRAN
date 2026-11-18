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
module AllBinaryArrayImageRotationAnimationFactory_m
  use JR_m
  use NullImage_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use GameConfigurationCentral_m
  use PrimitiveIntUtil_m
  use AngleFactory_m
  use AngleInfo_m
  use ImageToRotationImageArrayUtil_m
  use BaseImageAnimationFactory_m
  use ImageArrayRotationAnimation_m
  use AdjustedImageArrayRotationAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: AllBinaryArrayImageRotationAnimationFactory
    type(JRef), allocatable :: f_imageArray(:)
    integer(4) :: f_angleIncrement = 0
  contains
    procedure :: jm_init_0 => AllBinaryArrayImageRotationAnimationFactory_jm_init_0
    procedure :: jm_initDXY_2 => AllBinaryArrayImageRotationAnimationFactory_jm_initDXY_2
    procedure :: jm_getInstance_1 => AllBinaryArrayImageRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_setImageArray_1 => AllBinaryArrayImageRotationAnimationFactory_jm_setImageArray_1
    procedure :: jm_getAngleIncrement_0 => AllBinaryArrayImageRotationAnimationFactory_jm_getAngleIncrement_0
  end type


contains

  function AllBinaryArrayImageRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryArrayImageRotationAnimationFactory)
      jresult => object
    end select
  end function

  recursive function AllBinaryArrayImageRotationAnimationFactory_jnew_5(j_image, j_width, j_height, j_angleIncrement, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_angleIncrement
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinaryArrayImageRotationAnimationFactory'
    this%f_imageArray = NullImage_jstatic_NULL_IMAGE_ARRAY()
    
        continue ! super()
        this%f_angleIncrement = j_angleIncrement
        call this%jm_init_0()
  end function

  recursive function AllBinaryArrayImageRotationAnimationFactory_jm_createFactory_3(j_image, j_dx, j_dy) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: jresult
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: j_arrayImageRotationAnimationFactory
    class(AngleFactory), pointer :: jtemp1
    class(GameConfigurationCentral), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => AngleFactory_jm_getInstance_0()
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        j_arrayImageRotationAnimationFactory => AllBinaryArrayImageRotationAnimationFactory_jnew_5(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), (jtemp1%f_TOTAL_ANGLE / jtemp2%jm_getGameControlFidelity_0()), AnimationBehaviorFactory_jm_getInstance_0())
        call j_arrayImageRotationAnimationFactory%jm_initDXY_2(j_dx, j_dy)
        jresult => j_arrayImageRotationAnimationFactory
        return
  end function

  recursive function AllBinaryArrayImageRotationAnimationFactory_jm_createFactoryA_4(j_image, j_dx, j_dy, j_angleIncrement) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_angleIncrement
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: jresult
    class(AllBinaryArrayImageRotationAnimationFactory), pointer :: j_arrayImageRotationAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_arrayImageRotationAnimationFactory => AllBinaryArrayImageRotationAnimationFactory_jnew_5(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), j_angleIncrement, AnimationBehaviorFactory_jm_getInstance_0())
        call j_arrayImageRotationAnimationFactory%jm_initDXY_2(j_dx, j_dy)
        jresult => j_arrayImageRotationAnimationFactory
        return
  end function

  recursive subroutine AllBinaryArrayImageRotationAnimationFactory_jm_init_0(this)
    class(AllBinaryArrayImageRotationAnimationFactory), target :: this
    class(ImageToRotationImageArrayUtil), pointer :: jtemp3
    class(AngleFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => AngleFactory_jm_getInstance_0()
        jtemp3 => ImageToRotationImageArrayUtil_jm_getInstance_0()
        call this%jm_setImageArray_1(jtemp3%jm_generate_3(this%jm_getImage_0(), this%jm_getAngleIncrement_0(), jtemp4%f_TOTAL_ANGLE))
  end subroutine

  recursive subroutine AllBinaryArrayImageRotationAnimationFactory_jm_initDXY_2(this, j_dx, j_dy)
    class(AllBinaryArrayImageRotationAnimationFactory), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_animationFactoryInitializationVisitor%f_dx = j_dx
        this%f_animationFactoryInitializationVisitor%f_dy = j_dy
        this%f_animationFactoryInitializationVisitor%f_originalDx = j_dx
        this%f_animationFactoryInitializationVisitor%f_originalDy = j_dy
  end subroutine

  recursive function AllBinaryArrayImageRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(AllBinaryArrayImageRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    type(JRef), allocatable :: j_scaledImageArray(:)
    integer(4) :: j_size
    class(Image), pointer :: j_image
    integer(4) :: j_index
    class(AngleFactory), pointer :: jtemp5
    class(AngleFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scaledImageArray = JR_newRefArray(size(this%f_imageArray, 1))
        j_size = size(j_scaledImageArray, 1)
        j_image => this%jm_getImage_0()
        j_index = 0
        do while ((j_index < j_size))
            j_scaledImageArray((j_index) + 1)%v => this%f_animationFactoryImageScaleUtil%jm_createImage_5(j_image, j_image%jm_getWidth_0(), j_image%jm_getHeight_0(), this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
            j_index = j_index + 1
        end do
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            call this%f_animationFactoryImageScaleUtil%jm_processAdjust_1(this)
            jtemp6 => AngleFactory_jm_getInstance_0()
            jresult => AdjustedImageArrayRotationAnimation_jnew_6(j_scaledImageArray, AngleInfo_jm_getInstance_1(JR_i16(this%jm_getAngleIncrement_0())), jtemp6%f_TOTAL_ANGLE, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jtemp5 => AngleFactory_jm_getInstance_0()
            jresult => ImageArrayRotationAnimation_jnew_4(j_scaledImageArray, AngleInfo_jm_getInstance_1(JR_i16(this%jm_getAngleIncrement_0())), jtemp5%f_TOTAL_ANGLE, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function

  recursive subroutine AllBinaryArrayImageRotationAnimationFactory_jm_setImageArray_1(this, j_imageArray)
    class(AllBinaryArrayImageRotationAnimationFactory), target :: this
    type(JRef) :: j_imageArray(:)
        this%f_imageArray = j_imageArray
  end subroutine

  recursive function AllBinaryArrayImageRotationAnimationFactory_jm_getAngleIncrement_0(this) result(jresult)
    class(AllBinaryArrayImageRotationAnimationFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_angleIncrement
        return
  end function
end module AllBinaryArrayImageRotationAnimationFactory_m

