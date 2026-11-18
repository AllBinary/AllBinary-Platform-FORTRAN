! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ChoiceGroupItem_m
  use JR_m
  implicit none

  type, extends(JObject) :: ChoiceGroupItem
  end type


contains

  function ChoiceGroupItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ChoiceGroupItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ChoiceGroupItem)
      jresult => object
    end select
  end function

  function ChoiceGroupItem_jnew_0() result(this)
    class(ChoiceGroupItem), pointer :: this
    allocate(this)
    this%jclass = 'ChoiceGroupItem'
  end function
end module ChoiceGroupItem_m

