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
module OneRowSpriteIndexedAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use BaseImageAnimationFactory_m
  use BasicColorUtil_m
  use AnimationFactorySpriteScaleUtil_m
  use PrimitiveIntUtil_m
  use SpriteIndexedAnimation_m
  use AdjustedSpriteIndexedAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: OneRowSpriteIndexedAnimationFactory
    class(AnimationFactorySpriteScaleUtil), pointer :: f_animationFactorySpriteScaleUtil => null()
  contains
    procedure :: jm_init_2 => OneRowSpriteIndexedAnimationFactory_jm_init_2
    procedure :: jm_initW_1 => OneRowSpriteIndexedAnimationFactory_jm_initW_1
    procedure :: jm_getInstance_1 => OneRowSpriteIndexedAnimationFactory_jm_getInstance_1
  end type


contains

  function OneRowSpriteIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OneRowSpriteIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OneRowSpriteIndexedAnimationFactory)
      jresult => object
    end select
  end function

  recursive function OneRowSpriteIndexedAnimationFactory_jnew_7(j_image, j_sequenceArray, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(OneRowSpriteIndexedAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'OneRowSpriteIndexedAnimationFactory'
    this%f_animationFactorySpriteScaleUtil => AnimationFactorySpriteScaleUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive function OneRowSpriteIndexedAnimationFactory_jm_createFactoryDX_3(j_image, j_dx, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(OneRowSpriteIndexedAnimationFactory), pointer :: jresult
    class(OneRowSpriteIndexedAnimationFactory), pointer :: j_oneRowSpriteIndexedAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_oneRowSpriteIndexedAnimationFactory => OneRowSpriteIndexedAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_image%jm_getHeight_0(), j_image%jm_getHeight_0(), 0, 0, j_animationBehaviorFactory)
        call j_oneRowSpriteIndexedAnimationFactory%jm_initW_1(j_dx)
        jresult => j_oneRowSpriteIndexedAnimationFactory
        return
  end function

  recursive function OneRowSpriteIndexedAnimationFactory_jm_createFactoryDXY_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(OneRowSpriteIndexedAnimationFactory), pointer :: jresult
    class(OneRowSpriteIndexedAnimationFactory), pointer :: j_oneRowSpriteIndexedAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_oneRowSpriteIndexedAnimationFactory => OneRowSpriteIndexedAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_image%jm_getHeight_0(), j_image%jm_getHeight_0(), 0, 0, j_animationBehaviorFactory)
        call j_oneRowSpriteIndexedAnimationFactory%jm_init_2(j_dx, j_dy)
        jresult => j_oneRowSpriteIndexedAnimationFactory
        return
  end function

  recursive function OneRowSpriteIndexedAnimationFactory_jm_createFactoryWH_4(j_image, j_width, j_height, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(OneRowSpriteIndexedAnimationFactory), pointer :: jresult
        jresult => OneRowSpriteIndexedAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_width, j_height, 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive function OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_image, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(OneRowSpriteIndexedAnimationFactory), pointer :: jresult
        jresult => OneRowSpriteIndexedAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_image%jm_getHeight_0(), j_image%jm_getHeight_0(), 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive subroutine OneRowSpriteIndexedAnimationFactory_jm_init_2(this, j_dx, j_dy)
    class(OneRowSpriteIndexedAnimationFactory), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_animationFactoryInitializationVisitor%f_dx = j_dx
        this%f_animationFactoryInitializationVisitor%f_dy = j_dy
  end subroutine

  recursive subroutine OneRowSpriteIndexedAnimationFactory_jm_initW_1(this, j_dx)
    class(OneRowSpriteIndexedAnimationFactory), target :: this
    integer(4), value :: j_dx
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_init_2(j_dx, 0)
        this%f_animationFactoryInitializationVisitor%f_dx = (this%f_animationFactoryInitializationVisitor%f_dx + (-(shifta(this%f_animationFactoryInitializationVisitor%f_width, iand(2, 31)))))
  end subroutine

  recursive function OneRowSpriteIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(OneRowSpriteIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Sprite), pointer :: j_sprite
    class(BasicColorUtil), pointer :: jtemp1
    class(BasicColorUtil), pointer :: jtemp2
        j_sprite => this%f_animationFactorySpriteScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            jtemp2 => BasicColorUtil_jm_getInstance_0()
            jresult => AdjustedSpriteIndexedAnimation_jnew_6(j_sprite, this%jm_getImage_0(), jtemp2%f_ZERO_ARRAY, this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jtemp1 => BasicColorUtil_jm_getInstance_0()
            jresult => SpriteIndexedAnimation_jnew_4(j_sprite, this%jm_getImage_0(), jtemp1%f_ZERO_ARRAY, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function
end module OneRowSpriteIndexedAnimationFactory_m

