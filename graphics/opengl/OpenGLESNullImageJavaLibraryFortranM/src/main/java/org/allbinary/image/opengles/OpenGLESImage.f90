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
module OpenGLESImage_m
  use JR_m
  use GL_m
  use GL10_m
  use NullImage_m
  use PlatformBitmapBase_m
  use PlatformBitmapBaseFactory_m
  use PlatformTextureBaseFactory_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use OpenGLSurfaceChangedInterface_m
  use OpenGLESImageProperties_m
  use OpenGLESImageProcessor_m
  use OpenGLESImageTranslate_m
  implicit none

  type, extends(Image) :: OpenGLESImage
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(PlatformTextureBaseFactory), pointer :: f_textureFactory => null()
    class(PlatformBitmapBase), pointer :: f_openGLBitmap => null()
    class(OpenGLESImageProperties), pointer :: f_openGLESImageProperties => null()
    class(OpenGLESImageProcessor), pointer :: f_imageProcessor => null()
    class(OpenGLESImageTranslate), pointer :: f_openGLESImageTranslate => null()
  contains
    procedure :: jm_set_1 => OpenGLESImage_jm_set_1
    procedure :: jm_initTexture_1 => OpenGLESImage_jm_initTexture_1
    procedure :: jm_drawRegion_9 => OpenGLESImage_jm_drawRegion_9
    procedure :: jm_draw_4 => OpenGLESImage_jm_draw_4
    procedure :: jm_getType_0 => OpenGLESImage_jm_getType_0
  end type

  ! OpenGLESImage used as a OpenGLSurfaceChangedInterface
  type, extends(OpenGLSurfaceChangedInterface) :: OpenGLESImage_jas_OpenGLSurfaceChangedInterface
    class(OpenGLESImage), pointer :: jtarget => null()
  contains
    procedure :: jm_set_1 => OpenGLESImage_jas_OpenGLSurfaceChangedInterface_jm_set_1
  end type

  class(OpenGLESImage), pointer, save :: OpenGLESImage_jcell_NULL_OPENGL_IMAGE => null()
  logical, save :: OpenGLESImage_jset_NULL_OPENGL_IMAGE = .false.
  class(BasicArrayList), pointer, save :: OpenGLESImage_jcell_texture2dList => null()
  logical, save :: OpenGLESImage_jset_texture2dList = .false.
  integer(4), save :: OpenGLESImage_jcell_TYPE
  logical, save :: OpenGLESImage_jset_TYPE = .false.

