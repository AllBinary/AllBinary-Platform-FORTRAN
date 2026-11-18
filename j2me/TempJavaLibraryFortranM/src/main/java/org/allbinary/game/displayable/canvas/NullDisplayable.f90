! Generated Code Do Not Modify
! package org.allbinary.game.displayable.canvas
module NullDisplayable_m
  use JR_m
  implicit none

  type, extends(Canvas) :: NullDisplayable
  contains
    procedure :: jm_paint_1 => NullDisplayable_jm_paint_1
  end type

  class(NullDisplayable), pointer, save :: NullDisplayable_jcell_SINGLETON => null()
  logical, save :: NullDisplayable_jset_SINGLETON = .false.

contains

  function NullDisplayable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullDisplayable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullDisplayable)
      jresult => object
    end select
  end function

  function NullDisplayable_jstatic_SINGLETON() result(jresult)
    class(NullDisplayable), pointer :: jresult
    if (.not. NullDisplayable_jset_SINGLETON) then
      NullDisplayable_jset_SINGLETON = .true.
      NullDisplayable_jcell_SINGLETON => NullDisplayable_jnew_0()
    end if
    jresult => NullDisplayable_jcell_SINGLETON
  end function

  subroutine NullDisplayable_jsetstatic_SINGLETON(jvalue)
    class(NullDisplayable), target, optional :: jvalue
    NullDisplayable_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullDisplayable_jcell_SINGLETON => jvalue
    else
      NullDisplayable_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NullDisplayable_jnew_0() result(this)
    class(NullDisplayable), pointer :: this
    allocate(this)
    this%jclass = 'NullDisplayable'
        continue
  end function

  recursive function NullDisplayable_jm_getInstance_0() result(jresult)
    class(NullDisplayable), pointer :: jresult
        jresult => NullDisplayable_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NullDisplayable_jm_paint_1(this, j_graphics)
    class(NullDisplayable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module NullDisplayable_m

function NullDisplayable_jnew_0_jext() result(this)
  use NullDisplayable_m, only: JObject, NullDisplayable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullDisplayable_jnew_0()
end function

