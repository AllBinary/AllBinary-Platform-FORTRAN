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
! package org.allbinary.game.commands
module GameCommandsFactory_m
  use JR_m
  use CanvasStrings_m
  use NullUtil_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: GameCommandsFactory
    class(Command), pointer :: f_TOGGLE_FULLSCREEN => null()
    class(Command), pointer :: f_TOGGLE_KEYBOARD => null()
    class(Command), pointer :: f_SET_MENU_DISPLAYABLE => null()
    class(Command), pointer :: f_APPLICATION_UPDATE => null()
    class(Command), pointer :: f_DISPLAY_ABOUT => null()
    class(Command), pointer :: f_OPEN_WEB_URL => null()
    class(Command), pointer :: f_CLOSE_OPTIONS => null()
    class(Command), pointer :: f_DISPLAY_OPTIONS => null()
    class(Command), pointer :: f_START_TRACE => null()
    class(Command), pointer :: f_STOP_TRACE => null()
    class(Command), pointer :: f_DEFAULT_OPTIONS => null()
    class(Command), pointer :: f_SHOW_GAME_CANVAS => null()
    class(Command), pointer :: f_CLOSE_AND_SHOW_GAME_CANVAS => null()
    class(Command), pointer :: f_QUIT_COMMAND => null()
    class(Command), pointer :: f_RESTART_COMMAND => null()
    class(Command), pointer :: f_DISPLAY_SAVE_FORM => null()
    class(Command), pointer :: f_SAVE => null()
    class(Command), pointer :: f_DISPLAY_LOAD_FORM => null()
    class(Command), pointer :: f_LOAD_FILE => null()
    class(Command), pointer :: f_DELETE_FILE => null()
    class(Command), pointer :: f_EXIT_COMMAND => null()
    class(Command), pointer :: f_EXIT_WITHOUT_PROGRESS_COMMAND => null()
    class(Command), pointer :: f_START_COMMAND => null()
    class(Command), pointer :: f_CONTINUE_COMMAND => null()
    class(Command), pointer :: f_SELECT_COMMAND => null()
    class(Command), pointer :: f_FEATURE_UPDATE => null()
    class(Command), pointer :: f_BUY_COMMAND => null()
  end type

  class(JObject), pointer, save :: GameCommandsFactory_jcell_instance => null()
  logical, save :: GameCommandsFactory_jset_instance = .false.

