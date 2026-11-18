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
! package org.allbinary.graphics.opengles
module OpenGLFeatureFactory_m
  use JR_m
  use OpenGLFeature_m
  implicit none

  type, extends(JObject) :: OpenGLFeatureFactory
    class(OpenGLFeature), pointer :: f_OPENGL_OPTIONS => null()
    class(OpenGLFeature), pointer :: f_OPENGL => null()
    class(OpenGLFeature), pointer :: f_OPENGL_SURFACE_VIEW => null()
    class(OpenGLFeature), pointer :: f_OPENGL_2D => null()
    class(OpenGLFeature), pointer :: f_OPENGL_3D => null()
    class(OpenGLFeature), pointer :: f_OPENGL_2D_AND_3D => null()
    class(OpenGLFeature), pointer :: f_OPENGL_AUTO_SELECT => null()
    class(OpenGLFeature), pointer :: f_OPENGL_MINIMUM => null()
    class(OpenGLFeature), pointer :: f_OPENGL_AS_GAME_THREAD => null()
    class(OpenGLFeature), pointer :: f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS => null()
    class(OpenGLFeature), pointer :: f_IMAGE_COLOR_DEPTH_4444 => null()
    class(OpenGLFeature), pointer :: f_IMAGE_COLOR_DEPTH_8888 => null()
    class(OpenGLFeature), pointer :: f_IMAGE_COLOR_DEPTH_565 => null()
    class(OpenGLFeature), pointer :: f_OPENGL_COLOR_DEPTH_4444 => null()
    class(OpenGLFeature), pointer :: f_OPENGL_COLOR_DEPTH_8888 => null()
    class(OpenGLFeature), pointer :: f_OPENGL_COLOR_DEPTH_565 => null()
    class(OpenGLFeature), pointer :: f_OPENGL_DRAW_TEXTURE => null()
    class(OpenGLFeature), pointer :: f_OPENGL_VERTEX_BUFFER_OBJECT => null()
    class(OpenGLFeature), pointer :: f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR => null()
    class(OpenGLFeature), pointer :: f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR => null()
    class(OpenGLFeature), pointer :: f_OPENGL_SIMPLE_TEXTURE_PROCESSOR => null()
    class(OpenGLFeature), pointer :: f_OPENGL_COMPLEX_TEXTURE_PROCESSOR => null()
  end type

  class(OpenGLFeatureFactory), pointer, save :: OpenGLFeatureFactory_jcell_instance => null()
  logical, save :: OpenGLFeatureFactory_jset_instance = .false.

contains

  function OpenGLFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLFeatureFactory)
      jresult => object
    end select
  end function

  function OpenGLFeatureFactory_jstatic_instance() result(jresult)
    class(OpenGLFeatureFactory), pointer :: jresult
    if (.not. OpenGLFeatureFactory_jset_instance) then
      OpenGLFeatureFactory_jset_instance = .true.
      OpenGLFeatureFactory_jcell_instance => OpenGLFeatureFactory_jnew_0()
    end if
    jresult => OpenGLFeatureFactory_jcell_instance
  end function

  subroutine OpenGLFeatureFactory_jsetstatic_instance(jvalue)
    class(OpenGLFeatureFactory), target, optional :: jvalue
    OpenGLFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLFeatureFactory_jcell_instance => jvalue
    else
      OpenGLFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function OpenGLFeatureFactory_jnew_0() result(this)
    class(OpenGLFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLFeatureFactory'
    this%f_OPENGL_OPTIONS => OpenGLFeature_jnew_1('OpenGL Options')
    this%f_OPENGL => OpenGLFeature_jnew_1('OpenGL')
    this%f_OPENGL_SURFACE_VIEW => OpenGLFeature_jnew_1('GLSurfaceView')
    this%f_OPENGL_2D => OpenGLFeature_jnew_1('OpenGL 2D')
    this%f_OPENGL_3D => OpenGLFeature_jnew_1('OpenGL 3D')
    this%f_OPENGL_2D_AND_3D => OpenGLFeature_jnew_1('OpenGL 2D/3D')
    this%f_OPENGL_AUTO_SELECT => OpenGLFeature_jnew_1('Auto Select')
    this%f_OPENGL_MINIMUM => OpenGLFeature_jnew_1('Minimum')
    this%f_OPENGL_AS_GAME_THREAD => OpenGLFeature_jnew_1('As game thread')
    this%f_OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS => OpenGLFeature_jnew_1('As different threads')
    this%f_IMAGE_COLOR_DEPTH_4444 => OpenGLFeature_jnew_1('4444')
    this%f_IMAGE_COLOR_DEPTH_8888 => OpenGLFeature_jnew_1('8888')
    this%f_IMAGE_COLOR_DEPTH_565 => OpenGLFeature_jnew_1('565')
    this%f_OPENGL_COLOR_DEPTH_4444 => OpenGLFeature_jnew_1('4444')
    this%f_OPENGL_COLOR_DEPTH_8888 => OpenGLFeature_jnew_1('8888')
    this%f_OPENGL_COLOR_DEPTH_565 => OpenGLFeature_jnew_1('565')
    this%f_OPENGL_DRAW_TEXTURE => OpenGLFeature_jnew_1('GL_OES_draw_texture')
    this%f_OPENGL_VERTEX_BUFFER_OBJECT => OpenGLFeature_jnew_1('vertex_buffer_object')
    this%f_OPENGL_SIMPLE_OBJECT3D_PROCESSOR => OpenGLFeature_jnew_1('Simple Object3d Processor')
    this%f_OPENGL_COMPLEX_OBJECT3D_PROCESSOR => OpenGLFeature_jnew_1('Complex Object3d Processor')
    this%f_OPENGL_SIMPLE_TEXTURE_PROCESSOR => OpenGLFeature_jnew_1('Simple Texture Processor')
    this%f_OPENGL_COMPLEX_TEXTURE_PROCESSOR => OpenGLFeature_jnew_1('Complex Texture Processor')
        continue
  end function

  recursive function OpenGLFeatureFactory_jm_getInstance_0() result(jresult)
    class(OpenGLFeatureFactory), pointer :: jresult
        jresult => OpenGLFeatureFactory_jstatic_instance()
        return
  end function
end module OpenGLFeatureFactory_m

