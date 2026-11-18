! Generated Code Do Not Modify
! package javax.microedition.lcdui
module NullCanvas_m
  use JR_m
  use Stack_m
  use Canvas_m
  use Command_m
  use CommandListener_m
  use Graphics_m
  implicit none

  type, extends(Canvas) :: NullCanvas
  contains
    procedure :: jm_setFullScreenMode_1 => NullCanvas_jm_setFullScreenMode_1
    procedure :: jm_sizeChanged_2 => NullCanvas_jm_sizeChanged_2
    procedure :: jm_getCommandStack_0 => NullCanvas_jm_getCommandStack_0
    procedure :: jm_isCommand_1 => NullCanvas_jm_isCommand_1
    procedure :: jm_addCommand_1 => NullCanvas_jm_addCommand_1
    procedure :: jm_removeCommand_1 => NullCanvas_jm_removeCommand_1
    procedure :: jm_removeAllCommands_0 => NullCanvas_jm_removeAllCommands_0
    procedure :: jm_setCommandListener_1 => NullCanvas_jm_setCommandListener_1
    procedure :: jm_getCustomCommandListener_0 => NullCanvas_jm_getCustomCommandListener_0
    procedure :: jm_isPaused_0 => NullCanvas_jm_isPaused_0
    procedure :: jm_removePauseCommand_0 => NullCanvas_jm_removePauseCommand_0
    procedure :: jm_pause_0 => NullCanvas_jm_pause_0
    procedure :: jm_unPause_0 => NullCanvas_jm_unPause_0
    procedure :: jm_process_0 => NullCanvas_jm_process_0
    procedure :: jm_paint_1 => NullCanvas_jm_paint_1
    procedure :: jm_destroy_0 => NullCanvas_jm_destroy_0
    procedure :: jm_setPaused_1 => NullCanvas_jm_setPaused_1
    procedure :: jm_pointerDragged_2 => NullCanvas_jm_pointerDragged_2
    procedure :: jm_pointerPressed_2 => NullCanvas_jm_pointerPressed_2
    procedure :: jm_pointerReleased_2 => NullCanvas_jm_pointerReleased_2
  end type

  class(NullCanvas), pointer, save :: NullCanvas_jcell_NULL_CANVAS => null()
  logical, save :: NullCanvas_jset_NULL_CANVAS = .false.

contains

  function NullCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullCanvas)
      jresult => object
    end select
  end function

  function NullCanvas_jstatic_NULL_CANVAS() result(jresult)
    class(NullCanvas), pointer :: jresult
    if (.not. NullCanvas_jset_NULL_CANVAS) then
      NullCanvas_jset_NULL_CANVAS = .true.
      NullCanvas_jcell_NULL_CANVAS => NullCanvas_jnew_0()
    end if
    jresult => NullCanvas_jcell_NULL_CANVAS
  end function

  subroutine NullCanvas_jsetstatic_NULL_CANVAS(jvalue)
    class(NullCanvas), target, optional :: jvalue
    NullCanvas_jset_NULL_CANVAS = .true.
    if (present(jvalue)) then
      NullCanvas_jcell_NULL_CANVAS => jvalue
    else
      NullCanvas_jcell_NULL_CANVAS => null()
    end if
  end subroutine

  recursive function NullCanvas_jnew_0() result(this)
    class(NullCanvas), pointer :: this
    allocate(this)
    this%jclass = 'NullCanvas'
        continue
  end function

  recursive subroutine NullCanvas_jm_setFullScreenMode_1(this, j_mode)
    class(NullCanvas), target :: this
    logical, value :: j_mode
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_sizeChanged_2(this, j_w, j_h)
    class(NullCanvas), target :: this
    integer(4), value :: j_w
    integer(4), value :: j_h
    continue
  end subroutine

  recursive function NullCanvas_jm_getCommandStack_0(this) result(jresult)
    class(NullCanvas), target :: this
    class(Stack), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function NullCanvas_jm_isCommand_1(this, j_command) result(jresult)
    class(NullCanvas), target :: this
    class(Command), target, optional :: j_command
    logical :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine NullCanvas_jm_addCommand_1(this, j_command)
    class(NullCanvas), target :: this
    class(Command), target, optional :: j_command
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_removeCommand_1(this, j_command)
    class(NullCanvas), target :: this
    class(Command), target, optional :: j_command
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_removeAllCommands_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_setCommandListener_1(this, j_l)
    class(NullCanvas), target :: this
    class(CommandListener), target, optional :: j_l
    continue
  end subroutine

  recursive function NullCanvas_jm_getCustomCommandListener_0(this) result(jresult)
    class(NullCanvas), target :: this
    class(CommandListener), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function NullCanvas_jm_isPaused_0(this) result(jresult)
    class(NullCanvas), target :: this
    logical :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine NullCanvas_jm_removePauseCommand_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_pause_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_unPause_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_process_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_paint_1(this, j_graphics)
    class(NullCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_destroy_0(this)
    class(NullCanvas), target :: this
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_setPaused_1(this, j_isPaused)
    class(NullCanvas), target :: this
    logical, value :: j_isPaused
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive subroutine NullCanvas_jm_pointerDragged_2(this, j_x, j_y)
    class(NullCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_pointerPressed_2(this, j_x, j_y)
    class(NullCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive subroutine NullCanvas_jm_pointerReleased_2(this, j_x, j_y)
    class(NullCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module NullCanvas_m

function NullCanvas_jnew_0_jext() result(this)
  use NullCanvas_m, only: JObject, NullCanvas_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullCanvas_jnew_0()
end function

