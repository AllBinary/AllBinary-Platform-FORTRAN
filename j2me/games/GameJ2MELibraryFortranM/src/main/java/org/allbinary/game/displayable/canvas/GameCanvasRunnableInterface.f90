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
! package org.allbinary.game.displayable.canvas
module GameCanvasRunnableInterface_m
  use JR_m
  use GameStateCompositeInterface_m
  use PaintableInterface_m
  use RunnableInterface_m
  use ABHashtable_m
  use Graphics_m
  use Item_m
  use GameState_m
  implicit none

  type, extends(RunnableInterface) :: GameCanvasRunnableInterface
  contains
    procedure :: jm_getTitle_0 => GameCanvasRunnableInterface_jm_getTitle_0
    procedure :: jm_isInitialized_0 => GameCanvasRunnableInterface_jm_isInitialized_0
    procedure :: jm_isPaused_0 => GameCanvasRunnableInterface_jm_isPaused_0
    procedure :: jm_unPause_0 => GameCanvasRunnableInterface_jm_unPause_0
    procedure :: jm_pause_0 => GameCanvasRunnableInterface_jm_pause_0
    procedure :: jm_isHighScoreSubmitted_0 => GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0
    procedure :: jm_setHighScoreSubmitted_1 => GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1
    procedure :: jm_processGameOver_0 => GameCanvasRunnableInterface_jm_processGameOver_0
    procedure :: jm_isGameOver_0 => GameCanvasRunnableInterface_jm_isGameOver_0
    procedure :: jm_initCommands_1 => GameCanvasRunnableInterface_jm_initCommands_1
    procedure :: jm_getCurrentStateHashtable_0 => GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0
    procedure :: jm_getLoadStateHashtable_0 => GameCanvasRunnableInterface_jm_getLoadStateHashtable_0
    procedure :: jm_setLoadStateHashtable_1 => GameCanvasRunnableInterface_jm_setLoadStateHashtable_1
    procedure :: jm_getType_0 => GameCanvasRunnableInterface_jm_getType_0
  end type


contains

  function GameCanvasRunnableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasRunnableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasRunnableInterface)
      jresult => object
    end select
  end function

  function GameCanvasRunnableInterface_jnew_0() result(this)
    class(GameCanvasRunnableInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameCanvasRunnableInterface'
  end function

  recursive function GameCanvasRunnableInterface_jm_getTitle_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.getTitle'
  end function

  recursive function GameCanvasRunnableInterface_jm_isInitialized_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.isInitialized'
  end function

  recursive function GameCanvasRunnableInterface_jm_isPaused_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.isPaused'
  end function

  recursive subroutine GameCanvasRunnableInterface_jm_unPause_0(this)
    class(GameCanvasRunnableInterface), target :: this
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.unPause'
  end subroutine

  recursive subroutine GameCanvasRunnableInterface_jm_pause_0(this)
    class(GameCanvasRunnableInterface), target :: this
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.pause'
  end subroutine

  recursive function GameCanvasRunnableInterface_jm_isHighScoreSubmitted_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.isHighScoreSubmitted'
  end function

  recursive subroutine GameCanvasRunnableInterface_jm_setHighScoreSubmitted_1(this, j_highScoreSubmitted)
    class(GameCanvasRunnableInterface), target :: this
    logical, value :: j_highScoreSubmitted
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.setHighScoreSubmitted'
  end subroutine

  recursive subroutine GameCanvasRunnableInterface_jm_processGameOver_0(this)
    class(GameCanvasRunnableInterface), target :: this
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.processGameOver'
  end subroutine

  recursive function GameCanvasRunnableInterface_jm_isGameOver_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.isGameOver'
  end function

  recursive subroutine GameCanvasRunnableInterface_jm_initCommands_1(this, j_cmdListener)
    class(GameCanvasRunnableInterface), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.initCommands'
  end subroutine

  recursive function GameCanvasRunnableInterface_jm_getCurrentStateHashtable_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.getCurrentStateHashtable'
  end function

  recursive function GameCanvasRunnableInterface_jm_getLoadStateHashtable_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.getLoadStateHashtable'
  end function

  recursive subroutine GameCanvasRunnableInterface_jm_setLoadStateHashtable_1(this, j_hashtable)
    class(GameCanvasRunnableInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.setLoadStateHashtable'
  end subroutine

  recursive function GameCanvasRunnableInterface_jm_getType_0(this) result(jresult)
    class(GameCanvasRunnableInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: GameCanvasRunnableInterface.getType'
  end function
end module GameCanvasRunnableInterface_m