contains

  function GameCommandsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCommandsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCommandsFactory)
      jresult => object
    end select
  end function

  function GameCommandsFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameCommandsFactory_jset_instance) then
      GameCommandsFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameCommandsFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameCommandsFactory_jcell_instance
  end function

  subroutine GameCommandsFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameCommandsFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameCommandsFactory_jcell_instance => jvalue
    else
      GameCommandsFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameCommandsFactory_jnew_0() result(this)
    class(GameCommandsFactory), pointer :: this
    class(StringUtil), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(CommonStrings), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
    class(CanvasStrings), pointer :: jtemp8
    class(StringUtil), pointer :: jtemp9
    class(StringUtil), pointer :: jtemp10
    class(StringUtil), pointer :: jtemp11
    class(CanvasStrings), pointer :: jtemp12
    class(StringUtil), pointer :: jtemp13
    class(StringUtil), pointer :: jtemp14
    class(StringUtil), pointer :: jtemp15
    class(StringUtil), pointer :: jtemp16
    class(StringUtil), pointer :: jtemp17
    class(StringUtil), pointer :: jtemp18
    class(StringUtil), pointer :: jtemp19
    class(StringUtil), pointer :: jtemp20
    class(StringUtil), pointer :: jtemp21
    class(StringUtil), pointer :: jtemp22
    class(StringUtil), pointer :: jtemp23
    class(StringUtil), pointer :: jtemp24
    class(StringUtil), pointer :: jtemp25
    class(StringUtil), pointer :: jtemp26
    class(StringUtil), pointer :: jtemp27
    class(CommonStrings), pointer :: jtemp28
    class(StringUtil), pointer :: jtemp29
    class(StringUtil), pointer :: jtemp30
    class(StringUtil), pointer :: jtemp31
    class(StringUtil), pointer :: jtemp32
    class(StringUtil), pointer :: jtemp33
    allocate(this)
    this%jclass = 'GameCommandsFactory'
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_TOGGLE_FULLSCREEN => Command_jnew_4('Toggle FullScreen', jtemp3%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp4 => StringUtil_jm_getInstance_0()
    this%f_TOGGLE_KEYBOARD => Command_jnew_4('Keyboard', jtemp4%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp5 => StringUtil_jm_getInstance_0()
    this%f_SET_MENU_DISPLAYABLE => Command_jnew_4('Set Menu Displayable', jtemp5%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp6 => CommonStrings_jm_getInstance_0()
    jtemp7 => StringUtil_jm_getInstance_0()
    this%f_APPLICATION_UPDATE => Command_jnew_4(jtemp6%f_UPDATE, jtemp7%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp8 => CanvasStrings_jm_getInstance_0()
    jtemp9 => StringUtil_jm_getInstance_0()
    this%f_DISPLAY_ABOUT => Command_jnew_4(jtemp8%f_ABOUT, jtemp9%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    jtemp10 => StringUtil_jm_getInstance_0()
    this%f_OPEN_WEB_URL => Command_jnew_4('Open Web URL', jtemp10%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    jtemp11 => StringUtil_jm_getInstance_0()
    this%f_CLOSE_OPTIONS => Command_jnew_4('Back', jtemp11%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp12 => CanvasStrings_jm_getInstance_0()
    jtemp13 => StringUtil_jm_getInstance_0()
    this%f_DISPLAY_OPTIONS => Command_jnew_4(jtemp12%f_OPTIONS, jtemp13%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    jtemp14 => StringUtil_jm_getInstance_0()
    this%f_START_TRACE => Command_jnew_4('Start Trace', jtemp14%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp15 => StringUtil_jm_getInstance_0()
    this%f_STOP_TRACE => Command_jnew_4('Stop Trace', jtemp15%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp16 => StringUtil_jm_getInstance_0()
    this%f_DEFAULT_OPTIONS => Command_jnew_4('Default', jtemp16%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp17 => StringUtil_jm_getInstance_0()
    this%f_SHOW_GAME_CANVAS => Command_jnew_4('Back to Game', jtemp17%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp18 => StringUtil_jm_getInstance_0()
    this%f_CLOSE_AND_SHOW_GAME_CANVAS => Command_jnew_4('Back', jtemp18%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp19 => StringUtil_jm_getInstance_0()
    this%f_QUIT_COMMAND => Command_jnew_4('Quit', jtemp19%f_EMPTY_STRING, Command_jstatic_STOP(), 1)
    jtemp20 => StringUtil_jm_getInstance_0()
    this%f_RESTART_COMMAND => Command_jnew_4('Restart', jtemp20%f_EMPTY_STRING, Command_jstatic_SCREEN(), 0)
    jtemp21 => StringUtil_jm_getInstance_0()
    this%f_DISPLAY_SAVE_FORM => Command_jnew_4('Save To', jtemp21%f_EMPTY_STRING, Command_jstatic_SCREEN(), 3)
    jtemp22 => StringUtil_jm_getInstance_0()
    this%f_SAVE => Command_jnew_4('Save', jtemp22%f_EMPTY_STRING, Command_jstatic_SCREEN(), 3)
    jtemp23 => StringUtil_jm_getInstance_0()
    this%f_DISPLAY_LOAD_FORM => Command_jnew_4('Load', jtemp23%f_EMPTY_STRING, Command_jstatic_SCREEN(), 3)
    jtemp24 => StringUtil_jm_getInstance_0()
    this%f_LOAD_FILE => Command_jnew_4('Load File', jtemp24%f_EMPTY_STRING, Command_jstatic_SCREEN(), 3)
    jtemp25 => StringUtil_jm_getInstance_0()
    this%f_DELETE_FILE => Command_jnew_4('Delete File', jtemp25%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp26 => StringUtil_jm_getInstance_0()
    this%f_EXIT_COMMAND => Command_jnew_4('Exit', jtemp26%f_EMPTY_STRING, Command_jstatic_EXIT(), 2)
    jtemp27 => StringUtil_jm_getInstance_0()
    this%f_EXIT_WITHOUT_PROGRESS_COMMAND => Command_jnew_4('Exit Without Progress', jtemp27%f_EMPTY_STRING, Command_jstatic_EXIT(), 2)
    jtemp28 => CommonStrings_jm_getInstance_0()
    jtemp29 => StringUtil_jm_getInstance_0()
    this%f_START_COMMAND => Command_jnew_4(jtemp28%f_START, jtemp29%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp30 => StringUtil_jm_getInstance_0()
    this%f_CONTINUE_COMMAND => Command_jnew_4('Continue', jtemp30%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp31 => StringUtil_jm_getInstance_0()
    this%f_SELECT_COMMAND => Command_jnew_4('Select', jtemp31%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp32 => StringUtil_jm_getInstance_0()
    this%f_FEATURE_UPDATE => Command_jnew_4('Feature Update', jtemp32%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp33 => StringUtil_jm_getInstance_0()
    this%f_BUY_COMMAND => Command_jnew_4('BUY', jtemp33%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
        continue
  end function

  recursive function GameCommandsFactory_jm_getInstance_0() result(jresult)
    class(GameCommandsFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameCommandsFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameCommandsFactory_jsetstatic_instance(GameCommandsFactory_jnew_0())
        end if
        jresult => GameCommandsFactory_jcast(GameCommandsFactory_jstatic_instance())
        return
  end function
end module GameCommandsFactory_m

