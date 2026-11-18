! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL11_m
  use JR_m
  implicit none

  type, extends(GL10) :: GL11
  end type


contains

  function GL11_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL11), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL11)
      jresult => object
    end select
  end function

  function GL11_jnew_0() result(this)
    class(GL11), pointer :: this
    allocate(this)
    this%jclass = 'GL11'
  end function
end module GL11_m

