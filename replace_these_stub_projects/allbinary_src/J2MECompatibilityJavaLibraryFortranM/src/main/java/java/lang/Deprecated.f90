! Generated Code Do Not Modify
! package java.lang
module Deprecated_m
  use JR_m
  implicit none

  type, extends(JObject) :: Deprecated
  end type


contains

  function Deprecated_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Deprecated), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Deprecated)
      jresult => object
    end select
  end function

  function Deprecated_jnew_0() result(this)
    class(Deprecated), pointer :: this
    allocate(this)
    this%jclass = 'Deprecated'
  end function
end module Deprecated_m

