! Generated Code Do Not Modify
! package org.allbinary.device
module OpenGLESGraphics_m
  use JR_m
  use GL_m
  use GL10_m
  use FontDebugBase_m
  use OpenGLSurfaceChangedInterface_m
  use CommonStrings_m
  use GraphicsInterface_m
  use NullGL10_m
  implicit none

  type, extends(OpenGLSurfaceChangedInterface) :: OpenGLESGraphics
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(GL10), pointer :: f_gl => null()
  contains
    procedure :: jm_updateGL_1 => OpenGLESGraphics_jm_updateGL_1
    procedure :: jm_set_1 => OpenGLESGraphics_jm_set_1
    procedure :: jm_init_0 => OpenGLESGraphics_jm_init_0
    procedure :: jm_update_0 => OpenGLESGraphics_jm_update_0
    procedure :: jm_setOrthoginalMode_0 => OpenGLESGraphics_jm_setOrthoginalMode_0
    procedure :: jm_setCameraMode_0 => OpenGLESGraphics_jm_setCameraMode_0
    procedure :: jm_getGlP_0 => OpenGLESGraphics_jm_getGlP_0
    procedure :: jm_setFontDebug_2 => OpenGLESGraphics_jm_setFontDebug_2
  end type

  ! OpenGLESGraphics used as a GraphicsInterface
  type, extends(GraphicsInterface) :: OpenGLESGraphics_jas_GraphicsInterface
    class(OpenGLESGraphics), pointer :: jtarget => null()
  contains
    procedure :: jm_setFontDebug_2 => OpenGLESGraphics_jas_GraphicsInterface_jm_setFontDebug_2
  end type


contains

  function OpenGLESGraphics_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESGraphics), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESGraphics)
      jresult => object
    end select
  end function

  function OpenGLESGraphics_jas_GraphicsInterface_jnew(object) result(jresult)
    class(OpenGLESGraphics), target :: object
    class(OpenGLESGraphics_jas_GraphicsInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'OpenGLESGraphics'
    jresult%jtarget => object
  end function

  recursive subroutine OpenGLESGraphics_jas_GraphicsInterface_jm_setFontDebug_2(this, j_font, j_fontDebug)
    class(OpenGLESGraphics_jas_GraphicsInterface), target :: this
    class(Font), target, optional :: j_font
    class(FontDebugBase), target, optional :: j_fontDebug
    call this%jtarget%jm_setFontDebug_2(j_font, j_fontDebug)
  end subroutine

  recursive function OpenGLESGraphics_jnew_0() result(this)
    class(OpenGLESGraphics), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESGraphics'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_gl => NullGL10_jstatic_NULL_GL10()
        continue
  end function

  recursive subroutine OpenGLESGraphics_jm_updateGL_1(this, j_gl)
    class(OpenGLESGraphics), target :: this
    class(GL), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine OpenGLESGraphics_jm_set_1(this, j_gl)
    class(OpenGLESGraphics), target :: this
    class(GL), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine OpenGLESGraphics_jm_init_0(this)
    class(OpenGLESGraphics), target :: this
    continue
  end subroutine

  recursive subroutine OpenGLESGraphics_jm_update_0(this)
    class(OpenGLESGraphics), target :: this
    continue
  end subroutine

  recursive subroutine OpenGLESGraphics_jm_setOrthoginalMode_0(this)
    class(OpenGLESGraphics), target :: this
    continue
  end subroutine

  recursive subroutine OpenGLESGraphics_jm_setCameraMode_0(this)
    class(OpenGLESGraphics), target :: this
    continue
  end subroutine

  recursive function OpenGLESGraphics_jm_getGlP_0(this) result(jresult)
    class(OpenGLESGraphics), target :: this
    class(GL10), pointer :: jresult
        jresult => this%f_gl
        return
  end function

  recursive subroutine OpenGLESGraphics_jm_setFontDebug_2(this, j_font, j_fontDebug)
    class(OpenGLESGraphics), target :: this
    class(Font), target, optional :: j_font
    class(FontDebugBase), target, optional :: j_fontDebug
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine
end module OpenGLESGraphics_m

