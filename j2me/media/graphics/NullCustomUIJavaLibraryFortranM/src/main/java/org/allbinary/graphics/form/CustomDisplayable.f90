! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module CustomDisplayable_m
  use JR_m
  implicit none

  type, extends(JObject) :: CustomDisplayable
  contains
    procedure :: jm_setTitle_1 => CustomDisplayable_jm_setTitle_1
  end type


contains

  function CustomDisplayable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomDisplayable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomDisplayable)
      jresult => object
    end select
  end function

  function CustomDisplayable_jnew_0() result(this)
    class(CustomDisplayable), pointer :: this
    allocate(this)
    this%jclass = 'CustomDisplayable'
  end function

  recursive subroutine CustomDisplayable_jm_setTitle_1(this, j_title)
    class(CustomDisplayable), target :: this
    character(len=*), intent(in) :: j_title
    continue
  end subroutine
end module CustomDisplayable_m

