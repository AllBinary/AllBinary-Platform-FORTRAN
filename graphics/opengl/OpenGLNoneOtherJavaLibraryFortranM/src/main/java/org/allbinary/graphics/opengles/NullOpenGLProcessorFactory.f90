! Generated Code Do Not Modify
! package org.allbinary.graphics.opengles
module NullOpenGLProcessorFactory_m
  use JR_m
  use OpenGLProcessor_m
  implicit none

  type, extends(JObject) :: NullOpenGLProcessorFactory
  end type

  class(OpenGLProcessor), pointer, save :: NullOpenGLProcessorFactory_jcell_instance => null()
  logical, save :: NullOpenGLProcessorFactory_jset_instance = .false.

contains

  function NullOpenGLProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullOpenGLProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullOpenGLProcessorFactory)
      jresult => object
    end select
  end function

  function NullOpenGLProcessorFactory_jstatic_instance() result(jresult)
    class(OpenGLProcessor), pointer :: jresult
    if (.not. NullOpenGLProcessorFactory_jset_instance) then
      NullOpenGLProcessorFactory_jset_instance = .true.
      NullOpenGLProcessorFactory_jcell_instance => OpenGLProcessor_jnew_0()
    end if
    jresult => NullOpenGLProcessorFactory_jcell_instance
  end function

  subroutine NullOpenGLProcessorFactory_jsetstatic_instance(jvalue)
    class(OpenGLProcessor), target, optional :: jvalue
    NullOpenGLProcessorFactory_jset_instance = .true.
    if (present(jvalue)) then
      NullOpenGLProcessorFactory_jcell_instance => jvalue
    else
      NullOpenGLProcessorFactory_jcell_instance => null()
    end if
  end subroutine

  function NullOpenGLProcessorFactory_jnew_0() result(this)
    class(NullOpenGLProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullOpenGLProcessorFactory'
  end function

  recursive function NullOpenGLProcessorFactory_jm_getInstance_0() result(jresult)
    class(OpenGLProcessor), pointer :: jresult
        jresult => NullOpenGLProcessorFactory_jstatic_instance()
        return
  end function
end module NullOpenGLProcessorFactory_m

