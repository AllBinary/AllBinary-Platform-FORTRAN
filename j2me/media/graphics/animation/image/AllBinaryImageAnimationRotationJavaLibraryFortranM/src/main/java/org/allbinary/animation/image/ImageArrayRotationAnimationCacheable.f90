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
module ImageArrayRotationAnimationCacheable_m
  use JR_m
  use AnimationBehavior_m
  use NullUtil_m
  use StringUtil_m
  use CacheableInterface_m
  use AdjustedImageArrayRotationAnimation_m
  use ImageArrayRotationAnimationInfo_m
  implicit none

  type, extends(AdjustedImageArrayRotationAnimation) :: ImageArrayRotationAnimationCacheable
  contains
    procedure :: jm_getKey_0 => ImageArrayRotationAnimationCacheable_jm_getKey_0
    procedure :: jm_toString_0 => ImageArrayRotationAnimationCacheable_jm_toString_0
  end type

  ! ImageArrayRotationAnimationCacheable used as a CacheableInterface
  type, extends(CacheableInterface) :: ImageArrayRotationAnimationCacheable_jas_CacheableInterface
    class(ImageArrayRotationAnimationCacheable), pointer :: jtarget => null()
  contains
    procedure :: jm_getKey_0 => ImageArrayRotationAnimationCacheable_jas_CacheableInterface_jm_getKey_0
  end type


contains

  function ImageArrayRotationAnimationCacheable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayRotationAnimationCacheable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayRotationAnimationCacheable)
      jresult => object
    end select
  end function

  function ImageArrayRotationAnimationCacheable_jas_CacheableInterface_jnew(object) result(jresult)
    class(ImageArrayRotationAnimationCacheable), target :: object
    class(ImageArrayRotationAnimationCacheable_jas_CacheableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ImageArrayRotationAnimationCacheable'
    jresult%jtarget => object
  end function

  recursive function ImageArrayRotationAnimationCacheable_jas_CacheableInterface_jm_getKey_0(this) result(jresult)
    class(ImageArrayRotationAnimationCacheable_jas_CacheableInterface), target :: this
    class(JObject), pointer :: jresult
    jresult => this%jtarget%jm_getKey_0()
  end function

  recursive function ImageArrayRotationAnimationCacheable_jnew_2(j_anyType, j_animationBehavior) result(this)
    class(JObject), target, optional :: j_anyType
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageArrayRotationAnimationCacheable), pointer :: this
    allocate(this)
    this%jclass = 'ImageArrayRotationAnimationCacheable'
        continue ! super()
  end function

  recursive function ImageArrayRotationAnimationCacheable_jm_getKey_0(this) result(jresult)
    class(ImageArrayRotationAnimationCacheable), target :: this
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult => jtemp1%f_NULL_OBJECT
        return
  end function

  recursive function ImageArrayRotationAnimationCacheable_jm_toString_0(this) result(jresult)
    class(ImageArrayRotationAnimationCacheable), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult = jtemp2%f_EMPTY_STRING
        return
  end function
end module ImageArrayRotationAnimationCacheable_m

