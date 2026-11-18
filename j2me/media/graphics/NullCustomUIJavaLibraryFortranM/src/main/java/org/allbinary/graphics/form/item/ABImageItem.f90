! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABImageItem_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABImageItem
  end type


contains

  function ABImageItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABImageItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABImageItem)
      jresult => object
    end select
  end function

  function ABImageItem_jnew_0() result(this)
    class(ABImageItem), pointer :: this
    allocate(this)
    this%jclass = 'ABImageItem'
  end function
end module ABImageItem_m

