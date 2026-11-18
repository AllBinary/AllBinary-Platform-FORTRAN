! Generated Code Do Not Modify
! package javax.microedition.lcdui
module NullCommandListener_m
  use JR_m
  use CommandListener_m
  use Command_m
  use Displayable_m
  implicit none

  type, extends(CommandListener) :: NullCommandListener
  contains
    procedure :: jm_commandAction_2 => NullCommandListener_jm_commandAction_2
  end type

  class(NullCommandListener), pointer, save :: NullCommandListener_jcell_NULL_COMMAND_LISTENER => null()
  logical, save :: NullCommandListener_jset_NULL_COMMAND_LISTENER = .false.

contains

  function NullCommandListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullCommandListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullCommandListener)
      jresult => object
    end select
  end function

  function NullCommandListener_jstatic_NULL_COMMAND_LISTENER() result(jresult)
    class(NullCommandListener), pointer :: jresult
    if (.not. NullCommandListener_jset_NULL_COMMAND_LISTENER) then
      NullCommandListener_jset_NULL_COMMAND_LISTENER = .true.
      NullCommandListener_jcell_NULL_COMMAND_LISTENER => NullCommandListener_jnew_0()
    end if
    jresult => NullCommandListener_jcell_NULL_COMMAND_LISTENER
  end function

  subroutine NullCommandListener_jsetstatic_NULL_COMMAND_LISTENER(jvalue)
    class(NullCommandListener), target, optional :: jvalue
    NullCommandListener_jset_NULL_COMMAND_LISTENER = .true.
    if (present(jvalue)) then
      NullCommandListener_jcell_NULL_COMMAND_LISTENER => jvalue
    else
      NullCommandListener_jcell_NULL_COMMAND_LISTENER => null()
    end if
  end subroutine

  function NullCommandListener_jnew_0() result(this)
    class(NullCommandListener), pointer :: this
    allocate(this)
    this%jclass = 'NullCommandListener'
  end function

  recursive subroutine NullCommandListener_jm_commandAction_2(this, j_c, j_d)
    class(NullCommandListener), target :: this
    class(Command), target, optional :: j_c
    class(Displayable), target, optional :: j_d
    continue
  end subroutine
end module NullCommandListener_m

