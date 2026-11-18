!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
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
! package org.allbinary.graphics.displayable
module MyCanvas_m
  use JR_m
  use NullCommandListener_m
  use MyCommandInterface_m
  use MyCommandsFactory_m
  use TouchJ2ME_m
  use LogUtil_m
  use StringUtil_m
  use Sound_m
  use CommonStrings_m
  use BasicArrayList_m
  use StdUtil_m
  use ABStack_m
  use DisplayableInterface_m
  use CanvasStrings_m
  use DisplayInfoSingleton_m
  implicit none

  type, extends(Canvas) :: MyCanvas
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CanvasStrings), pointer :: f_canvasStrings => null()
    class(StringUtil), pointer :: f_stringUtil => null()
    class(DisplayInfoSingleton), pointer :: f_displayInfo => null()
    character(len=:), allocatable :: f_name
    class(BasicArrayList), pointer :: f_childNameList => null()
    class(ABStack), pointer :: f_commandStack => null()
    class(CommandListener), pointer :: f_commandListener => null()
    logical :: f_paused = .false.
    class(TouchJ2ME), pointer :: f_touchME => null()
  contains
    procedure :: jm_getWidth_0 => MyCanvas_jm_getWidth_0
    procedure :: jm_getHeight_0 => MyCanvas_jm_getHeight_0
    procedure :: jm_setFullScreenMode_1 => MyCanvas_jm_setFullScreenMode_1
    procedure :: jm_sizeChanged_2 => MyCanvas_jm_sizeChanged_2
    procedure :: jm_getCommandStack_0 => MyCanvas_jm_getCommandStack_0
    procedure :: jm_isCommand_1 => MyCanvas_jm_isCommand_1
    procedure :: jm_addCommand_1 => MyCanvas_jm_addCommand_1
    procedure :: jm_removeCommand_1 => MyCanvas_jm_removeCommand_1
    procedure :: jm_removeAllCommands_0 => MyCanvas_jm_removeAllCommands_0
    procedure :: jm_setCommandListener_1 => MyCanvas_jm_setCommandListener_1
    procedure :: jm_getCustomCommandListener_0 => MyCanvas_jm_getCustomCommandListener_0
    procedure :: jm_isPaused_0 => MyCanvas_jm_isPaused_0
    procedure :: jm_removePauseCommand_0 => MyCanvas_jm_removePauseCommand_0
    procedure :: jm_pause_0 => MyCanvas_jm_pause_0
    procedure :: jm_unPause_0 => MyCanvas_jm_unPause_0
    procedure :: jm_process_0 => MyCanvas_jm_process_0
    procedure :: jm_paint_1 => MyCanvas_jm_paint_1
    procedure :: jm_draw_1 => MyCanvas_jm_draw_1
    procedure :: jm_hasChild_1 => MyCanvas_jm_hasChild_1
    procedure :: jm_destroy_0 => MyCanvas_jm_destroy_0
    procedure :: jm_setPaused_1 => MyCanvas_jm_setPaused_1
    procedure :: jm_keyPressedByDevice_2 => MyCanvas_jm_keyPressedByDevice_2
    procedure :: jm_keyRepeatedByDevice_2 => MyCanvas_jm_keyRepeatedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => MyCanvas_jm_keyReleasedByDevice_2
    procedure :: jm_pointerDragged_2 => MyCanvas_jm_pointerDragged_2
    procedure :: jm_pointerPressed_2 => MyCanvas_jm_pointerPressed_2
    procedure :: jm_pointerReleased_2 => MyCanvas_jm_pointerReleased_2
    procedure :: jm_nextSong_3 => MyCanvas_jm_nextSong_3
  end type

  ! MyCanvas used as a DisplayableInterface
  type, extends(DisplayableInterface) :: MyCanvas_jas_DisplayableInterface
    class(MyCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_getWidth_0 => MyCanvas_jas_DisplayableInterface_jm_getWidth_0
    procedure :: jm_getHeight_0 => MyCanvas_jas_DisplayableInterface_jm_getHeight_0
    procedure :: jm_addCommand_1 => MyCanvas_jas_DisplayableInterface_jm_addCommand_1
    procedure :: jm_removeCommand_1 => MyCanvas_jas_DisplayableInterface_jm_removeCommand_1
    procedure :: jm_setCommandListener_1 => MyCanvas_jas_DisplayableInterface_jm_setCommandListener_1
  end type

  ! MyCanvas used as a MyCommandInterface
  type, extends(MyCommandInterface) :: MyCanvas_jas_MyCommandInterface
    class(MyCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_addCommand_1 => MyCanvas_jas_MyCommandInterface_jm_addCommand_1
    procedure :: jm_removeAllCommands_0 => MyCanvas_jas_MyCommandInterface_jm_removeAllCommands_0
  end type


contains

  function MyCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyCanvas)
      jresult => object
    end select
  end function

  function MyCanvas_jas_DisplayableInterface_jnew(object) result(jresult)
    class(MyCanvas), target :: object
    class(MyCanvas_jas_DisplayableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'MyCanvas'
    jresult%jtarget => object
  end function

  recursive function MyCanvas_jas_DisplayableInterface_jm_getWidth_0(this) result(jresult)
    class(MyCanvas_jas_DisplayableInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getWidth_0()
  end function

  recursive function MyCanvas_jas_DisplayableInterface_jm_getHeight_0(this) result(jresult)
    class(MyCanvas_jas_DisplayableInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getHeight_0()
  end function

  recursive subroutine MyCanvas_jas_DisplayableInterface_jm_addCommand_1(this, j_cmd)
    class(MyCanvas_jas_DisplayableInterface), target :: this
    class(Command), target, optional :: j_cmd
    call this%jtarget%jm_addCommand_1(j_cmd)
  end subroutine

  recursive subroutine MyCanvas_jas_DisplayableInterface_jm_removeCommand_1(this, j_cmd)
    class(MyCanvas_jas_DisplayableInterface), target :: this
    class(Command), target, optional :: j_cmd
    call this%jtarget%jm_removeCommand_1(j_cmd)
  end subroutine

  recursive subroutine MyCanvas_jas_DisplayableInterface_jm_setCommandListener_1(this, j_l)
    class(MyCanvas_jas_DisplayableInterface), target :: this
    class(CommandListener), target, optional :: j_l
    call this%jtarget%jm_setCommandListener_1(j_l)
  end subroutine

  function MyCanvas_jas_MyCommandInterface_jnew(object) result(jresult)
    class(MyCanvas), target :: object
    class(MyCanvas_jas_MyCommandInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'MyCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine MyCanvas_jas_MyCommandInterface_jm_addCommand_1(this, j_command)
    class(MyCanvas_jas_MyCommandInterface), target :: this
    class(Command), target, optional :: j_command
    call this%jtarget%jm_addCommand_1(j_command)
  end subroutine

  recursive subroutine MyCanvas_jas_MyCommandInterface_jm_removeAllCommands_0(this)
    class(MyCanvas_jas_MyCommandInterface), target :: this
    call this%jtarget%jm_removeAllCommands_0()
  end subroutine

  recursive function MyCanvas_jnew_2(j_name, j_childNameList) result(this)
    character(len=*), intent(in) :: j_name
    class(BasicArrayList), target, optional :: j_childNameList
    class(MyCanvas), pointer :: this
    class(StdUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MyCanvas'
    this%f_name = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_canvasStrings => CanvasStrings_jm_getInstance_0()
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    
    
    
    this%f_commandListener => NullCommandListener_jstatic_NULL_COMMAND_LISTENER()
    
    this%f_touchME => TouchJ2ME_jnew_0()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_CONSTRUCTOR, this, this%f_commonStrings%f_CONSTRUCTOR)
        call this%f_displayInfo%jm_update_2(this, this%f_canvasStrings%f_CONSTRUCTOR)
        this%f_name = j_name
        this%f_childNameList => j_childNameList
        jtemp1 => StdUtil_jm_getInstance_0()
        this%f_commandStack => jtemp1%jm_createStack_0()
  end function

  recursive function MyCanvas_jm_getWidth_0(this) result(jresult)
    class(MyCanvas), target :: this
    integer(4) :: jresult
        jresult = this%Canvas%jm_getWidth_0()
        return
  end function

  recursive function MyCanvas_jm_getHeight_0(this) result(jresult)
    class(MyCanvas), target :: this
    integer(4) :: jresult
        jresult = this%Canvas%jm_getHeight_0()
        return
  end function

  recursive subroutine MyCanvas_jm_setFullScreenMode_1(this, j_mode)
    class(MyCanvas), target :: this
    logical, value :: j_mode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%Canvas%jm_setFullScreenMode_1(j_mode)
        call this%f_displayInfo%jm_update_2(this, this%f_canvasStrings%f_SET_FULL_SCREEN_MODE)
  end subroutine

  recursive subroutine MyCanvas_jm_sizeChanged_2(this, j_w, j_h)
    class(MyCanvas), target :: this
    integer(4), value :: j_w
    integer(4), value :: j_h
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_displayInfo%jm_update_2(this, this%f_canvasStrings%f_SIZE_CHANGED)
  end subroutine

  recursive function MyCanvas_jm_getCommandStack_0(this) result(jresult)
    class(MyCanvas), target :: this
    class(ABStack), pointer :: jresult
        jresult => this%f_commandStack
        return
  end function

  recursive function MyCanvas_jm_isCommand_1(this, j_command) result(jresult)
    class(MyCanvas), target :: this
    class(Command), target, optional :: j_command
    logical :: jresult
        jresult = this%f_commandStack%jm_contains_1(j_command)
        return
  end function

  recursive subroutine MyCanvas_jm_addCommand_1(this, j_command)
    class(MyCanvas), target :: this
    class(Command), target, optional :: j_command
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_commandStack%jm_contains_1(j_command))) then
            jdiscardRef => this%f_commandStack%jm_push_1(j_command)
            call this%Canvas%jm_addCommand_1(j_command)
        end if
  end subroutine

  recursive subroutine MyCanvas_jm_removeCommand_1(this, j_command)
    class(MyCanvas), target :: this
    class(Command), target, optional :: j_command
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_commandStack%jm_removeElement_1(j_command)
        call this%Canvas%jm_removeCommand_1(j_command)
  end subroutine

  recursive subroutine MyCanvas_jm_removeAllCommands_0(this)
    class(MyCanvas), target :: this
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
            call this%Canvas%jm_removeCommand_1(Command_jcast(this%f_commandStack%jm_pop_0()))
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine MyCanvas_jm_setCommandListener_1(this, j_l)
    class(MyCanvas), target :: this
    class(CommandListener), target, optional :: j_l
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%Canvas%jm_setCommandListener_1(j_l)
        this%f_commandListener => j_l
  end subroutine

  recursive function MyCanvas_jm_getCustomCommandListener_0(this) result(jresult)
    class(MyCanvas), target :: this
    class(CommandListener), pointer :: jresult
        jresult => this%f_commandListener
        return
  end function

  recursive function MyCanvas_jm_isPaused_0(this) result(jresult)
    class(MyCanvas), target :: this
    logical :: jresult
        jresult = this%f_paused
        return
  end function

  recursive subroutine MyCanvas_jm_removePauseCommand_0(this)
    class(MyCanvas), target :: this
    class(MyCommandsFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => MyCommandsFactory_jm_getInstance_0()
        call this%jm_removeCommand_1(jtemp2%f_PAUSE_COMMAND)
  end subroutine

  recursive subroutine MyCanvas_jm_pause_0(this)
    class(MyCanvas), target :: this
    class(MyCommandsFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_canvasStrings%f_PAUSE)
        call this%jm_removePauseCommand_0()
        jtemp3 => MyCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp3%f_RESUME_COMMAND)
        call this%jm_setPaused_1(.true.)
  end subroutine

  recursive subroutine MyCanvas_jm_unPause_0(this)
    class(MyCanvas), target :: this
    class(MyCommandsFactory), pointer :: jtemp4
    class(MyCommandsFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_canvasStrings%f_UN_PAUSE)
        jtemp4 => MyCommandsFactory_jm_getInstance_0()
        call this%jm_removeCommand_1(jtemp4%f_RESUME_COMMAND)
        jtemp5 => MyCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp5%f_PAUSE_COMMAND)
        call this%jm_setPaused_1(.false.)
  end subroutine

  recursive subroutine MyCanvas_jm_process_0(this)
    class(MyCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_displayInfo%jm_process_0()
  end subroutine

  recursive subroutine MyCanvas_jm_paint_1(this, j_graphics)
    class(MyCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine MyCanvas_jm_draw_1(this, j_graphics)
    class(MyCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function MyCanvas_jm_hasChild_1(this, j_displayable) result(jresult)
    class(MyCanvas), target :: this
    class(MyCanvas), target, optional :: j_displayable
    logical :: jresult
        jresult = this%f_childNameList%jm_contains_1(JR_boxString(j_displayable%f_name))
        return
  end function

  recursive subroutine MyCanvas_jm_destroy_0(this)
    class(MyCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Destroyed MyCanvas', this, 'destroy')
  end subroutine

  recursive subroutine MyCanvas_jm_setPaused_1(this, j_isPaused)
    class(MyCanvas), target :: this
    logical, value :: j_isPaused
        this%f_paused = j_isPaused
  end subroutine

  recursive subroutine MyCanvas_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(MyCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine

  recursive subroutine MyCanvas_jm_keyRepeatedByDevice_2(this, j_keyCode, j_deviceId)
    class(MyCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine

  recursive subroutine MyCanvas_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(MyCanvas), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine

  recursive subroutine MyCanvas_jm_pointerDragged_2(this, j_x, j_y)
    class(MyCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_touchME%jm_pointerDragged_2(j_x, j_y)
  end subroutine

  recursive subroutine MyCanvas_jm_pointerPressed_2(this, j_x, j_y)
    class(MyCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_touchME%jm_pointerPressed_2(j_x, j_y)
  end subroutine

  recursive subroutine MyCanvas_jm_pointerReleased_2(this, j_x, j_y)
    class(MyCanvas), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_touchME%jm_pointerReleased_2(j_x, j_y)
  end subroutine

  recursive subroutine MyCanvas_jm_nextSong_3(this, j_nextSongSound, j_leftVolume, j_rightVolume)
    class(MyCanvas), target :: this
    class(Sound), target, optional :: j_nextSongSound
    integer(4), value :: j_leftVolume
    integer(4), value :: j_rightVolume
    continue
  end subroutine
end module MyCanvas_m