contains

  function OpenGLESImage_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESImage), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESImage)
      jresult => object
    end select
  end function

  function OpenGLESImage_jas_OpenGLSurfaceChangedInterface_jnew(object) result(jresult)
    class(OpenGLESImage), target :: object
    class(OpenGLESImage_jas_OpenGLSurfaceChangedInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'OpenGLESImage'
    jresult%jtarget => object
  end function

  recursive subroutine OpenGLESImage_jas_OpenGLSurfaceChangedInterface_jm_set_1(this, j_gl)
    class(OpenGLESImage_jas_OpenGLSurfaceChangedInterface), target :: this
    class(GL), target, optional :: j_gl
    call this%jtarget%jm_set_1(j_gl)
  end subroutine

  function OpenGLESImage_jstatic_NULL_OPENGL_IMAGE() result(jresult)
    class(OpenGLESImage), pointer :: jresult
    if (.not. OpenGLESImage_jset_NULL_OPENGL_IMAGE) then
      OpenGLESImage_jset_NULL_OPENGL_IMAGE = .true.
      OpenGLESImage_jcell_NULL_OPENGL_IMAGE => OpenGLESImage_jnew_3(NullImage_jstatic_NULL_IMAGE(), PlatformBitmapBaseFactory_jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY(), PlatformTextureBaseFactory_jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY())
    end if
    jresult => OpenGLESImage_jcell_NULL_OPENGL_IMAGE
  end function

  subroutine OpenGLESImage_jsetstatic_NULL_OPENGL_IMAGE(jvalue)
    class(OpenGLESImage), target, optional :: jvalue
    OpenGLESImage_jset_NULL_OPENGL_IMAGE = .true.
    if (present(jvalue)) then
      OpenGLESImage_jcell_NULL_OPENGL_IMAGE => jvalue
    else
      OpenGLESImage_jcell_NULL_OPENGL_IMAGE => null()
    end if
  end subroutine

  function OpenGLESImage_jstatic_texture2dList() result(jresult)
    class(BasicArrayList), pointer :: jresult
    if (.not. OpenGLESImage_jset_texture2dList) then
      OpenGLESImage_jset_texture2dList = .true.
      OpenGLESImage_jcell_texture2dList => BasicArrayListD_jnew_0()
    end if
    jresult => OpenGLESImage_jcell_texture2dList
  end function

  subroutine OpenGLESImage_jsetstatic_texture2dList(jvalue)
    class(BasicArrayList), target, optional :: jvalue
    OpenGLESImage_jset_texture2dList = .true.
    if (present(jvalue)) then
      OpenGLESImage_jcell_texture2dList => jvalue
    else
      OpenGLESImage_jcell_texture2dList => null()
    end if
  end subroutine

  function OpenGLESImage_jstatic_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. OpenGLESImage_jset_TYPE) then
      OpenGLESImage_jset_TYPE = .true.
      OpenGLESImage_jcell_TYPE = 4
    end if
    jresult = OpenGLESImage_jcell_TYPE
  end function

  subroutine OpenGLESImage_jsetstatic_TYPE(jvalue)
    integer(4), value :: jvalue
    OpenGLESImage_jset_TYPE = .true.
    OpenGLESImage_jcell_TYPE = jvalue
  end subroutine

  recursive function OpenGLESImage_jnew_3(j_image, j_bitmapFactory, j_textureFactory) result(this)
    class(Image), target, optional :: j_image
    class(PlatformBitmapBaseFactory), target, optional :: j_bitmapFactory
    class(PlatformTextureBaseFactory), target, optional :: j_textureFactory
    class(OpenGLESImage), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESImage'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    this%f_openGLESImageProperties => OpenGLESImageProperties_jnew_0()
    this%f_imageProcessor => OpenGLESImageProcessor_jm_getInstance_0()
    this%f_openGLESImageTranslate => OpenGLESImageTranslate_jm_getInstance_0()
        this%f_openGLBitmap => j_bitmapFactory%jm_createBitmap_1(j_image)
        this%f_textureFactory => j_textureFactory
  end function

  recursive subroutine OpenGLESImage_jm_set_1(this, j_gl)
    class(OpenGLESImage), target :: this
    class(GL), target, optional :: j_gl
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function OpenGLESImage_jm_initTexture_1(this, j_gl) result(jresult)
    class(OpenGLESImage), target :: this
    class(GL10), target, optional :: j_gl
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine OpenGLESImage_jm_drawRegion_9(this, j_gl, j_viewHeight, j_x_src, j_y_src, j_width, j_height, j_x, j_y, j_z)
    class(OpenGLESImage), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_viewHeight
    real(4), value :: j_x_src
    real(4), value :: j_y_src
    real(4), value :: j_width
    real(4), value :: j_height
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    continue
  end subroutine

  recursive subroutine OpenGLESImage_jm_draw_4(this, j_gl, j_x, j_y, j_z)
    class(OpenGLESImage), target :: this
    class(GL10), target, optional :: j_gl
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    continue
  end subroutine

  recursive function OpenGLESImage_jm_getType_0(this) result(jresult)
    class(OpenGLESImage), target :: this
    integer(4) :: jresult
        jresult = OpenGLESImage_jstatic_TYPE()
        return
  end function
end module OpenGLESImage_m

