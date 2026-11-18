! Generated Code Do Not Modify
! package org.allbinary.view
module EmulatorViewInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: EmulatorViewInterface
  contains
    procedure :: jm_setMidlet_1 => EmulatorViewInterface_jm_setMidlet_1
    procedure :: jm_onEmulatorInitComplete_1 => EmulatorViewInterface_jm_onEmulatorInitComplete_1
    procedure :: jm_onSetDisplayable_1 => EmulatorViewInterface_jm_onSetDisplayable_1
  end type


contains

  function EmulatorViewInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EmulatorViewInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EmulatorViewInterface)
      jresult => object
    end select
  end function

  function EmulatorViewInterface_jnew_0() result(this)
    class(EmulatorViewInterface), pointer :: this
    allocate(this)
    this%jclass = 'EmulatorViewInterface'
  end function

  recursive subroutine EmulatorViewInterface_jm_setMidlet_1(this, j_midlet)
    class(EmulatorViewInterface), target :: this
    class(MIDlet), target, optional :: j_midlet
    error stop 'AbstractMethodError: EmulatorViewInterface.setMidlet'
  end subroutine

  recursive subroutine EmulatorViewInterface_jm_onEmulatorInitComplete_1(this, j_midletActivity)
    class(EmulatorViewInterface), target :: this
    class(JObject), target, optional :: j_midletActivity
    error stop 'AbstractMethodError: EmulatorViewInterface.onEmulatorInitComplete'
  end subroutine

  recursive subroutine EmulatorViewInterface_jm_onSetDisplayable_1(this, j_displayable)
    class(EmulatorViewInterface), target :: this
    class(Displayable), target, optional :: j_displayable
    error stop 'AbstractMethodError: EmulatorViewInterface.onSetDisplayable'
  end subroutine
end module EmulatorViewInterface_m

