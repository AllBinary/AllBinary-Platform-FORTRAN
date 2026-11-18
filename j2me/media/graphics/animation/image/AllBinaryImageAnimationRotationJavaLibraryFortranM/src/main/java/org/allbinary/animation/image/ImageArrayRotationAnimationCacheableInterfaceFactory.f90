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
module ImageArrayRotationAnimationCacheableInterfaceFactory_m
  use JR_m
  use AnimationBehavior_m
  use CacheableInterface_m
  use CacheableInterfaceFactoryInterface_m
  use ImageArrayRotationAnimationCacheable_m
  implicit none

  type, extends(CacheableInterfaceFactoryInterface) :: ImageArrayRotationAnimationCacheableInterfaceFactory
  contains
    procedure :: jm_getInstance_1 => ImageArrayRotationAnimationCacheableInterfaceFactory_jm_getInstance_1
  end type


contains

  function ImageArrayRotationAnimationCacheableInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayRotationAnimationCacheableInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayRotationAnimationCacheableInterfaceFactory)
      jresult => object
    end select
  end function

  function ImageArrayRotationAnimationCacheableInterfaceFactory_jnew_0() result(this)
    class(ImageArrayRotationAnimationCacheableInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageArrayRotationAnimationCacheableInterfaceFactory'
  end function

  recursive function ImageArrayRotationAnimationCacheableInterfaceFactory_jm_getInstance_1(this, j_key) result(jresult)
    class(ImageArrayRotationAnimationCacheableInterfaceFactory), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
        jresult => ImageArrayRotationAnimationCacheable_jnew_2(j_key, AnimationBehavior_jm_getInstance_0())
        return
  end function
end module ImageArrayRotationAnimationCacheableInterfaceFactory_m

