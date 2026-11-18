! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABImageStringItem_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABImageStringItem
  end type


contains

  function ABImageStringItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABImageStringItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABImageStringItem)
      jresult => object
    end select
  end function

  function ABImageStringItem_jnew_0() result(this)
    class(ABImageStringItem), pointer :: this
    allocate(this)
    this%jclass = 'ABImageStringItem'
  end function
end module ABImageStringItem_m

