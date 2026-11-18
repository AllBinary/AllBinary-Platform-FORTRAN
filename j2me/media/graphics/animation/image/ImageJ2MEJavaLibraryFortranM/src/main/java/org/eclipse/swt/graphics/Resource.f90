! Generated Code Do Not Modify
! package org.eclipse.swt.graphics
module Resource_m
  use JR_m
  implicit none

  type, extends(JObject) :: Resource
  contains
    procedure :: jm_dispose_0 => Resource_jm_dispose_0
    procedure :: jm_isDisposed_0 => Resource_jm_isDisposed_0
  end type


contains

  function Resource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Resource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Resource)
      jresult => object
    end select
  end function

  function Resource_jnew_0() result(this)
    class(Resource), pointer :: this
    allocate(this)
    this%jclass = 'Resource'
  end function

  recursive subroutine Resource_jm_dispose_0(this)
    class(Resource), target :: this
    continue
  end subroutine

  recursive function Resource_jm_isDisposed_0(this) result(jresult)
    class(Resource), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module Resource_m

