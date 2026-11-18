! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL10_m
  use JR_m
  implicit none

  type, extends(GL) :: GL10
  end type


contains

  function GL10_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL10), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL10)
      jresult => object
    end select
  end function

  function GL10_jnew_0() result(this)
    class(GL10), pointer :: this
    allocate(this)
    this%jclass = 'GL10'
  end function
end module GL10_m

