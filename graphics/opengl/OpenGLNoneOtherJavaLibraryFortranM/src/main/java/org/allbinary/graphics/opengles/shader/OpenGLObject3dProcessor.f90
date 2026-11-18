! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles.shader
module OpenGLObject3dProcessor_m
  use JR_m
  use GL10_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: OpenGLObject3dProcessor
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_process_2 => OpenGLObject3dProcessor_jm_process_2
    procedure :: jm_process_3 => OpenGLObject3dProcessor_jm_process_3
  end type


contains

  function OpenGLObject3dProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLObject3dProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLObject3dProcessor)
      jresult => object
    end select
  end function

  function OpenGLObject3dProcessor_jnew_0() result(this)
    class(OpenGLObject3dProcessor), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLObject3dProcessor'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive subroutine OpenGLObject3dProcessor_jm_process_2(this, j_gl, j_object3d)
    class(OpenGLObject3dProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    continue
  end subroutine

  recursive subroutine OpenGLObject3dProcessor_jm_process_3(this, j_gl, j_object3d, j_index)
    class(OpenGLObject3dProcessor), target :: this
    class(GL10), target, optional :: j_gl
    class(JObject), target, optional :: j_object3d
    integer(4), value :: j_index
    continue
  end subroutine
end module OpenGLObject3dProcessor_m

