! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module CustomScreen_m
  use JR_m
  use CustomDisplayable_m
  implicit none

  type, extends(CustomDisplayable) :: CustomScreen
  end type


contains

  function CustomScreen_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomScreen), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomScreen)
      jresult => object
    end select
  end function

  function CustomScreen_jnew_0() result(this)
    class(CustomScreen), pointer :: this
    allocate(this)
    this%jclass = 'CustomScreen'
  end function
end module CustomScreen_m

function CustomScreen_jnew_0_jext() result(this)
  use CustomScreen_m, only: JObject, CustomScreen_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CustomScreen_jnew_0()
end function

