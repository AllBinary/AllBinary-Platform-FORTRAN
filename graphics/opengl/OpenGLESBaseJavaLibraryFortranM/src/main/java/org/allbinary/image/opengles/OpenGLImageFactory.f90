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
module OpenGLImageFactory_m
  use JR_m
  use PlatformBitmapBaseFactory_m
  use PlatformTextureBaseFactory_m
  implicit none

  type, extends(JObject) :: OpenGLImageFactory
  contains
    procedure :: jm_getInstance_3 => OpenGLImageFactory_jm_getInstance_3
  end type

  class(OpenGLImageFactory), pointer, save :: OpenGLImageFactory_jcell_NULL_OPENGL_IMAGE_FACTORY => null()
  logical, save :: OpenGLImageFactory_jset_NULL_OPENGL_IMAGE_FACTORY = .false.

contains

  function OpenGLImageFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLImageFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLImageFactory)
      jresult => object
    end select
  end function

  function OpenGLImageFactory_jstatic_NULL_OPENGL_IMAGE_FACTORY() result(jresult)
    class(OpenGLImageFactory), pointer :: jresult
    if (.not. OpenGLImageFactory_jset_NULL_OPENGL_IMAGE_FACTORY) then
      OpenGLImageFactory_jset_NULL_OPENGL_IMAGE_FACTORY = .true.
      OpenGLImageFactory_jcell_NULL_OPENGL_IMAGE_FACTORY => OpenGLImageFactory_jnew_0()
    end if
    jresult => OpenGLImageFactory_jcell_NULL_OPENGL_IMAGE_FACTORY
  end function

  subroutine OpenGLImageFactory_jsetstatic_NULL_OPENGL_IMAGE_FACTORY(jvalue)
    class(OpenGLImageFactory), target, optional :: jvalue
    OpenGLImageFactory_jset_NULL_OPENGL_IMAGE_FACTORY = .true.
    if (present(jvalue)) then
      OpenGLImageFactory_jcell_NULL_OPENGL_IMAGE_FACTORY => jvalue
    else
      OpenGLImageFactory_jcell_NULL_OPENGL_IMAGE_FACTORY => null()
    end if
  end subroutine

  function OpenGLImageFactory_jnew_0() result(this)
    class(OpenGLImageFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLImageFactory'
  end function

  recursive function OpenGLImageFactory_jm_getInstance_3(this, j_image, j_bitmapFactory, j_textureFactory) result(jresult)
    class(OpenGLImageFactory), target :: this
    class(Image), target, optional :: j_image
    class(PlatformBitmapBaseFactory), target, optional :: j_bitmapFactory
    class(PlatformTextureBaseFactory), target, optional :: j_textureFactory
    class(Image), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module OpenGLImageFactory_m

