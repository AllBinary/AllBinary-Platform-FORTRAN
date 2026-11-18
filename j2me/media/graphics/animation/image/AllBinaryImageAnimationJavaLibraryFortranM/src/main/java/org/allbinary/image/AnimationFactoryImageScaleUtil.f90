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
! package org.allbinary.image
module AnimationFactoryImageScaleUtil_m
  use JR_m
  use AnimationFactoryInitializationVisitor_m
  use BaseImageAnimationFactory_m
  use ScaleProperties_m
  use ImageJ2MEScaleUtil_m
  implicit none

  type, extends(JObject) :: AnimationFactoryImageScaleUtil
    class(ImageJ2MEScaleUtil), pointer :: f_imageScaleUtil => null()
  contains
    procedure :: jm_createImage_5 => AnimationFactoryImageScaleUtil_jm_createImage_5
    procedure :: jm_processAdjust_1 => AnimationFactoryImageScaleUtil_jm_processAdjust_1
  end type

  class(AnimationFactoryImageScaleUtil), pointer, save :: AnimationFactoryImageScaleUtil_jcell_instance => null()
  logical, save :: AnimationFactoryImageScaleUtil_jset_instance = .false.

contains

  function AnimationFactoryImageScaleUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationFactoryImageScaleUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationFactoryImageScaleUtil)
      jresult => object
    end select
  end function

  function AnimationFactoryImageScaleUtil_jstatic_instance() result(jresult)
    class(AnimationFactoryImageScaleUtil), pointer :: jresult
    if (.not. AnimationFactoryImageScaleUtil_jset_instance) then
      AnimationFactoryImageScaleUtil_jset_instance = .true.
      AnimationFactoryImageScaleUtil_jcell_instance => AnimationFactoryImageScaleUtil_jnew_0()
    end if
    jresult => AnimationFactoryImageScaleUtil_jcell_instance
  end function

  subroutine AnimationFactoryImageScaleUtil_jsetstatic_instance(jvalue)
    class(AnimationFactoryImageScaleUtil), target, optional :: jvalue
    AnimationFactoryImageScaleUtil_jset_instance = .true.
    if (present(jvalue)) then
      AnimationFactoryImageScaleUtil_jcell_instance => jvalue
    else
      AnimationFactoryImageScaleUtil_jcell_instance => null()
    end if
  end subroutine

  function AnimationFactoryImageScaleUtil_jnew_0() result(this)
    class(AnimationFactoryImageScaleUtil), pointer :: this
    allocate(this)
    this%jclass = 'AnimationFactoryImageScaleUtil'
    this%f_imageScaleUtil => ImageJ2MEScaleUtil_jm_getInstance_0()
  end function

  recursive function AnimationFactoryImageScaleUtil_jm_getInstance_0() result(jresult)
    class(AnimationFactoryImageScaleUtil), pointer :: jresult
        jresult => AnimationFactoryImageScaleUtil_jstatic_instance()
        return
  end function

  recursive function AnimationFactoryImageScaleUtil_jm_createImage_5(this, j_image, j_width, j_height, j_scaleWidth, j_scaleHeight) result(jresult)
    class(AnimationFactoryImageScaleUtil), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_scaleWidth
    integer(4), value :: j_scaleHeight
    class(Image), pointer :: jresult
    class(Image), pointer :: j_scaledImage
    real(4) :: j_scaleX
    real(4) :: j_scaleY
    integer(4) :: j_scaledWidth
    integer(4) :: j_scaledHeight
        continue
        if (((j_scaleWidth /= 0) .and. (j_scaleHeight /= 0))) then
            j_scaleX = ((real(j_scaleWidth, 4)) / (real(j_width, 4)))
            j_scaleY = ((real(j_scaleHeight, 4)) / (real(j_height, 4)))
            if (((((j_scaleX == 1.0) .and. (j_scaleY == 1.0))) .or. (((j_scaleX == 0.0) .or. (j_scaleY == 0.0))))) then
                j_scaledImage => j_image
            else
                j_scaledWidth = JR_d2i(real(((j_scaleX * real(j_width, 4))), 8))
                j_scaledHeight = JR_d2i(real(((j_scaleY * real(j_height, 4))), 8))
                j_scaledImage => this%f_imageScaleUtil%jm_scale_3(j_image, j_scaledWidth, j_scaledHeight)
            end if
        else
            j_scaledImage => j_image
        end if
        jresult => j_scaledImage
        return
  end function

  recursive subroutine AnimationFactoryImageScaleUtil_jm_processAdjust_1(this, j_baseImageAnimationFactory)
    class(AnimationFactoryImageScaleUtil), target :: this
    class(BaseImageAnimationFactory), target, optional :: j_baseImageAnimationFactory
    class(ScaleProperties), pointer :: j_scaleProperties
    class(AnimationFactoryInitializationVisitor), pointer :: j_animationFactoryInitializationVisitor
    real(4) :: j_scaleX
    real(4) :: j_scaleY
        j_scaleProperties => j_baseImageAnimationFactory%jm_getScalePropertiesP_0()
        if (((j_scaleProperties%f_scaleWidth /= 0) .and. (j_scaleProperties%f_scaleHeight /= 0))) then
            j_animationFactoryInitializationVisitor => j_baseImageAnimationFactory%jm_getAnimationFactoryInitializationVisitorP_0()
            j_scaleX = ((real(j_scaleProperties%f_scaleWidth, 4)) / (real(j_animationFactoryInitializationVisitor%f_width, 4)))
            j_scaleY = ((real(j_scaleProperties%f_scaleHeight, 4)) / (real(j_animationFactoryInitializationVisitor%f_height, 4)))
            if (((((j_scaleX == 1.0) .and. (j_scaleY == 1.0))) .or. (((j_scaleX == 0.0) .or. (j_scaleY == 0.0))))) then
                continue
            else
                j_animationFactoryInitializationVisitor%f_dx = JR_d2i(real(((real(j_animationFactoryInitializationVisitor%f_originalDx, 4) * j_scaleX)), 8))
                j_animationFactoryInitializationVisitor%f_dy = JR_d2i(real(((real(j_animationFactoryInitializationVisitor%f_originalDy, 4) * j_scaleY)), 8))
            end if
        else
            continue
        end if
  end subroutine
end module AnimationFactoryImageScaleUtil_m

