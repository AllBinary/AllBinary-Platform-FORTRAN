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
module ImageCaptionIndexedAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use IndexedAnimation_m
  use CaptionIndexedAnimation_m
  use ImageAnimation_m
  use BasicColorUtil_m
  use AnimationFactoryImageScaleUtil_m
  use AnimationFactorySpriteScaleUtil_m
  use ForcedLogUtil_m
  use ScaleProperties_m
  use Sound_m
  use SpriteIndexedAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: ImageCaptionIndexedAnimationFactory
    class(AnimationFactoryImageScaleUtil), pointer :: f_animationFactoryImageScaleUtil => null()
    class(AnimationFactorySpriteScaleUtil), pointer :: f_animationFactorySpriteScaleUtil => null()
    class(Image), pointer :: f_captionImage => null()
    class(Image), pointer :: f_spriteMovieImage => null()
    integer(4) :: f_frameWidth = 0
    integer(4) :: f_frameHeight = 0
    integer(4) :: f_captionDx = 0
    integer(4) :: f_captionDy = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    integer(4) :: f_time = 0
    class(Sound), pointer :: f_soundInterface => null()
    class(ScaleProperties), pointer :: f_scaleProperties => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => ImageCaptionIndexedAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => ImageCaptionIndexedAnimationFactory_jm_setInitialScale_1
  end type


contains

  function ImageCaptionIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCaptionIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCaptionIndexedAnimationFactory)
      jresult => object
    end select
  end function

  recursive function ImageCaptionIndexedAnimationFactory_jnew_11(j_captionImage, j_spriteMovieImage, j_soundInterface, j_frameWidth, j_frameHeight, j_captionDx, j_captionDy, j_dx, j_dy, j_time, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_captionImage
    class(Image), target, optional :: j_spriteMovieImage
    class(Sound), target, optional :: j_soundInterface
    integer(4), value :: j_frameWidth
    integer(4), value :: j_frameHeight
    integer(4), value :: j_captionDx
    integer(4), value :: j_captionDy
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_time
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(ImageCaptionIndexedAnimationFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageCaptionIndexedAnimationFactory'
    this%f_animationFactoryImageScaleUtil => AnimationFactoryImageScaleUtil_jm_getInstance_0()
    this%f_animationFactorySpriteScaleUtil => AnimationFactorySpriteScaleUtil_jm_getInstance_0()
    
    
    
    
    
    
    
    
    
    
    this%f_scaleProperties => ScaleProperties_jstatic_instance()
    
        if (JR_same(j_animationBehaviorFactory, AnimationBehaviorFactory_jm_getInstance_0())) then
            call ForcedLogUtil_jm_log_2('Using default AnimationBehaviorFactory with IndexedAnimationFactory', this)
        end if
        this%f_captionImage => j_captionImage
        this%f_spriteMovieImage => j_spriteMovieImage
        this%f_frameWidth = j_frameWidth
        this%f_frameHeight = j_frameHeight
        this%f_captionDx = j_captionDx
        this%f_captionDy = j_captionDy
        this%f_dx = j_dx
        this%f_dy = j_dy
        this%f_time = j_time
        this%f_soundInterface => j_soundInterface
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
  end function

  recursive function ImageCaptionIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(ImageCaptionIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(Image), pointer :: j_scaledImage
    class(Animation), pointer :: j_animationInterface
    class(Sprite), pointer :: j_sprite
    class(IndexedAnimation), pointer :: j_movieIndexedAnimationInterface
    class(Player), pointer :: j_player
    class(BasicColorUtil), pointer :: jtemp1
        j_scaledImage => this%f_animationFactoryImageScaleUtil%jm_createImage_5(this%f_captionImage, this%f_captionImage%jm_getWidth_0(), this%f_captionImage%jm_getHeight_0(), this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        j_animationInterface => ImageAnimation_jnew_2(j_scaledImage, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        j_sprite => this%f_animationFactorySpriteScaleUtil%jm_createImage_5(this%f_spriteMovieImage, this%f_frameWidth, this%f_frameHeight, this%f_scaleProperties%f_scaleWidth, this%f_scaleProperties%f_scaleHeight)
        jtemp1 => BasicColorUtil_jm_getInstance_0()
        j_movieIndexedAnimationInterface => SpriteIndexedAnimation_jnew_4(j_sprite, this%f_spriteMovieImage, jtemp1%f_ZERO_ARRAY, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        j_player => this%f_soundInterface%jm_getPlayerP_0()
        if ((.not. associated(j_player))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        jresult => CaptionIndexedAnimation_jnew_9(j_animationInterface, j_movieIndexedAnimationInterface, j_player, this%f_captionDx, this%f_captionDy, this%f_dx, this%f_dy, this%f_time, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive subroutine ImageCaptionIndexedAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(ImageCaptionIndexedAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
        this%f_scaleProperties => j_scaleProperties
  end subroutine
end module ImageCaptionIndexedAnimationFactory_m

