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
module IntermissionFactory_m
  use JR_m
  use GameState_m
  use GameStateFactory_m
  implicit none

  type, extends(JObject) :: IntermissionFactory
    class(GameState), pointer :: f_START_LEVEL_INTERMISSION_GAME_STATE => null()
    class(GameState), pointer :: f_WAIT_LEVEL_INTERMISSION_GAME_STATE => null()
    class(GameState), pointer :: f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE => null()
    class(GameState), pointer :: f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE => null()
  end type

  class(IntermissionFactory), pointer, save :: IntermissionFactory_jcell_instance => null()
  logical, save :: IntermissionFactory_jset_instance = .false.

contains

  function IntermissionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IntermissionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IntermissionFactory)
      jresult => object
    end select
  end function

  function IntermissionFactory_jstatic_instance() result(jresult)
    class(IntermissionFactory), pointer :: jresult
    if (.not. IntermissionFactory_jset_instance) then
      IntermissionFactory_jset_instance = .true.
      IntermissionFactory_jcell_instance => IntermissionFactory_jnew_0()
    end if
    jresult => IntermissionFactory_jcell_instance
  end function

  subroutine IntermissionFactory_jsetstatic_instance(jvalue)
    class(IntermissionFactory), target, optional :: jvalue
    IntermissionFactory_jset_instance = .true.
    if (present(jvalue)) then
      IntermissionFactory_jcell_instance => jvalue
    else
      IntermissionFactory_jcell_instance => null()
    end if
  end subroutine

  function IntermissionFactory_jnew_0() result(this)
    class(IntermissionFactory), pointer :: this
    class(GameStateFactory), pointer :: jtemp1
    class(GameStateFactory), pointer :: jtemp2
    class(GameStateFactory), pointer :: jtemp3
    class(GameStateFactory), pointer :: jtemp4
    allocate(this)
    this%jclass = 'IntermissionFactory'
    jtemp1 => GameStateFactory_jm_getInstance_0()
    this%f_START_LEVEL_INTERMISSION_GAME_STATE => jtemp1%jm_createGameState_1('START_LEVEL_INTERMISSION_GAME_STATE')
    jtemp2 => GameStateFactory_jm_getInstance_0()
    this%f_WAIT_LEVEL_INTERMISSION_GAME_STATE => jtemp2%jm_createGameState_1('WAIT_LEVEL_INTERMISSION_GAME_STATE')
    jtemp3 => GameStateFactory_jm_getInstance_0()
    this%f_SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE => jtemp3%jm_createGameState_1('SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE')
    jtemp4 => GameStateFactory_jm_getInstance_0()
    this%f_SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE => jtemp4%jm_createGameState_1('SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE')
  end function

  recursive function IntermissionFactory_jm_getInstance_0() result(jresult)
    class(IntermissionFactory), pointer :: jresult
        jresult => IntermissionFactory_jstatic_instance()
        return
  end function
end module IntermissionFactory_m

