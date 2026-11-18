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
! package org.allbinary.animation.image.sprite
module SpriteIndexedAnimationFactory_m
  use JR_m
  use AndroidUtil_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use BaseImageAnimationFactory_m
  use BasicColor_m
  use BasicColorUtil_m
  use AnimationFactorySpriteScaleUtil_m
  use PrimitiveIntUtil_m
  use SpriteIndexedAnimation_m
  use AdjustedSpriteIndexedAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: SpriteIndexedAnimationFactory
    class(AnimationFactorySpriteScaleUtil), pointer :: f_animationFactorySpriteScaleUtil => null()
    type(JRef), allocatable :: f_basicColorArray(:)
  contains
    procedure :: jm_initHWH_0 => SpriteIndexedAnimationFactory_jm_initHWH_0
    procedure :: jm_getInstance_1 => SpriteIndexedAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => SpriteIndexedAnimationFactory_jm_getInstanceAnimation_1
  end type

  ! SpriteIndexedAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(SpriteIndexedAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function SpriteIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpriteIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpriteIndexedAnimationFactory)
      jresult => object
    end select
  end function

  function SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(SpriteIndexedAnimationFactory), target :: object
    class(SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'SpriteIndexedAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(SpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  recursive function SpriteIndexedAnimationFactory_jnew_8(j_image, j_basicColorArray, j_sequenceArray, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SpriteIndexedAnimationFactory), pointer :: this
    class(BasicColorUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'SpriteIndexedAnimationFactory'
    this%f_animationFactorySpriteScaleUtil => AnimationFactorySpriteScaleUtil_jm_getInstance_0()
    jtemp2 => BasicColorUtil_jm_getInstance_0()
    this%f_basicColorArray = jtemp2%f_ZERO_ARRAY
        continue ! super()
        this%f_basicColorArray = j_basicColorArray
  end function

  recursive function SpriteIndexedAnimationFactory_jm_createCWHDXY_7(j_image, j_basicColorArray, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SpriteIndexedAnimationFactory), pointer :: jresult
        jresult => SpriteIndexedAnimationFactory_jnew_8(j_image, j_basicColorArray, PrimitiveIntUtil_jm_getArrayInstance_0(), j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory)
        return
  end function

  recursive function SpriteIndexedAnimationFactory_jm_createCWH_5(j_image, j_basicColorArray, j_width, j_height, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SpriteIndexedAnimationFactory), pointer :: jresult
    class(SpriteIndexedAnimationFactory), pointer :: j_spriteIndexedAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_spriteIndexedAnimationFactory => SpriteIndexedAnimationFactory_jnew_8(j_image, j_basicColorArray, PrimitiveIntUtil_jm_getArrayInstance_0(), j_width, j_height, 0, 0, j_animationBehaviorFactory)
        call j_spriteIndexedAnimationFactory%jm_initHWH_0()
        jresult => j_spriteIndexedAnimationFactory
        return
  end function

  recursive function SpriteIndexedAnimationFactory_jm_createWH_4(j_image, j_width, j_height, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SpriteIndexedAnimationFactory), pointer :: jresult
    class(BasicColorUtil), pointer :: jtemp1
        jtemp1 => BasicColorUtil_jm_getInstance_0()
        jresult => SpriteIndexedAnimationFactory_jnew_8(j_image, jtemp1%f_ZERO_ARRAY, PrimitiveIntUtil_jm_getArrayInstance_0(), j_width, j_height, 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive subroutine SpriteIndexedAnimationFactory_jm_initHWH_0(this)
    class(SpriteIndexedAnimationFactory), target :: this
        this%f_animationFactoryInitializationVisitor%f_dx = (-(shifta(this%f_animationFactoryInitializationVisitor%f_width, iand(2, 31))))
        this%f_animationFactoryInitializationVisitor%f_dy = (-(shifta(this%f_animationFactoryInitializationVisitor%f_height, iand(2, 31))))
        if (AndroidUtil_jm_isAndroid_0()) then
            this%f_animationFactoryInitializationVisitor%f_dx = (this%f_animationFactoryInitializationVisitor%f_dx + 3)
        end if
  end subroutine

  recursive function SpriteIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(SpriteIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Sprite), pointer :: j_sprite
        j_sprite => this%f_animationFactorySpriteScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            jresult => AdjustedSpriteIndexedAnimation_jnew_6(j_sprite, this%jm_getImage_0(), this%f_basicColorArray, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => SpriteIndexedAnimation_jnew_4(j_sprite, this%jm_getImage_0(), this%f_basicColorArray, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function

  recursive function SpriteIndexedAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(SpriteIndexedAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%jm_getInstance_1(0)
        return
  end function
end module SpriteIndexedAnimationFactory_m

