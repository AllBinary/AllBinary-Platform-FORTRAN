! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomItemInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ABCustomItemInterface
  contains
    procedure :: jm_getMinimumWidth_0 => ABCustomItemInterface_jm_getMinimumWidth_0
    procedure :: jm_getMinimumHeight_0 => ABCustomItemInterface_jm_getMinimumHeight_0
    procedure :: jm_getLabel_0 => ABCustomItemInterface_jm_getLabel_0
    procedure :: jm_paintXY_3 => ABCustomItemInterface_jm_paintXY_3
    procedure :: jm_paintUnselected_3 => ABCustomItemInterface_jm_paintUnselected_3
  end type


contains

  function ABCustomItemInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomItemInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomItemInterface)
      jresult => object
    end select
  end function

  function ABCustomItemInterface_jnew_0() result(this)
    class(ABCustomItemInterface), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomItemInterface'
  end function

  recursive function ABCustomItemInterface_jm_getMinimumWidth_0(this) result(jresult)
    class(ABCustomItemInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: ABCustomItemInterface.getMinimumWidth'
  end function

  recursive function ABCustomItemInterface_jm_getMinimumHeight_0(this) result(jresult)
    class(ABCustomItemInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: ABCustomItemInterface.getMinimumHeight'
  end function

  recursive function ABCustomItemInterface_jm_getLabel_0(this) result(jresult)
    class(ABCustomItemInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: ABCustomItemInterface.getLabel'
  end function

  recursive subroutine ABCustomItemInterface_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ABCustomItemInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    error stop 'AbstractMethodError: ABCustomItemInterface.paintXY'
  end subroutine

  recursive subroutine ABCustomItemInterface_jm_paintUnselected_3(this, j_graphics, j_x, j_y)
    class(ABCustomItemInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    error stop 'AbstractMethodError: ABCustomItemInterface.paintUnselected'
  end subroutine
end module ABCustomItemInterface_m

