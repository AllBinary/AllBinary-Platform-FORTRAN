! 
! AllBinary Open License Version 1 
! Copyright (c) 2002 AllBinary 
!  
! By agreeing to this license you and any business entity you represent are 
! legally bound to the AllBinary Open License Version 1 legal agreement. 
!  
! You may obtain the AllBinary Open License Version 1 legal agreement from 
! AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
!  
! Created By: Travis Berthelot 
!   
! Generated Code Do Not Modify
! package org.allbinary.graphics.displayable.screen
module CommandForm_m
  use JR_m
  use NullCommandListener_m
  use Processor_m
  use MenuListener_m
  use BasicColor_m
  use BasicColorFactory_m
  use MyCommandInterface_m
  use NullUtil_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  use StdUtil_m
  use ABStack_m
  use ScreenRepaintProcessorFactory_m
  implicit none

  type, extends(Form) :: CommandForm
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(Processor), pointer :: f_repaintProcessor => null()
    class(ABStack), pointer :: f_commandStack => null()
  contains
    procedure :: jm_initCommands_1 => CommandForm_jm_initCommands_1
    procedure :: jm_open_0 => CommandForm_jm_open_0
    procedure :: jm_close_0 => CommandForm_jm_close_0
    procedure :: jm_update_0 => CommandForm_jm_update_0
    procedure :: jm_getSourceId_0 => CommandForm_jm_getSourceId_0
    procedure :: jm_addCommand_1 => CommandForm_jm_addCommand_1
    procedure :: jm_removeAllCommands_0 => CommandForm_jm_removeAllCommands_0
  end type

  ! CommandForm used as a MyCommandInterface
  type, extends(MyCommandInterface) :: CommandForm_jas_MyCommandInterface
    class(CommandForm), pointer :: jtarget => null()
  contains
    procedure :: jm_addCommand_1 => CommandForm_jas_MyCommandInterface_jm_addCommand_1
    procedure :: jm_removeAllCommands_0 => CommandForm_jas_MyCommandInterface_jm_removeAllCommands_0
  end type

  ! CommandForm used as a MenuListener
  type, extends(MenuListener) :: CommandForm_jas_MenuListener
    class(CommandForm), pointer :: jtarget => null()
  contains
    procedure :: jm_open_0 => CommandForm_jas_MenuListener_jm_open_0
    procedure :: jm_close_0 => CommandForm_jas_MenuListener_jm_close_0
  end type

  class(JObject), pointer, save :: CommandForm_jcell_NULL_COMMAND_FORM => null()
  logical, save :: CommandForm_jset_NULL_COMMAND_FORM = .false.

contains

  function CommandForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandForm)
      jresult => object
    end select
  end function

  function CommandForm_jas_MyCommandInterface_jnew(object) result(jresult)
    class(CommandForm), target :: object
    class(CommandForm_jas_MyCommandInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CommandForm'
    jresult%jtarget => object
  end function

  recursive subroutine CommandForm_jas_MyCommandInterface_jm_addCommand_1(this, j_command)
    class(CommandForm_jas_MyCommandInterface), target :: this
    class(Command), target, optional :: j_command
    call this%jtarget%jm_addCommand_1(j_command)
  end subroutine

  recursive subroutine CommandForm_jas_MyCommandInterface_jm_removeAllCommands_0(this)
    class(CommandForm_jas_MyCommandInterface), target :: this
    call this%jtarget%jm_removeAllCommands_0()
  end subroutine

  function CommandForm_jas_MenuListener_jnew(object) result(jresult)
    class(CommandForm), target :: object
    class(CommandForm_jas_MenuListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CommandForm'
    jresult%jtarget => object
  end function

  recursive subroutine CommandForm_jas_MenuListener_jm_open_0(this)
    class(CommandForm_jas_MenuListener), target :: this
    call this%jtarget%jm_open_0()
  end subroutine

  recursive subroutine CommandForm_jas_MenuListener_jm_close_0(this)
    class(CommandForm_jas_MenuListener), target :: this
    call this%jtarget%jm_close_0()
  end subroutine

  function CommandForm_jstatic_NULL_COMMAND_FORM() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. CommandForm_jset_NULL_COMMAND_FORM) then
      CommandForm_jset_NULL_COMMAND_FORM = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    CommandForm_jcell_NULL_COMMAND_FORM => jtemp1%f_NULL_OBJECT
    end if
    jresult => CommandForm_jcell_NULL_COMMAND_FORM
  end function

  subroutine CommandForm_jsetstatic_NULL_COMMAND_FORM(jvalue)
    class(JObject), target, optional :: jvalue
    CommandForm_jset_NULL_COMMAND_FORM = .true.
    if (present(jvalue)) then
      CommandForm_jcell_NULL_COMMAND_FORM => jvalue
    else
      CommandForm_jcell_NULL_COMMAND_FORM => null()
    end if
  end subroutine

  recursive function CommandForm_jnew_4(j_commandListener, j_formTitle, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_formTitle
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommandForm), pointer :: this
    class(StdUtil), pointer :: jtemp7
    class(ScreenRepaintProcessorFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CommandForm'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    jtemp6 => ScreenRepaintProcessorFactory_jm_getInstance_0()
    this%f_repaintProcessor => jtemp6%jm_create_1(this)
    
        continue ! super()
        jtemp7 => StdUtil_jm_getInstance_0()
        this%f_commandStack => jtemp7%jm_createStack_0()
        continue ! try
            call this%f_repaintProcessor%jm_process_0()
  end function

  recursive function CommandForm_jm_getNullCommandForm_0() result(jresult)
    class(CommandForm), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp5
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(CommandForm_jstatic_NULL_COMMAND_FORM(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            jtemp5 => BasicColorFactory_jm_getInstance_0()
            call CommandForm_jsetstatic_NULL_COMMAND_FORM(CommandForm_jnew_4(NullCommandListener_jstatic_NULL_COMMAND_LISTENER(), jtemp3%f_EMPTY_STRING, jtemp4%f_BLACK, jtemp5%f_WHITE))
        end if
        jresult => CommandForm_jcast(CommandForm_jstatic_NULL_COMMAND_FORM())
        return
  end function

  recursive subroutine CommandForm_jm_initCommands_1(this, j_cmdListener)
    class(CommandForm), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    continue
  end subroutine

  recursive subroutine CommandForm_jm_open_0(this)
    class(CommandForm), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'open')
  end subroutine

  recursive subroutine CommandForm_jm_close_0(this)
    class(CommandForm), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CLOSE)
  end subroutine

  recursive subroutine CommandForm_jm_update_0(this)
    class(CommandForm), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_repaintProcessor%jm_process_0()
  end subroutine

  recursive function CommandForm_jm_getSourceId_0(this) result(jresult)
    class(CommandForm), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine CommandForm_jm_addCommand_1(this, j_command)
    class(CommandForm), target :: this
    class(Command), target, optional :: j_command
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_commandStack%jm_push_1(j_command)
        call this%Form%jm_addCommand_1(j_command)
  end subroutine

  recursive subroutine CommandForm_jm_removeAllCommands_0(this)
    class(CommandForm), target :: this
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%f_commandStack%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            call this%Form%jm_removeCommand_1(Command_jcast(this%f_commandStack%jm_pop_0()))
            j_index = j_index + 1
        end do
  end subroutine
end module CommandForm_m

