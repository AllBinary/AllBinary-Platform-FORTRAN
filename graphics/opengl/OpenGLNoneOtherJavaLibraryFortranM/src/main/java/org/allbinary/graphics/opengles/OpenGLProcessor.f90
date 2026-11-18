! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles
module OpenGLProcessor_m
  use JR_m
  use GL10_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: OpenGLProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_process_1 => OpenGLProcessor_jm_process_1
  end type


contains

  function OpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLProcessor)
      jresult => object
    end select
  end function

  function OpenGLProcessor_jnew_0() result(this)
    class(OpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive subroutine OpenGLProcessor_jm_process_1(this, j_gl)
    class(OpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine
end module OpenGLProcessor_m

