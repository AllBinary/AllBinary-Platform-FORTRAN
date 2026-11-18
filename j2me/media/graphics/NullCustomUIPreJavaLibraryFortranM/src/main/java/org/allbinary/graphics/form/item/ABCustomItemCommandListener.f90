! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomItemCommandListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABCustomItemCommandListener
  end type


contains

  function ABCustomItemCommandListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomItemCommandListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomItemCommandListener)
      jresult => object
    end select
  end function

  function ABCustomItemCommandListener_jnew_0() result(this)
    class(ABCustomItemCommandListener), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomItemCommandListener'
  end function
end module ABCustomItemCommandListener_m

