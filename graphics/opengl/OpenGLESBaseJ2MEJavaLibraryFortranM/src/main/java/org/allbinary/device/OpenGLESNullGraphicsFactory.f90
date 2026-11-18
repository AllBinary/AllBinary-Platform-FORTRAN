! Generated Code Do Not Modify
! package org.allbinary.device
module OpenGLESNullGraphicsFactory_m
  use JR_m
  use OpenGLESGraphics_m
  implicit none

  type, extends(JObject) :: OpenGLESNullGraphicsFactory
  end type

  class(OpenGLESGraphics), pointer, save :: OpenGLESNullGraphicsFactory_jcell_instance => null()
  logical, save :: OpenGLESNullGraphicsFactory_jset_instance = .false.

contains

  function OpenGLESNullGraphicsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESNullGraphicsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESNullGraphicsFactory)
      jresult => object
    end select
  end function

  function OpenGLESNullGraphicsFactory_jstatic_instance() result(jresult)
    class(OpenGLESGraphics), pointer :: jresult
    if (.not. OpenGLESNullGraphicsFactory_jset_instance) then
      OpenGLESNullGraphicsFactory_jset_instance = .true.
      OpenGLESNullGraphicsFactory_jcell_instance => OpenGLESGraphics_jnew_0()
    end if
    jresult => OpenGLESNullGraphicsFactory_jcell_instance
  end function

  subroutine OpenGLESNullGraphicsFactory_jsetstatic_instance(jvalue)
    class(OpenGLESGraphics), target, optional :: jvalue
    OpenGLESNullGraphicsFactory_jset_instance = .true.
    if (present(jvalue)) then
      OpenGLESNullGraphicsFactory_jcell_instance => jvalue
    else
      OpenGLESNullGraphicsFactory_jcell_instance => null()
    end if
  end subroutine

  function OpenGLESNullGraphicsFactory_jnew_0() result(this)
    class(OpenGLESNullGraphicsFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESNullGraphicsFactory'
  end function

  recursive function OpenGLESNullGraphicsFactory_jm_getInstance_0() result(jresult)
    class(OpenGLESGraphics), pointer :: jresult
        jresult => OpenGLESNullGraphicsFactory_jstatic_instance()
        return
  end function
end module OpenGLESNullGraphicsFactory_m

