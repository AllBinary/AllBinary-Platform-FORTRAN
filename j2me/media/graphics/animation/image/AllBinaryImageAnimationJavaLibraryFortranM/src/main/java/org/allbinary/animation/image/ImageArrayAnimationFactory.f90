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
module ImageArrayAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehavior_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use ScaleProperties_m
  use ImageArrayAnimation_m
  use AdjustedImageArrayAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: ImageArrayAnimationFactory
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    type(JRef), allocatable :: f_imageArray(:)
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => ImageArrayAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => ImageArrayAnimationFactory_jm_setInitialScale_1
  end type


contains

  function ImageArrayAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayAnimationFactory)
      jresult => object
    end select
  end function

  recursive function ImageArrayAnimationFactory_jnew_4(j_imageArray, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    type(JRef) :: j_imageArray(:)
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(ImageArrayAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageArrayAnimationFactory'
    this%f_dx = 0
    this%f_dy = 0
    
    
        this%f_imageArray = j_imageArray
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive function ImageArrayAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(ImageArrayAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        if (((this%f_dx /= 0) .or. (this%f_dy /= 0))) then
            jresult => AdjustedImageArrayAnimation_jnew_4(this%f_imageArray, this%f_dx, this%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
            return
        else
            jresult => ImageArrayAnimation_jnew_2(this%f_imageArray, AnimationBehavior_jm_getInstance_0())
            return
        end if
  end function

  recursive subroutine ImageArrayAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(ImageArrayAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module ImageArrayAnimationFactory_m

