! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL_m
  use JR_m
  implicit none

  type, extends(JObject) :: GL
  end type


contains

  function GL_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL)
      jresult => object
    end select
  end function

  function GL_jnew_0() result(this)
    class(GL), pointer :: this
    allocate(this)
    this%jclass = 'GL'
  end function
end module GL_m

