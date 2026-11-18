! Generated Code Do Not Modify
! package javax.microedition.khronos.opengles
module GL11Ext_m
  use JR_m
  implicit none

  type, extends(GL) :: GL11Ext
  end type


contains

  function GL11Ext_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GL11Ext), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GL11Ext)
      jresult => object
    end select
  end function

  function GL11Ext_jnew_0() result(this)
    class(GL11Ext), pointer :: this
    allocate(this)
    this%jclass = 'GL11Ext'
  end function
end module GL11Ext_m

