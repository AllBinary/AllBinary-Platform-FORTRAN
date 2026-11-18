! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.image.sprite
module AnimationFactorySpriteScaleUtil_m
  use JR_m
  use SpriteFactory_m
  use OpenGLUtil_m
  use ImageCache_m
  use ImageCacheFactory_m
  use OpenGLESImageExclusionUtil_m
  use J2SEMath_m
  use ImageScaleUtil_m
  implicit none

  type, extends(JObject) :: AnimationFactorySpriteScaleUtil
    class(ImageCache), pointer :: f_imageCache => null()
    class(ImageScaleUtil), pointer :: f_imageScaleUtil => null()
    class(OpenGLUtil), pointer :: f_openGLUtil => null()
    class(J2SEMath), pointer :: f_j2seMath => null()
    class(OpenGLESImageExclusionUtil), pointer :: f_openGLESImageExclusionUtil => null()
  contains
    procedure :: jm_createImage_5 => AnimationFactorySpriteScaleUtil_jm_createImage_5
  end type

  class(AnimationFactorySpriteScaleUtil), pointer, save :: AnimationFactorySpriteScaleUtil_jcell_instance => null()
  logical, save :: AnimationFactorySpriteScaleUtil_jset_instance = .false.

contains

  function AnimationFactorySpriteScaleUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationFactorySpriteScaleUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationFactorySpriteScaleUtil)
      jresult => object
    end select
  end function

  function AnimationFactorySpriteScaleUtil_jstatic_instance() result(jresult)
    class(AnimationFactorySpriteScaleUtil), pointer :: jresult
    if (.not. AnimationFactorySpriteScaleUtil_jset_instance) then
      AnimationFactorySpriteScaleUtil_jset_instance = .true.
      AnimationFactorySpriteScaleUtil_jcell_instance => AnimationFactorySpriteScaleUtil_jnew_0()
    end if
    jresult => AnimationFactorySpriteScaleUtil_jcell_instance
  end function

  subroutine AnimationFactorySpriteScaleUtil_jsetstatic_instance(jvalue)
    class(AnimationFactorySpriteScaleUtil), target, optional :: jvalue
    AnimationFactorySpriteScaleUtil_jset_instance = .true.
    if (present(jvalue)) then
      AnimationFactorySpriteScaleUtil_jcell_instance => jvalue
    else
      AnimationFactorySpriteScaleUtil_jcell_instance => null()
    end if
  end subroutine

  function AnimationFactorySpriteScaleUtil_jnew_0() result(this)
    class(AnimationFactorySpriteScaleUtil), pointer :: this
    allocate(this)
    this%jclass = 'AnimationFactorySpriteScaleUtil'
    this%f_imageCache => ImageCacheFactory_jm_getInstance_0()
    this%f_imageScaleUtil => ImageScaleUtil_jm_getInstance_0()
    this%f_openGLUtil => OpenGLUtil_jm_getInstance_0()
    this%f_j2seMath => J2SEMath_jm_getInstance_0()
    this%f_openGLESImageExclusionUtil => OpenGLESImageExclusionUtil_jm_getInstance_0()
  end function

  recursive function AnimationFactorySpriteScaleUtil_jm_getInstance_0() result(jresult)
    class(AnimationFactorySpriteScaleUtil), pointer :: jresult
        jresult => AnimationFactorySpriteScaleUtil_jstatic_instance()
        return
  end function

  recursive function AnimationFactorySpriteScaleUtil_jm_createImage_5(this, j_image, j_width, j_height, j_scaleWidth, j_scaleHeight) result(jresult)
    class(AnimationFactorySpriteScaleUtil), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_scaleWidth
    integer(4), value :: j_scaleHeight
    class(Sprite), pointer :: jresult
    class(SpriteFactory), pointer :: j_spriteFactory
    class(Sprite), pointer :: j_sprite
    class(Image), pointer :: j_scaledImage
    real(4) :: j_scaleX
    real(4) :: j_scaleY
    integer(4) :: j_width2
    integer(4) :: j_height2
    integer(4) :: j_multiplesOf16Width
    integer(4) :: j_by16Width
    integer(4) :: j_multiplesOf16Height
    integer(4) :: j_by16Height
        j_spriteFactory => SpriteFactory_jm_getInstance_0()
        continue
        continue
        if (((j_scaleWidth /= 0) .and. (j_scaleHeight /= 0))) then
            j_scaleX = ((real(j_scaleWidth, 4)) / (real(j_width, 4)))
            j_scaleY = ((real(j_scaleHeight, 4)) / (real(j_height, 4)))
            if (((((j_scaleX == 1.0) .and. (j_scaleY == 1.0))) .or. (((j_scaleX == 0.0) .or. (j_scaleY == 0.0))))) then
                j_scaledImage => this%f_openGLUtil%jm_addImage_1(j_image)
                j_sprite => j_spriteFactory%jm_createSprite_3(j_scaledImage, j_width, j_height)
            else
                if (this%f_openGLESImageExclusionUtil%jm_isCustomScaling_1(j_image)) then
                    j_width2 = this%f_j2seMath%jm_round_1((real(j_scaleWidth, 4) - 0.5))
                    j_height2 = this%f_j2seMath%jm_round_1((real(j_scaleHeight, 4) - 0.5))
                    j_multiplesOf16Width = (j_width2 / 16)
                    j_by16Width = (j_multiplesOf16Width * 16)
                    j_scaleX = ((real(j_by16Width, 4)) / real(j_width, 4))
                    j_multiplesOf16Height = (j_height2 / 16)
                    j_by16Height = (j_multiplesOf16Height * 16)
                    j_scaleY = ((real(j_by16Height, 4)) / real(j_height, 4))
                    if ((j_scaleWidth < j_width)) then
                        j_scaleX = (j_scaleX * 2.35)
                    end if
                    if ((j_scaleHeight < j_height)) then
                        j_scaleY = (j_scaleY * 2.35)
                    end if
                end if
                j_scaledImage => this%f_imageScaleUtil%jm_createImage2_7(this%f_imageCache, j_image, j_scaleX, 1.0, j_scaleY, 1.0, .true.)
                j_sprite => j_spriteFactory%jm_createSprite_3(j_scaledImage, JR_d2i(real(((real(j_width, 4) * j_scaleX)), 8)), JR_d2i(real(((real(j_height, 4) * j_scaleY)), 8)))
            end if
        else
            j_scaledImage => this%f_openGLUtil%jm_addImage_1(j_image)
            j_sprite => j_spriteFactory%jm_createSprite_3(j_scaledImage, j_width, j_height)
        end if
        jresult => j_sprite
        return
  end function
end module AnimationFactorySpriteScaleUtil_m

