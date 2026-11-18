! Generated Code Do Not Modify
! package org.allbinary.game.midlet
module GameMidletStateFactory_m
  use JR_m
  use GameState_m
  use GameStateFactory_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  implicit none

  type, extends(JObject) :: GameMidletStateFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameState), pointer :: f_currentGameState => null()
  contains
    procedure :: jm_getCurrentGameState_0 => GameMidletStateFactory_jm_getCurrentGameState_0
    procedure :: jm_setCurrentGameState_1 => GameMidletStateFactory_jm_setCurrentGameState_1
  end type

  class(GameMidletStateFactory), pointer, save :: GameMidletStateFactory_jcell_INSTANCE => null()
  logical, save :: GameMidletStateFactory_jset_INSTANCE = .false.

contains

  function GameMidletStateFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMidletStateFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMidletStateFactory)
      jresult => object
    end select
  end function

  function GameMidletStateFactory_jstatic_INSTANCE() result(jresult)
    class(GameMidletStateFactory), pointer :: jresult
    if (.not. GameMidletStateFactory_jset_INSTANCE) then
      GameMidletStateFactory_jset_INSTANCE = .true.
      GameMidletStateFactory_jcell_INSTANCE => GameMidletStateFactory_jnew_0()
    end if
    jresult => GameMidletStateFactory_jcell_INSTANCE
  end function

  subroutine GameMidletStateFactory_jsetstatic_INSTANCE(jvalue)
    class(GameMidletStateFactory), target, optional :: jvalue
    GameMidletStateFactory_jset_INSTANCE = .true.
    if (present(jvalue)) then
      GameMidletStateFactory_jcell_INSTANCE => jvalue
    else
      GameMidletStateFactory_jcell_INSTANCE => null()
    end if
  end subroutine

  recursive function GameMidletStateFactory_jnew_0() result(this)
    class(GameMidletStateFactory), pointer :: this
    class(GameStateFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameMidletStateFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => GameStateFactory_jm_getInstance_0()
    this%f_currentGameState => jtemp1%f_NO_GAME_STATE
        continue
  end function

  recursive function GameMidletStateFactory_jm_getInstance_0() result(jresult)
    class(GameMidletStateFactory), pointer :: jresult
        jresult => GameMidletStateFactory_jstatic_INSTANCE()
        return
  end function

  recursive function GameMidletStateFactory_jm_getCurrentGameState_0(this) result(jresult)
    class(GameMidletStateFactory), target :: this
    class(GameState), pointer :: jresult
        jresult => this%f_currentGameState
        return
  end function

  recursive subroutine GameMidletStateFactory_jm_setCurrentGameState_1(this, j_currentGameState)
    class(GameMidletStateFactory), target :: this
    class(GameState), target, optional :: j_currentGameState
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => CommonLabels_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp7 => StringUtil_jm_getInstance_0()
        jtemp4 => jtemp5%jm_append_1(jtemp6%f_CURRENT)
        jtemp3 => jtemp4%jm_append_1(' GameState: ')
        jtemp2 => jtemp3%jm_append_1(jtemp7%jm_toString_1(j_currentGameState))
        call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, 'setCurrentGameState')
        this%f_currentGameState => j_currentGameState
  end subroutine
end module GameMidletStateFactory_m

