! Generated Code Do Not Modify
! package org.allbinary.device
module OpenGLESGraphicsFactory_m
  use JR_m
  use OpenGLESNullGraphicsFactory_m
  use OpenGLESGraphics_m
  implicit none

  type, extends(JObject) :: OpenGLESGraphicsFactory
  contains
    procedure :: jm_getOpenGLESGraphicsInstance_0 => OpenGLESGraphicsFactory_jm_getOpenGLESGraphicsInstance_0
  end type


contains

  function OpenGLESGraphicsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OpenGLESGraphicsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OpenGLESGraphicsFactory)
      jresult => object
    end select
  end function

  function OpenGLESGraphicsFactory_jnew_0() result(this)
    class(OpenGLESGraphicsFactory), pointer :: this
    allocate(this)
    this%jclass = 'OpenGLESGraphicsFactory'
  end function

  recursive function OpenGLESGraphicsFactory_jm_getOpenGLESGraphicsInstance_0(this) result(jresult)
    class(OpenGLESGraphicsFactory), target :: this
    class(OpenGLESGraphics), pointer :: jresult
        jresult => OpenGLESNullGraphicsFactory_jm_getInstance_0()
        return
  end function
end module OpenGLESGraphicsFactory_m

