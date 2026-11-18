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
! package org.allbinary.game.input
module GameInputStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameInputStrings
    character(len=:), allocatable :: f_PROCESS_INPUT
    character(len=:), allocatable :: f_KEY_PRESSED
    character(len=:), allocatable :: f_KEY_RELEASED
    character(len=:), allocatable :: f_KEY_REPEATED
    character(len=:), allocatable :: f_ON_PRESS_GAME_KEY
    character(len=:), allocatable :: f_ON_DOWN_GAME_KEY
    character(len=:), allocatable :: f_ON_UP_GAME_KEY
    character(len=:), allocatable :: f_NO_KEY
    character(len=:), allocatable :: f_ADD_KEY_EVENT
    character(len=:), allocatable :: f_REMOVE_KEY_EVENT
    character(len=:), allocatable :: f_STRAFE_LEFT
    character(len=:), allocatable :: f_STRAFE_RIGHT
    character(len=:), allocatable :: f_PROCESS_MOTION_INPUT
    character(len=:), allocatable :: f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY
    character(len=:), allocatable :: f_ENABLE_PLAYER_GAME_INPUTS
    character(len=:), allocatable :: f_ENABLE_PLAYER_GAME_INPUT
  end type

  class(GameInputStrings), pointer, save :: GameInputStrings_jcell_instance => null()
  logical, save :: GameInputStrings_jset_instance = .false.

contains

  function GameInputStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputStrings)
      jresult => object
    end select
  end function

  function GameInputStrings_jstatic_instance() result(jresult)
    class(GameInputStrings), pointer :: jresult
    if (.not. GameInputStrings_jset_instance) then
      GameInputStrings_jset_instance = .true.
      GameInputStrings_jcell_instance => GameInputStrings_jnew_0()
    end if
    jresult => GameInputStrings_jcell_instance
  end function

  subroutine GameInputStrings_jsetstatic_instance(jvalue)
    class(GameInputStrings), target, optional :: jvalue
    GameInputStrings_jset_instance = .true.
    if (present(jvalue)) then
      GameInputStrings_jcell_instance => jvalue
    else
      GameInputStrings_jcell_instance => null()
    end if
  end subroutine

  function GameInputStrings_jnew_0() result(this)
    class(GameInputStrings), pointer :: this
    allocate(this)
    this%jclass = 'GameInputStrings'
    this%f_PROCESS_INPUT = ''
    this%f_KEY_PRESSED = ''
    this%f_KEY_RELEASED = ''
    this%f_KEY_REPEATED = ''
    this%f_ON_PRESS_GAME_KEY = ''
    this%f_ON_DOWN_GAME_KEY = ''
    this%f_ON_UP_GAME_KEY = ''
    this%f_NO_KEY = ''
    this%f_ADD_KEY_EVENT = ''
    this%f_REMOVE_KEY_EVENT = ''
    this%f_STRAFE_LEFT = ''
    this%f_STRAFE_RIGHT = ''
    this%f_PROCESS_MOTION_INPUT = ''
    this%f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY = ''
    this%f_ENABLE_PLAYER_GAME_INPUTS = ''
    this%f_ENABLE_PLAYER_GAME_INPUT = ''
    this%f_PROCESS_INPUT = 'processInput'
    this%f_KEY_PRESSED = 'keyPressed'
    this%f_KEY_RELEASED = 'keyReleased'
    this%f_KEY_REPEATED = 'keyRepeated'
    this%f_ON_PRESS_GAME_KEY = 'onPressGameKeyEvent'
    this%f_ON_DOWN_GAME_KEY = 'onDownGameKeyEvent'
    this%f_ON_UP_GAME_KEY = 'onUpGameKeyEvent'
    this%f_NO_KEY = 'Key Code Not Mapped For Game: '
    this%f_ADD_KEY_EVENT = 'addGameKeyEvent'
    this%f_REMOVE_KEY_EVENT = 'removeGameKeyEvent'
    this%f_STRAFE_LEFT = 'strafeLeft'
    this%f_STRAFE_RIGHT = 'strafeRight'
    this%f_PROCESS_MOTION_INPUT = 'processMotionInput'
    this%f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY = 'updateCurrentTouchInputFactory'
    this%f_ENABLE_PLAYER_GAME_INPUTS = 'Enabling PlayerGameInputs: '
    this%f_ENABLE_PLAYER_GAME_INPUT = 'Enabling PlayerGameInput: '
  end function

  recursive function GameInputStrings_jm_getInstance_0() result(jresult)
    class(GameInputStrings), pointer :: jresult
        jresult => GameInputStrings_jstatic_instance()
        return
  end function
end module GameInputStrings_m

