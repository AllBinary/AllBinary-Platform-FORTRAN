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
module EndGameInfo_m
  use JR_m
  use GameInfo_m
  use MyCanvas_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: EndGameInfo
    character(len=:), allocatable :: f_NORMAL_GAME_OVER_WIN
    character(len=:), allocatable :: f_TEASER_DEMO_GAME_END_LAST_LEVEL
    character(len=:), allocatable :: f_TEASER_DEMO_GAME_END
    character(len=:), allocatable :: f_gameOverStr
    character(len=:), allocatable :: f_winStr
  contains
    procedure :: jm_update_2 => EndGameInfo_jm_update_2
    procedure :: jm_getGameOverStr_0 => EndGameInfo_jm_getGameOverStr_0
    procedure :: jm_setGameOverStr_1 => EndGameInfo_jm_setGameOverStr_1
    procedure :: jm_getWinStr_0 => EndGameInfo_jm_getWinStr_0
    procedure :: jm_setWinStr_1 => EndGameInfo_jm_setWinStr_1
  end type


contains

  function EndGameInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EndGameInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EndGameInfo)
      jresult => object
    end select
  end function

  function EndGameInfo_jnew_0() result(this)
    class(EndGameInfo), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'EndGameInfo'
    this%f_NORMAL_GAME_OVER_WIN = ''
    this%f_TEASER_DEMO_GAME_END_LAST_LEVEL = ''
    this%f_TEASER_DEMO_GAME_END = ''
    this%f_gameOverStr = ''
    this%f_winStr = ''
    this%f_NORMAL_GAME_OVER_WIN = 'You Won'
    this%f_TEASER_DEMO_GAME_END_LAST_LEVEL = 'End of Demo.'
    this%f_TEASER_DEMO_GAME_END = 'Demo Game Over.'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_gameOverStr = jtemp1%f_EMPTY_STRING
    this%f_winStr = this%f_gameOverStr
  end function

  recursive subroutine EndGameInfo_jm_update_2(this, j_gameInfo, j_myCanvas)
    class(EndGameInfo), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(MyCanvas), target, optional :: j_myCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_gameInfo%jm_isLastLevel_0()) then
            call this%jm_setWinStr_1(this%f_TEASER_DEMO_GAME_END_LAST_LEVEL)
            call this%jm_setGameOverStr_1(this%f_TEASER_DEMO_GAME_END_LAST_LEVEL)
        else
            call this%jm_setWinStr_1(this%f_NORMAL_GAME_OVER_WIN)
            call this%jm_setGameOverStr_1(this%f_TEASER_DEMO_GAME_END)
        end if
  end subroutine

  recursive function EndGameInfo_jm_getGameOverStr_0(this) result(jresult)
    class(EndGameInfo), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_gameOverStr
        return
  end function

  recursive subroutine EndGameInfo_jm_setGameOverStr_1(this, j_gameOverStr)
    class(EndGameInfo), target :: this
    character(len=*), intent(in) :: j_gameOverStr
        this%f_gameOverStr = j_gameOverStr
  end subroutine

  recursive function EndGameInfo_jm_getWinStr_0(this) result(jresult)
    class(EndGameInfo), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_winStr
        return
  end function

  recursive subroutine EndGameInfo_jm_setWinStr_1(this, j_winStr)
    class(EndGameInfo), target :: this
    character(len=*), intent(in) :: j_winStr
        this%f_winStr = j_winStr
  end subroutine
end module EndGameInfo_m

