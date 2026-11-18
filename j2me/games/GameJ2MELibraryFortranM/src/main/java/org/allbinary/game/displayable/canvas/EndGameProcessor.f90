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
module EndGameProcessor_m
  use JR_m
  use Processor_m
  use HighScores_m
  use HighScoresHelperBase_m
  use NullHighScoresSingletonFactory_m
  use GameStateFactory_m
  use NullPaintable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Processor) :: EndGameProcessor
    class(GameStateFactory), pointer :: f_gameStateFactory => null()
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
    integer(8) :: f_WAIT = 0_8
  contains
    procedure :: jm_process_0 => EndGameProcessor_jm_process_0
  end type


contains

  function EndGameProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EndGameProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EndGameProcessor)
      jresult => object
    end select
  end function

  recursive function EndGameProcessor_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(EndGameProcessor), pointer :: this
    allocate(this)
    this%jclass = 'EndGameProcessor'
    this%f_gameStateFactory => GameStateFactory_jm_getInstance_0()
    
    this%f_WAIT = 5000_8
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine EndGameProcessor_jm_process_0(this)
    class(EndGameProcessor), target :: this
    class(HighScoresHelperBase), pointer :: j_highScoresBase
    class(HighScores), pointer :: j_highScores
    class(TimeDelayHelper), pointer :: jtemp1
    class(HighScoresPaintable), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_gameCanvas%jm_isHighScoreSubmitted_0()) then
            jtemp1 => this%f_gameCanvas%jm_getGameStateTimeHelper_0()
            if (jtemp1%jm_isElapsedTNT_1(this%f_WAIT)) then
                if ((this%f_gameCanvas%jm_getGameState_0() == this%f_gameStateFactory%f_SHOW_END_RESULT_GAME_STATE)) then
                    j_highScoresBase => HighScoresHelperBase_jcast(this%f_gameCanvas%f_highScoresHelper)
                    j_highScores => j_highScoresBase%jm_getSelectedHighScores_0()
                    if ((.not. JR_same(j_highScores, NullHighScoresSingletonFactory_jm_getInstance_0()))) then
                        call j_highScoresBase%jm_selectHighScores_0()
                        jtemp2 => this%f_gameCanvas%jm_getRealHighScoresPaintable_0()
                        call jtemp2%jm_setHighScores_1(j_highScores)
                        call this%f_gameCanvas%jm_setGameState_1(this%f_gameStateFactory%f_SHOW_HIGH_SCORE_GAME_STATE)
                        call this%f_gameCanvas%jm_setHighScoresPaintable_1(this%f_gameCanvas%jm_getRealHighScoresPaintable_0())
                    end if
                else if ((this%f_gameCanvas%jm_getGameState_0() == this%f_gameStateFactory%f_SHOW_HIGH_SCORE_GAME_STATE)) then
                    call this%f_gameCanvas%jm_setGameState_1(this%f_gameStateFactory%f_SHOW_END_RESULT_GAME_STATE)
                    call this%f_gameCanvas%jm_setHighScoresPaintable_1(NullPaintable_jm_getInstance_0())
                end if
            end if
        end if
  end subroutine
end module EndGameProcessor_m

