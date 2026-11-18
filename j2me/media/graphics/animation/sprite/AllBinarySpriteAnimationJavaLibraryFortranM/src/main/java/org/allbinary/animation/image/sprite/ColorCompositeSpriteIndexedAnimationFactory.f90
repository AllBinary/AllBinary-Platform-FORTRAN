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
module ColorCompositeSpriteIndexedAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use BaseImageAnimationFactory_m
  use BasicColor_m
  use AnimationFactorySpriteScaleUtil_m
  use PrimitiveIntUtil_m
  use SpriteIndexedAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: ColorCompositeSpriteIndexedAnimationFactory
    class(AnimationFactorySpriteScaleUtil), pointer :: f_animationFactorySpriteScaleUtil => null()
    type(JRef), allocatable :: f_basicColorArray(:)
  contains
    procedure :: jm_getInstance_1 => ColorCompositeSpriteIndexedAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => ColorCompositeSpriteIndexedAnimationFactory_jm_getInstanceAnimation_1
  end type

  ! ColorCompositeSpriteIndexedAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(ColorCompositeSpriteIndexedAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function ColorCompositeSpriteIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorCompositeSpriteIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorCompositeSpriteIndexedAnimationFactory)
      jresult => object
    end select
  end function

  function ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(ColorCompositeSpriteIndexedAnimationFactory), target :: object
    class(ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ColorCompositeSpriteIndexedAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(ColorCompositeSpriteIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  recursive function ColorCompositeSpriteIndexedAnimationFactory_jnew_5(j_image, j_basicColorArray, j_width, j_height, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(ColorCompositeSpriteIndexedAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'ColorCompositeSpriteIndexedAnimationFactory'
    this%f_animationFactorySpriteScaleUtil => AnimationFactorySpriteScaleUtil_jm_getInstance_0()
    
        continue ! super()
        this%f_basicColorArray = j_basicColorArray
  end function

  recursive function ColorCompositeSpriteIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(ColorCompositeSpriteIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Sprite), pointer :: j_sprite
        j_sprite => this%f_animationFactorySpriteScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        jresult => SpriteIndexedAnimation_jnew_4(j_sprite, this%jm_getImage_0(), this%f_basicColorArray, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive function ColorCompositeSpriteIndexedAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(ColorCompositeSpriteIndexedAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%jm_getInstance_1(0)
        return
  end function
end module ColorCompositeSpriteIndexedAnimationFactory_m

