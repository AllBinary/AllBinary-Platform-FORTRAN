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
! package org.allbinary.game.state
module GameStateCompositeInterface_m
  use JR_m
  use GameState_m
  implicit none

  type, extends(JObject) :: GameStateCompositeInterface
  contains
    procedure :: jm_setGameState_1 => GameStateCompositeInterface_jm_setGameState_1
    procedure :: jm_getGameState_0 => GameStateCompositeInterface_jm_getGameState_0
  end type


contains

  function GameStateCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameStateCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameStateCompositeInterface)
      jresult => object
    end select
  end function

  function GameStateCompositeInterface_jnew_0() result(this)
    class(GameStateCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameStateCompositeInterface'
  end function

  recursive subroutine GameStateCompositeInterface_jm_setGameState_1(this, j_gameState)
    class(GameStateCompositeInterface), target :: this
    class(GameState), target, optional :: j_gameState
    error stop 'AbstractMethodError: GameStateCompositeInterface.setGameState'
  end subroutine

  recursive function GameStateCompositeInterface_jm_getGameState_0(this) result(jresult)
    class(GameStateCompositeInterface), target :: this
    class(GameState), pointer :: jresult
    error stop 'AbstractMethodError: GameStateCompositeInterface.getGameState'
  end function
end module GameStateCompositeInterface_m

