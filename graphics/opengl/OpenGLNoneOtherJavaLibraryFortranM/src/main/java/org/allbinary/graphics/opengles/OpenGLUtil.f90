! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles
module OpenGLUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: OpenGLUtil
  contains
    procedure :: jm_addImage_1 => OpenGLUtil_jm_addImage_1
    procedure :: jm_clear_0 => OpenGLUtil_jm_clear_0
    procedure :: jm_addRunnable_1 => OpenGLUtil_jm_addRunnable_1
  end type

  class(OpenGLUtil), pointer, save :: OpenGLUtil_jcell_instance => null()
  logical, save :: OpenGLUtil_jset_instance = .false.

contains

  function OpenGLUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLUtil)
      jresult => object
    end select
  end function

  function OpenGLUtil_jstatic_instance() result(jresult)
    class(OpenGLUtil), pointer :: jresult
    if (.not. OpenGLUtil_jset_instance) then
      OpenGLUtil_jset_instance = .true.
      OpenGLUtil_jcell_instance => OpenGLUtil_jnew_0()
    end if
    jresult => OpenGLUtil_jcell_instance
  end function

  subroutine OpenGLUtil_jsetstatic_instance(jvalue)
    class(OpenGLUtil), target, optional :: jvalue
    OpenGLUtil_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLUtil_jcell_instance => jvalue
    else
      OpenGLUtil_jcell_instance => null()
    end if
  end subroutine

  function OpenGLUtil_jnew_0() result(this)
    class(OpenGLUtil), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLUtil'
  end function

  recursive function OpenGLUtil_jm_getInstance_0() result(jresult)
    class(OpenGLUtil), pointer :: jresult
        jresult => OpenGLUtil_jstatic_instance()
        return
  end function

  recursive function OpenGLUtil_jm_addImage_1(this, j_image) result(jresult)
    class(OpenGLUtil), target :: this
    class(Image), target, optional :: j_image
    class(Image), pointer :: jresult
        jresult => j_image
        return
  end function

  recursive subroutine OpenGLUtil_jm_clear_0(this)
    class(OpenGLUtil), target :: this
    continue
  end subroutine

  recursive subroutine OpenGLUtil_jm_addRunnable_1(this, j_runnable)
    class(OpenGLUtil), target :: this
    class(JObject), target, optional :: j_runnable
    continue
  end subroutine
end module OpenGLUtil_m

