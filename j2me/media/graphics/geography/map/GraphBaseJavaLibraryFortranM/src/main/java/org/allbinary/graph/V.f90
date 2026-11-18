! Generated Code Do Not Modify
! package org.allbinary.graph
module V_m
  use JR_m
  implicit none

  type, extends(JObject) :: V
  contains
    procedure :: jm_getId_0 => V_jm_getId_0
  end type


contains

  function V_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(V), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (V)
      jresult => object
    end select
  end function

  function V_jnew_0() result(this)
    class(V), pointer :: this
    allocate(this)
    this%jclass = 'V'
  end function

  recursive function V_jm_getId_0(this) result(jresult)
    class(V), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module V_m

