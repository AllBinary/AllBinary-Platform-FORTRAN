! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles.shader
module ShaderOpenGLProcessor_m
  use JR_m
  use GL10_m
  use OpenGLProcessor_m
  implicit none

  type, extends(OpenGLProcessor) :: ShaderOpenGLProcessor
  contains
    procedure :: jm_process0_1 => ShaderOpenGLProcessor_jm_process0_1
    procedure :: jm_process1_1 => ShaderOpenGLProcessor_jm_process1_1
    procedure :: jm_process_1 => ShaderOpenGLProcessor_jm_process_1
    procedure :: jm_process2_1 => ShaderOpenGLProcessor_jm_process2_1
    procedure :: jm_process3_1 => ShaderOpenGLProcessor_jm_process3_1
  end type


contains

  function ShaderOpenGLProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShaderOpenGLProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShaderOpenGLProcessor)
      jresult => object
    end select
  end function

  recursive function ShaderOpenGLProcessor_jnew_0() result(this)
    class(ShaderOpenGLProcessor), pointer :: this
    allocate(this)
    this%jclass = 'ShaderOpenGLProcessor'
        continue
  end function

  recursive subroutine ShaderOpenGLProcessor_jm_process0_1(this, j_gl)
    class(ShaderOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine ShaderOpenGLProcessor_jm_process1_1(this, j_gl)
    class(ShaderOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine ShaderOpenGLProcessor_jm_process_1(this, j_gl)
    class(ShaderOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine ShaderOpenGLProcessor_jm_process2_1(this, j_gl)
    class(ShaderOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine

  recursive subroutine ShaderOpenGLProcessor_jm_process3_1(this, j_gl)
    class(ShaderOpenGLProcessor), target :: this
    class(GL10), target, optional :: j_gl
    continue
  end subroutine
end module ShaderOpenGLProcessor_m

function ShaderOpenGLProcessor_jnew_0_jext() result(this)
  use ShaderOpenGLProcessor_m, only: JObject, ShaderOpenGLProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ShaderOpenGLProcessor_jnew_0()
end function

