! Generated Code Do Not Modify
! package org.allbinary.graph
module E_m
  use JR_m
  implicit none

  type, extends(JObject) :: E
  contains
    procedure :: jm_newInstance_0 => E_jm_newInstance_0
  end type

  class(E), pointer, save :: E_jcell_e => null()
  logical, save :: E_jset_e = .false.

contains

  function E_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(E), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (E)
      jresult => object
    end select
  end function

  function E_jstatic_e() result(jresult)
    class(E), pointer :: jresult
    if (.not. E_jset_e) then
      E_jset_e = .true.
      E_jcell_e => E_jnew_0()
    end if
    jresult => E_jcell_e
  end function

  subroutine E_jsetstatic_e(jvalue)
    class(E), target, optional :: jvalue
    E_jset_e = .true.
    if (present(jvalue)) then
      E_jcell_e => jvalue
    else
      E_jcell_e => null()
    end if
  end subroutine

  function E_jnew_0() result(this)
    class(E), pointer :: this
    allocate(this)
    this%jclass = 'E'
  end function

  recursive function E_jm_newInstance_0(this) result(jresult)
    class(E), target :: this
    class(E), pointer :: jresult
        jresult => E_jstatic_e()
        return
  end function
end module E_m

