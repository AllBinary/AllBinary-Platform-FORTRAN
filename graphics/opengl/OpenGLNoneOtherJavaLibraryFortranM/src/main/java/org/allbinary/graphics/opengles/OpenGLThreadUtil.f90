! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles
module OpenGLThreadUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLThreadUtil
  contains
    procedure :: jm_set_1 => OpenGLThreadUtil_jm_set_1
    procedure :: jm_onPause_0 => OpenGLThreadUtil_jm_onPause_0
    procedure :: jm_onResume_0 => OpenGLThreadUtil_jm_onResume_0
  end type

  class(OpenGLThreadUtil), pointer, save :: OpenGLThreadUtil_jcell_instance => null()
  logical, save :: OpenGLThreadUtil_jset_instance = .false.

contains

  function OpenGLThreadUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLThreadUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLThreadUtil)
      jresult => object
    end select
  end function

  function OpenGLThreadUtil_jstatic_instance() result(jresult)
    class(OpenGLThreadUtil), pointer :: jresult
    if (.not. OpenGLThreadUtil_jset_instance) then
      OpenGLThreadUtil_jset_instance = .true.
      OpenGLThreadUtil_jcell_instance => OpenGLThreadUtil_jnew_0()
    end if
    jresult => OpenGLThreadUtil_jcell_instance
  end function

  subroutine OpenGLThreadUtil_jsetstatic_instance(jvalue)
    class(OpenGLThreadUtil), target, optional :: jvalue
    OpenGLThreadUtil_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLThreadUtil_jcell_instance => jvalue
    else
      OpenGLThreadUtil_jcell_instance => null()
    end if
  end subroutine

  function OpenGLThreadUtil_jnew_0() result(this)
    class(OpenGLThreadUtil), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLThreadUtil'
  end function

  recursive function OpenGLThreadUtil_jm_getInstance_0() result(jresult)
    class(OpenGLThreadUtil), pointer :: jresult
        jresult => OpenGLThreadUtil_jstatic_instance()
        return
  end function

  recursive subroutine OpenGLThreadUtil_jm_set_1(this, j_glSurfaceView)
    class(OpenGLThreadUtil), target :: this
    class(JObject), target, optional :: j_glSurfaceView
    continue
  end subroutine

  recursive subroutine OpenGLThreadUtil_jm_onPause_0(this)
    class(OpenGLThreadUtil), target :: this
    continue
  end subroutine

  recursive subroutine OpenGLThreadUtil_jm_onResume_0(this)
    class(OpenGLThreadUtil), target :: this
    continue
  end subroutine
end module OpenGLThreadUtil_m

