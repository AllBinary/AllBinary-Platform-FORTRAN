! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.displayable.canvas
module NullGameCanvasRunnable_m
  use JR_m
  use GameState_m
  use GameStateFactory_m
  use StdUtil_m
  use StringUtil_m
  use ABHashtable_m
  use Thread_m
  use GameCanvasRunnableInterface_m
  implicit none

  type, extends(GameCanvasRunnableInterface) :: NullGameCanvasRunnable
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
  contains
    procedure :: jm_getTitle_0 => NullGameCanvasRunnable_jm_getTitle_0
    procedure :: jm_isInitialized_0 => NullGameCanvasRunnable_jm_isInitialized_0
    procedure :: jm_isPaused_0 => NullGameCanvasRunnable_jm_isPaused_0
    procedure :: jm_unPause_0 => NullGameCanvasRunnable_jm_unPause_0
    procedure :: jm_pause_0 => NullGameCanvasRunnable_jm_pause_0
    procedure :: jm_isHighScoreSubmitted_0 => NullGameCanvasRunnable_jm_isHighScoreSubmitted_0
    procedure :: jm_setHighScoreSubmitted_1 => NullGameCanvasRunnable_jm_setHighScoreSubmitted_1
    procedure :: jm_processGameOver_0 => NullGameCanvasRunnable_jm_processGameOver_0
    procedure :: jm_isGameOver_0 => NullGameCanvasRunnable_jm_isGameOver_0
    procedure :: jm_initCommands_1 => NullGameCanvasRunnable_jm_initCommands_1
    procedure :: jm_getCurrentStateHashtable_0 => NullGameCanvasRunnable_jm_getCurrentStateHashtable_0
    procedure :: jm_getLoadStateHashtable_0 => NullGameCanvasRunnable_jm_getLoadStateHashtable_0
    procedure :: jm_setLoadStateHashtable_1 => NullGameCanvasRunnable_jm_setLoadStateHashtable_1
    procedure :: jm_getType_0 => NullGameCanvasRunnable_jm_getType_0
    procedure :: jm_setGameState_1 => NullGameCanvasRunnable_jm_setGameState_1
    procedure :: jm_getGameState_0 => NullGameCanvasRunnable_jm_getGameState_0
    procedure :: jm_itemStateChanged_1 => NullGameCanvasRunnable_jm_itemStateChanged_1
    procedure :: jm_paint_1 => NullGameCanvasRunnable_jm_paint_1
    procedure :: jm_paintThreed_1 => NullGameCanvasRunnable_jm_paintThreed_1
    procedure :: jm_isRunning_0 => NullGameCanvasRunnable_jm_isRunning_0
    procedure :: jm_setRunning_1 => NullGameCanvasRunnable_jm_setRunning_1
    procedure :: jm_setThread_1 => NullGameCanvasRunnable_jm_setThread_1
    procedure :: jm_run_0 => NullGameCanvasRunnable_jm_run_0
  end type

  class(NullGameCanvasRunnable), pointer, save :: NullGameCanvasRunnable_jcell_NULL_GAME_CANVAS_RUNNABLE => null()
  logical, save :: NullGameCanvasRunnable_jset_NULL_GAME_CANVAS_RUNNABLE = .false.

contains

  function NullGameCanvasRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullGameCanvasRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullGameCanvasRunnable)
      jresult => object
    end select
  end function

  function NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE() result(jresult)
    class(NullGameCanvasRunnable), pointer :: jresult
    if (.not. NullGameCanvasRunnable_jset_NULL_GAME_CANVAS_RUNNABLE) then
      NullGameCanvasRunnable_jset_NULL_GAME_CANVAS_RUNNABLE = .true.
      NullGameCanvasRunnable_jcell_NULL_GAME_CANVAS_RUNNABLE => NullGameCanvasRunnable_jnew_0()
    end if
    jresult => NullGameCanvasRunnable_jcell_NULL_GAME_CANVAS_RUNNABLE
  end function

  subroutine NullGameCanvasRunnable_jsetstatic_NULL_GAME_CANVAS_RUNNABLE(jvalue)
    class(NullGameCanvasRunnable), target, optional :: jvalue
    NullGameCanvasRunnable_jset_NULL_GAME_CANVAS_RUNNABLE = .true.
    if (present(jvalue)) then
      NullGameCanvasRunnable_jcell_NULL_GAME_CANVAS_RUNNABLE => jvalue
    else
      NullGameCanvasRunnable_jcell_NULL_GAME_CANVAS_RUNNABLE => null()
    end if
  end subroutine

  function NullGameCanvasRunnable_jnew_0() result(this)
    class(NullGameCanvasRunnable), pointer :: this
    allocate(this)
    this%jclass = 'NullGameCanvasRunnable'
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
  end function

  recursive function NullGameCanvasRunnable_jm_getTitle_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function NullGameCanvasRunnable_jm_isInitialized_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function NullGameCanvasRunnable_jm_isPaused_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_unPause_0(this)
    class(NullGameCanvasRunnable), target :: this
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_pause_0(this)
    class(NullGameCanvasRunnable), target :: this
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(NullGameCanvasRunnable), target :: this
    logical, value :: j_highScoreSubmitted
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_processGameOver_0(this)
    class(NullGameCanvasRunnable), target :: this
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_isGameOver_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_initCommands_1(this, j_cmdListener)
    class(NullGameCanvasRunnable), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp2
        jtemp2 => StdUtil_jm_getInstance_0()
        jresult => jtemp2%f_NULL_TABLE
        return
  end function

  recursive function NullGameCanvasRunnable_jm_getLoadStateHashtable_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp3
        jtemp3 => StdUtil_jm_getInstance_0()
        jresult => jtemp3%f_NULL_TABLE
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(NullGameCanvasRunnable), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_getType_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_setGameState_1(this, j_gameState)
    class(NullGameCanvasRunnable), target :: this
    class(GameState), target, optional :: j_gameState
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_getGameState_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    class(GameState), pointer :: jresult
        jresult => this%f_gameStateFactory%f_NO_GAME_STATE
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_itemStateChanged_1(this, j_item)
    class(NullGameCanvasRunnable), target :: this
    class(Item), target, optional :: j_item
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_paint_1(this, j_graphics)
    class(NullGameCanvasRunnable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_paintThreed_1(this, j_graphics)
    class(NullGameCanvasRunnable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function NullGameCanvasRunnable_jm_isRunning_0(this) result(jresult)
    class(NullGameCanvasRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine NullGameCanvasRunnable_jm_setRunning_1(this, j_isRunning)
    class(NullGameCanvasRunnable), target :: this
    logical, value :: j_isRunning
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_setThread_1(this, j_thread)
    class(NullGameCanvasRunnable), target :: this
    class(Thread), target, optional :: j_thread
    continue
  end subroutine

  recursive subroutine NullGameCanvasRunnable_jm_run_0(this)
    class(NullGameCanvasRunnable), target :: this
    continue
  end subroutine
end module NullGameCanvasRunnable_m

