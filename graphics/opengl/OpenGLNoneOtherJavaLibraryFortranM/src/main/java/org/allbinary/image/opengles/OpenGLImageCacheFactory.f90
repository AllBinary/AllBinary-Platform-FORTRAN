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
! package org.allbinary.image.opengles
module OpenGLImageCacheFactory_m
  use JR_m
  use ImageCache_m
  implicit none

  type, extends(JObject) :: OpenGLImageCacheFactory
  end type

  class(ImageCache), pointer, save :: OpenGLImageCacheFactory_jcell_IMAGE_CACHE => null()
  logical, save :: OpenGLImageCacheFactory_jset_IMAGE_CACHE = .false.

contains

  function OpenGLImageCacheFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLImageCacheFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLImageCacheFactory)
      jresult => object
    end select
  end function

  function OpenGLImageCacheFactory_jstatic_IMAGE_CACHE() result(jresult)
    class(ImageCache), pointer :: jresult
    if (.not. OpenGLImageCacheFactory_jset_IMAGE_CACHE) then
      OpenGLImageCacheFactory_jset_IMAGE_CACHE = .true.
      OpenGLImageCacheFactory_jcell_IMAGE_CACHE => ImageCache_jstatic_NULL_IMAGE_CACHE()
    end if
    jresult => OpenGLImageCacheFactory_jcell_IMAGE_CACHE
  end function

  subroutine OpenGLImageCacheFactory_jsetstatic_IMAGE_CACHE(jvalue)
    class(ImageCache), target, optional :: jvalue
    OpenGLImageCacheFactory_jset_IMAGE_CACHE = .true.
    if (present(jvalue)) then
      OpenGLImageCacheFactory_jcell_IMAGE_CACHE => jvalue
    else
      OpenGLImageCacheFactory_jcell_IMAGE_CACHE => null()
    end if
  end subroutine

  function OpenGLImageCacheFactory_jnew_0() result(this)
    class(OpenGLImageCacheFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLImageCacheFactory'
  end function

  recursive function OpenGLImageCacheFactory_jm_getInstance_0() result(jresult)
    class(ImageCache), pointer :: jresult
        jresult => OpenGLImageCacheFactory_jstatic_IMAGE_CACHE()
        return
  end function

  recursive subroutine OpenGLImageCacheFactory_jm_init_0()
        if ((.not. associated(OpenGLImageCacheFactory_jstatic_IMAGE_CACHE()))) then
            continue
        end if
  end subroutine
end module OpenGLImageCacheFactory_m

