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
module GameStateFactory_m
  use JR_m
  use NullUtil_m
  use GameState_m
  implicit none

  type, extends(JObject) :: GameStateFactory
    integer(4) :: f_index = 0
    class(GameState), pointer :: f_NO_GAME_STATE => null()
    class(GameState), pointer :: f_PLAYING_GAME_STATE => null()
    class(GameState), pointer :: f_SHOW_END_RESULT_GAME_STATE => null()
    class(GameState), pointer :: f_SHOW_HIGH_SCORE_GAME_STATE => null()
  contains
    procedure :: jm_createGameState_1 => GameStateFactory_jm_createGameState_1
  end type

  class(JObject), pointer, save :: GameStateFactory_jcell_instance => null()
  logical, save :: GameStateFactory_jset_instance = .false.

contains

  function GameStateFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameStateFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameStateFactory)
      jresult => object
    end select
  end function

  function GameStateFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameStateFactory_jset_instance) then
      GameStateFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameStateFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameStateFactory_jcell_instance
  end function

  subroutine GameStateFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GameStateFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameStateFactory_jcell_instance => jvalue
    else
      GameStateFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameStateFactory_jnew_0() result(this)
    class(GameStateFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameStateFactory'
    this%f_index = 0
    this%f_NO_GAME_STATE => this%jm_createGameState_1('NO_GAME_STATE')
    this%f_PLAYING_GAME_STATE => this%jm_createGameState_1('PLAYING_GAME_STATE')
    this%f_SHOW_END_RESULT_GAME_STATE => this%jm_createGameState_1('SHOW_END_RESULT_GAME_STATE')
    this%f_SHOW_HIGH_SCORE_GAME_STATE => this%jm_createGameState_1('SHOW_HIGH_SCORE_GAME_STATE')
        continue
  end function

  recursive function GameStateFactory_jm_getInstance_0() result(jresult)
    class(GameStateFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameStateFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GameStateFactory_jsetstatic_instance(GameStateFactory_jnew_0())
        end if
        jresult => GameStateFactory_jcast(GameStateFactory_jstatic_instance())
        return
  end function

  recursive function GameStateFactory_jm_createGameState_1(this, j_name) result(jresult)
    class(GameStateFactory), target :: this
    character(len=*), intent(in) :: j_name
    class(GameState), pointer :: jresult
    integer(4) :: jtemp3
        jtemp3 = this%f_index
        this%f_index = this%f_index + 1
        jresult => GameState_jnew_2(j_name, jtemp3)
        return
  end function
end module GameStateFactory_m

