! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABChoiceItemInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABChoiceItemInterface
  end type


contains

  function ABChoiceItemInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABChoiceItemInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABChoiceItemInterface)
      jresult => object
    end select
  end function

  function ABChoiceItemInterface_jnew_0() result(this)
    class(ABChoiceItemInterface), pointer :: this
    allocate(this)
    this%jclass = 'ABChoiceItemInterface'
  end function
end module ABChoiceItemInterface_m

