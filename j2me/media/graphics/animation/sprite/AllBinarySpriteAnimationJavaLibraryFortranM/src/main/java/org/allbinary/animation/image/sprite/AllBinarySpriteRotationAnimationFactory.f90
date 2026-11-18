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
module AllBinarySpriteRotationAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use BaseImageAnimationFactory_m
  use AnimationFactorySpriteScaleUtil_m
  use ForcedLogUtil_m
  use PrimitiveIntUtil_m
  use AllBinarySpriteRotationAnimation_m
  use AllBinaryAdjustedSpriteRotationAnimation_m
  implicit none

  type, extends(BaseImageAnimationFactory) :: AllBinarySpriteRotationAnimationFactory
    class(AnimationFactorySpriteScaleUtil), pointer :: f_animationFactorySpriteScaleUtil => null()
  contains
    procedure :: jm_init_2 => AllBinarySpriteRotationAnimationFactory_jm_init_2
    procedure :: jm_initWH_2 => AllBinarySpriteRotationAnimationFactory_jm_initWH_2
    procedure :: jm_getInstance_1 => AllBinarySpriteRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => AllBinarySpriteRotationAnimationFactory_jm_getInstanceAnimation_1
  end type

  ! AllBinarySpriteRotationAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function AllBinarySpriteRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinarySpriteRotationAnimationFactory)
      jresult => object
    end select
  end function

  function AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(AllBinarySpriteRotationAnimationFactory), target :: object
    class(AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinarySpriteRotationAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(AllBinarySpriteRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, j_sequenceArray, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinarySpriteRotationAnimationFactory'
    this%f_animationFactorySpriteScaleUtil => AnimationFactorySpriteScaleUtil_jm_getInstance_0()
        continue ! super()
        if (JR_same(j_animationBehaviorFactory, AnimationBehaviorFactory_jm_getInstance_0())) then
            call ForcedLogUtil_jm_log_2('Using default AnimationBehaviorFactory with IndexedAnimationFactory', this)
        end if
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createWHDY_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
    class(AllBinarySpriteRotationAnimationFactory), pointer :: j_spriteRotationAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_spriteRotationAnimationFactory => AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), 0, 0, j_animationBehaviorFactory)
        call j_spriteRotationAnimationFactory%jm_initWH_2(j_dx, j_dy)
        jresult => j_spriteRotationAnimationFactory
        return
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createWH_2(j_image, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
        jresult => AllBinarySpriteRotationAnimationFactory_jm_createWHDY_4(j_image, 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createDXY_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
    class(AllBinarySpriteRotationAnimationFactory), pointer :: j_spriteRotationAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_spriteRotationAnimationFactory => AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_image%jm_getHeight_0(), j_image%jm_getHeight_0(), 0, 0, j_animationBehaviorFactory)
        call j_spriteRotationAnimationFactory%jm_init_2(j_dx, j_dy)
        jresult => j_spriteRotationAnimationFactory
        return
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createDXYQ_4(j_image, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
    class(AllBinarySpriteRotationAnimationFactory), pointer :: j_spriteRotationAnimationFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_spriteRotationAnimationFactory => AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), 0, 0, j_animationBehaviorFactory)
        call j_spriteRotationAnimationFactory%jm_init_2(j_dx, j_dy)
        jresult => j_spriteRotationAnimationFactory
        return
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createQ_2(j_image, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
        jresult => AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), (shifta(j_image%jm_getHeight_0(), iand(2, 31))), 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_createWHF_2(j_image, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(AllBinarySpriteRotationAnimationFactory), pointer :: jresult
        jresult => AllBinarySpriteRotationAnimationFactory_jnew_7(j_image, PrimitiveIntUtil_jm_getArrayInstance_0(), j_image%jm_getHeight_0(), j_image%jm_getHeight_0(), 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive subroutine AllBinarySpriteRotationAnimationFactory_jm_init_2(this, j_dx, j_dy)
    class(AllBinarySpriteRotationAnimationFactory), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_animationFactoryInitializationVisitor%f_dx = j_dx
        this%f_animationFactoryInitializationVisitor%f_dy = j_dy
  end subroutine

  recursive subroutine AllBinarySpriteRotationAnimationFactory_jm_initWH_2(this, j_dx, j_dy)
    class(AllBinarySpriteRotationAnimationFactory), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_init_2(j_dx, j_dy)
        this%f_animationFactoryInitializationVisitor%f_dx = (this%f_animationFactoryInitializationVisitor%f_dx + ((-this%f_animationFactoryInitializationVisitor%f_width) / 5))
        this%f_animationFactoryInitializationVisitor%f_dy = (this%f_animationFactoryInitializationVisitor%f_dy + ((-this%f_animationFactoryInitializationVisitor%f_height) / 5))
  end subroutine

  recursive function AllBinarySpriteRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(AllBinarySpriteRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Sprite), pointer :: j_sprite
        j_sprite => this%f_animationFactorySpriteScaleUtil%jm_createImage_5(this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_width, this%f_animationFactoryInitializationVisitor%f_height, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        if (((this%f_animationFactoryInitializationVisitor%f_dx /= 0) .or. (this%f_animationFactoryInitializationVisitor%f_dy /= 0))) then
            jresult => AllBinaryAdjustedSpriteRotationAnimation_jnew_5(j_sprite, this%jm_getImage_0(), this%f_animationFactoryInitializationVisitor%f_dx, this%f_animationFactoryInitializationVisitor%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => AllBinarySpriteRotationAnimation_jnew_3(j_sprite, this%jm_getImage_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        end if
  end function

  recursive function AllBinarySpriteRotationAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(AllBinarySpriteRotationAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%jm_getInstance_1(0)
        return
  end function
end module AllBinarySpriteRotationAnimationFactory_m

