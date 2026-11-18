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
module ImageAnimationSingletonInterfaceFactory_m
  use JR_m
  use Animation_m
  use AnimationBehavior_m
  use SingletonAnimationInterfaceFactory_m
  use AnimationFrameToImageUtil_m
  use ImageAnimation_m
  implicit none

  type, extends(SingletonAnimationInterfaceFactory) :: ImageAnimationSingletonInterfaceFactory
  end type


contains

  function ImageAnimationSingletonInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageAnimationSingletonInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageAnimationSingletonInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function ImageAnimationSingletonInterfaceFactory_jnew_3(j_animationInterface, j_width, j_height) result(this)
    class(Animation), target, optional :: j_animationInterface
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(ImageAnimationSingletonInterfaceFactory), pointer :: this
    class(AnimationFrameToImageUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ImageAnimationSingletonInterfaceFactory'
        jtemp1 => AnimationFrameToImageUtil_jm_getInstance_0()
        continue ! super()
  end function
end module ImageAnimationSingletonInterfaceFactory_m

