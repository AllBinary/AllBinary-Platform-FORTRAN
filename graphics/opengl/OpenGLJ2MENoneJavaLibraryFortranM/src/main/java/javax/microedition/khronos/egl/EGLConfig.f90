! Generated Code Do Not Modify
! package javax.microedition.khronos.egl
module EGLConfig_m
  use JR_m
  implicit none

  type, extends(JObject) :: EGLConfig
  end type


contains

  function EGLConfig_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EGLConfig), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EGLConfig)
      jresult => object
    end select
  end function

  recursive function EGLConfig_jnew_0() result(this)
    class(EGLConfig), pointer :: this
    allocate(this)
    this%jclass = 'EGLConfig'
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module EGLConfig_m

