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
module ImageArrayRotationAnimationPool_m
  use JR_m
  use BasicArrayListResetablePool_m
  use CacheableInterface_m
  use CacheableInterfaceFactoryInterface_m
  use PoolInterface_m
  use ImageArrayRotationAnimationCacheableInterfaceFactory_m
  use ImageArrayRotationAnimationInfo_m
  use ImageArrayRotationAnimationCacheable_m
  implicit none

  type, extends(BasicArrayListResetablePool) :: ImageArrayRotationAnimationPool
  contains
    procedure :: jm_remove_1 => ImageArrayRotationAnimationPool_jm_remove_1
  end type

  class(PoolInterface), pointer, save :: ImageArrayRotationAnimationPool_jcell_IMAGE_ROTATION_ANIMATION_POOL => null()
  logical, save :: ImageArrayRotationAnimationPool_jset_IMAGE_ROTATION_ANIMATION_POOL = .false.

contains

  function ImageArrayRotationAnimationPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArrayRotationAnimationPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArrayRotationAnimationPool)
      jresult => object
    end select
  end function

  function ImageArrayRotationAnimationPool_jstatic_IMAGE_ROTATION_ANIMATION_POOL() result(jresult)
    class(PoolInterface), pointer :: jresult
    if (.not. ImageArrayRotationAnimationPool_jset_IMAGE_ROTATION_ANIMATION_POOL) then
      ImageArrayRotationAnimationPool_jset_IMAGE_ROTATION_ANIMATION_POOL = .true.
      ImageArrayRotationAnimationPool_jcell_IMAGE_ROTATION_ANIMATION_POOL => ImageArrayRotationAnimationPool_jnew_1(ImageArrayRotationAnimationCacheableInterfaceFactory_jnew_0())
    end if
    jresult => ImageArrayRotationAnimationPool_jcell_IMAGE_ROTATION_ANIMATION_POOL
  end function

  subroutine ImageArrayRotationAnimationPool_jsetstatic_IMAGE_ROTATION_ANIMATION_POOL(jvalue)
    class(PoolInterface), target, optional :: jvalue
    ImageArrayRotationAnimationPool_jset_IMAGE_ROTATION_ANIMATION_POOL = .true.
    if (present(jvalue)) then
      ImageArrayRotationAnimationPool_jcell_IMAGE_ROTATION_ANIMATION_POOL => jvalue
    else
      ImageArrayRotationAnimationPool_jcell_IMAGE_ROTATION_ANIMATION_POOL => null()
    end if
  end subroutine

  recursive function ImageArrayRotationAnimationPool_jnew_1(j_cacheableInterfaceFactoryInterface) result(this)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(ImageArrayRotationAnimationPool), pointer :: this
    allocate(this)
    this%jclass = 'ImageArrayRotationAnimationPool'
        continue ! super()
  end function

  recursive function ImageArrayRotationAnimationPool_jm_getInstance_0() result(jresult)
    class(PoolInterface), pointer :: jresult
        jresult => ImageArrayRotationAnimationPool_jstatic_IMAGE_ROTATION_ANIMATION_POOL()
        return
  end function

  recursive function ImageArrayRotationAnimationPool_jm_remove_1(this, j_key) result(jresult)
    class(ImageArrayRotationAnimationPool), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    class(CacheableInterface), pointer :: j_cacheableInterface
    class(ImageArrayRotationAnimationInfo), pointer :: j_allBinaryImageRotationAnimationInfo
    class(ImageArrayRotationAnimationCacheable), pointer :: j_imageArrayRotationAnimationCacheable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_cacheableInterface => this%BasicArrayListResetablePool%jm_remove_1(j_key)
        j_allBinaryImageRotationAnimationInfo => ImageArrayRotationAnimationInfo_jcast(j_key)
        j_imageArrayRotationAnimationCacheable => ImageArrayRotationAnimationCacheable_jcast(j_cacheableInterface)
        call j_imageArrayRotationAnimationCacheable%jm_setImageArray_1(j_allBinaryImageRotationAnimationInfo%jm_getImageArray_0())
        jresult => j_cacheableInterface
        return
  end function
end module ImageArrayRotationAnimationPool_m

