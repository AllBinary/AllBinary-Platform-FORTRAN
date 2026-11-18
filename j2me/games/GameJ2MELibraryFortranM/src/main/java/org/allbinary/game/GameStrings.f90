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
! package org.allbinary.game
module GameStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameStrings
    character(len=:), allocatable :: f_PROCESS_TICK
    character(len=:), allocatable :: f_ON_GAME_INITIALIZED
    character(len=:), allocatable :: f_UPDATESURFACE
    character(len=:), allocatable :: f_ON_SET_DISPLAYABLE
    character(len=:), allocatable :: f_UNPAUSE
    character(len=:), allocatable :: f_TOGGLE_MENU
    character(len=:), allocatable :: f_SET_GAME_OVER
    character(len=:), allocatable :: f_GAME_STATE
    character(len=:), allocatable :: f_SET_GAME_STATE
    character(len=:), allocatable :: f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE
  end type

  class(GameStrings), pointer, save :: GameStrings_jcell_instance => null()
  logical, save :: GameStrings_jset_instance = .false.

contains

  function GameStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameStrings)
      jresult => object
    end select
  end function

  function GameStrings_jstatic_instance() result(jresult)
    class(GameStrings), pointer :: jresult
    if (.not. GameStrings_jset_instance) then
      GameStrings_jset_instance = .true.
      GameStrings_jcell_instance => GameStrings_jnew_0()
    end if
    jresult => GameStrings_jcell_instance
  end function

  subroutine GameStrings_jsetstatic_instance(jvalue)
    class(GameStrings), target, optional :: jvalue
    GameStrings_jset_instance = .true.
    if (present(jvalue)) then
      GameStrings_jcell_instance => jvalue
    else
      GameStrings_jcell_instance => null()
    end if
  end subroutine

  function GameStrings_jnew_0() result(this)
    class(GameStrings), pointer :: this
    allocate(this)
    this%jclass = 'GameStrings'
    this%f_PROCESS_TICK = ''
    this%f_ON_GAME_INITIALIZED = ''
    this%f_UPDATESURFACE = ''
    this%f_ON_SET_DISPLAYABLE = ''
    this%f_UNPAUSE = ''
    this%f_TOGGLE_MENU = ''
    this%f_SET_GAME_OVER = ''
    this%f_GAME_STATE = ''
    this%f_SET_GAME_STATE = ''
    this%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE = ''
    this%f_PROCESS_TICK = 'processTick'
    this%f_ON_GAME_INITIALIZED = 'onGameInitialized'
    this%f_UPDATESURFACE = 'updateSurface'
    this%f_ON_SET_DISPLAYABLE = 'onSetDisplayable'
    this%f_UNPAUSE = 'unPause'
    this%f_TOGGLE_MENU = 'toggleMenu'
    this%f_SET_GAME_OVER = 'setGameOver'
    this%f_GAME_STATE = 'Game State: '
    this%f_SET_GAME_STATE = 'setGameState'
    this%f_STOP_GAME_CANVAS_RUNNABLE_INTERFACE = 'stopGameCanvasRunnableInterface'
  end function

  recursive function GameStrings_jm_getInstance_0() result(jresult)
    class(GameStrings), pointer :: jresult
        jresult => GameStrings_jstatic_instance()
        return
  end function
end module GameStrings_m

