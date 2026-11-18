! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomItemStateListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABCustomItemStateListener
  end type


contains

  function ABCustomItemStateListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomItemStateListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomItemStateListener)
      jresult => object
    end select
  end function

  function ABCustomItemStateListener_jnew_0() result(this)
    class(ABCustomItemStateListener), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomItemStateListener'
  end function
end module ABCustomItemStateListener_m

