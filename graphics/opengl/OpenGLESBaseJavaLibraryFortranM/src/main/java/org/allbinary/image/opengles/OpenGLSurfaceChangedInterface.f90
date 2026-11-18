! Generated Code Do Not Modify
! package org.allbinary.image.opengles
module OpenGLSurfaceChangedInterface_m
  use JR_m
  use GL_m
  implicit none

  type, extends(JObject) :: OpenGLSurfaceChangedInterface
  contains
    procedure :: jm_set_1 => OpenGLSurfaceChangedInterface_jm_set_1
  end type


contains

  function OpenGLSurfaceChangedInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLSurfaceChangedInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLSurfaceChangedInterface)
      jresult => object
    end select
  end function

  function OpenGLSurfaceChangedInterface_jnew_0() result(this)
    class(OpenGLSurfaceChangedInterface), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLSurfaceChangedInterface'
  end function

  recursive subroutine OpenGLSurfaceChangedInterface_jm_set_1(this, j_gl)
    class(OpenGLSurfaceChangedInterface), target :: this
    class(GL), target, optional :: j_gl
    error stop 'AbstractMethodError: OpenGLSurfaceChangedInterface.set'
  end subroutine
end module OpenGLSurfaceChangedInterface_m

