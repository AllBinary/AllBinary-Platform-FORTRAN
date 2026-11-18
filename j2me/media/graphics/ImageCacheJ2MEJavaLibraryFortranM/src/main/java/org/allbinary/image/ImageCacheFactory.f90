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
! package org.allbinary.image
module ImageCacheFactory_m
  use JR_m
  use ImageCache_m
  implicit none

  type, extends(JObject) :: ImageCacheFactory
  end type

  class(ImageCache), pointer, save :: ImageCacheFactory_jcell_IMAGE_CACHE => null()
  logical, save :: ImageCacheFactory_jset_IMAGE_CACHE = .false.

contains

  function ImageCacheFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCacheFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCacheFactory)
      jresult => object
    end select
  end function

  function ImageCacheFactory_jstatic_IMAGE_CACHE() result(jresult)
    class(ImageCache), pointer :: jresult
    if (.not. ImageCacheFactory_jset_IMAGE_CACHE) then
      ImageCacheFactory_jset_IMAGE_CACHE = .true.
      ImageCacheFactory_jcell_IMAGE_CACHE => ImageCache_jnew_0()
    end if
    jresult => ImageCacheFactory_jcell_IMAGE_CACHE
  end function

  subroutine ImageCacheFactory_jsetstatic_IMAGE_CACHE(jvalue)
    class(ImageCache), target, optional :: jvalue
    ImageCacheFactory_jset_IMAGE_CACHE = .true.
    if (present(jvalue)) then
      ImageCacheFactory_jcell_IMAGE_CACHE => jvalue
    else
      ImageCacheFactory_jcell_IMAGE_CACHE => null()
    end if
  end subroutine

  function ImageCacheFactory_jnew_0() result(this)
    class(ImageCacheFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageCacheFactory'
  end function

  recursive function ImageCacheFactory_jm_getInstance_0() result(jresult)
    class(ImageCache), pointer :: jresult
        jresult => ImageCacheFactory_jstatic_IMAGE_CACHE()
        return
  end function

  recursive subroutine ImageCacheFactory_jm_init_0()
    continue
  end subroutine
end module ImageCacheFactory_m

