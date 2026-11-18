! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module TextFieldItemHelper_m
  use JR_m
  implicit none

  type, extends(JObject) :: TextFieldItemHelper
  end type


contains

  function TextFieldItemHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextFieldItemHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextFieldItemHelper)
      jresult => object
    end select
  end function

  function TextFieldItemHelper_jnew_0() result(this)
    class(TextFieldItemHelper), pointer :: this
    allocate(this)
    this%jclass = 'TextFieldItemHelper'
  end function
end module TextFieldItemHelper_m

