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
module GameInfo_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use StdUtil_m
  use CommonLabels_m
  use ABHashtable_m
  use Integer_m
  use GameTypeFactory_m
  use GameMode_m
  use PlayerTypesFactory_m
  use GameInfoData_m
  use GameType_m
  use PlayerType_m
  implicit none

  type, extends(JObject) :: GameInfo
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameInfoData), pointer :: f_gameInfoData => null()
    class(GameType), pointer :: f_gameType => null()
    class(GameMode), pointer :: f_gameMode => null()
    class(PlayerType), pointer :: f_playerType => null()
    integer(4) :: f_highestLevel = 0
    integer(4) :: f_currentLevel = 0
    character(len=:), allocatable :: f_NEW_LEVEL
    character(len=:), allocatable :: f_SET_CURRENT_LEVEL
    character(len=:), allocatable :: f_NEXT_GAME_LEVEL
  contains
    procedure :: jm_getGameType_0 => GameInfo_jm_getGameType_0
    procedure :: jm_getGameMode_0 => GameInfo_jm_getGameMode_0
    procedure :: jm_getPlayerType_0 => GameInfo_jm_getPlayerType_0
    procedure :: jm_getHighestLevel_0 => GameInfo_jm_getHighestLevel_0
    procedure :: jm_setHighestLevel_1 => GameInfo_jm_setHighestLevel_1
    procedure :: jm_getCurrentLevel_0 => GameInfo_jm_getCurrentLevel_0
    procedure :: jm_setCurrentLevel_1 => GameInfo_jm_setCurrentLevel_1
    procedure :: jm_nextGameLevel_0 => GameInfo_jm_nextGameLevel_0
    procedure :: jm_previousGameLevel_0 => GameInfo_jm_previousGameLevel_0
    procedure :: jm_isLastLevel_0 => GameInfo_jm_isLastLevel_0
    procedure :: jm_toHashtable_0 => GameInfo_jm_toHashtable_0
    procedure :: jm_toString_0 => GameInfo_jm_toString_0
  end type

  class(GameInfo), pointer, save :: GameInfo_jcell_NONE => null()
  logical, save :: GameInfo_jset_NONE = .false.
  character(len=:), allocatable, save :: GameInfo_jcell_LEVEL_NAME
  logical, save :: GameInfo_jset_LEVEL_NAME = .false.

contains

  function GameInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInfo)
      jresult => object
    end select
  end function

  function GameInfo_jstatic_NONE() result(jresult)
    class(GameInfo), pointer :: jresult
    class(GameTypeFactory), pointer :: jtemp1
    class(PlayerTypesFactory), pointer :: jtemp2
    if (.not. GameInfo_jset_NONE) then
      GameInfo_jset_NONE = .true.
      jtemp1 => GameTypeFactory_jm_getInstance_0()
    jtemp2 => PlayerTypesFactory_jm_getInstance_0()
    GameInfo_jcell_NONE => GameInfo_jnew_5(jtemp1%f_NONE, GameMode_jstatic_NONE(), jtemp2%f_PLAYER_TYPE_ONE, (-1), (-1))
    end if
    jresult => GameInfo_jcell_NONE
  end function

  subroutine GameInfo_jsetstatic_NONE(jvalue)
    class(GameInfo), target, optional :: jvalue
    GameInfo_jset_NONE = .true.
    if (present(jvalue)) then
      GameInfo_jcell_NONE => jvalue
    else
      GameInfo_jcell_NONE => null()
    end if
  end subroutine

  function GameInfo_jstatic_LEVEL_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. GameInfo_jset_LEVEL_NAME) then
      GameInfo_jset_LEVEL_NAME = .true.
      GameInfo_jcell_LEVEL_NAME = 'LEVEL'
    end if
    jresult = GameInfo_jcell_LEVEL_NAME
  end function

  subroutine GameInfo_jsetstatic_LEVEL_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    GameInfo_jset_LEVEL_NAME = .true.
    GameInfo_jcell_LEVEL_NAME = jvalue
  end subroutine

  recursive function GameInfo_jnew_5(j_gameType, j_gameMode, j_playerType, j_highestLevel, j_currentLevel) result(this)
    class(GameType), target, optional :: j_gameType
    class(GameMode), target, optional :: j_gameMode
    class(PlayerType), target, optional :: j_playerType
    integer(4), value :: j_highestLevel
    integer(4), value :: j_currentLevel
    class(GameInfo), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameInfo'
    this%f_NEW_LEVEL = ''
    this%f_SET_CURRENT_LEVEL = ''
    this%f_NEXT_GAME_LEVEL = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameInfoData => GameInfoData_jm_getInstance_0()
    
    
    
    
    
    this%f_NEW_LEVEL = 'New Level: '
    this%f_SET_CURRENT_LEVEL = 'setCurrentLevel'
    this%f_NEXT_GAME_LEVEL = 'nextGameLevel'
        this%f_gameType => j_gameType
        this%f_gameMode => j_gameMode
        call this%jm_setHighestLevel_1(j_highestLevel)
        this%f_currentLevel = j_currentLevel
        this%f_playerType => j_playerType
  end function

  recursive function GameInfo_jm_getGameType_0(this) result(jresult)
    class(GameInfo), target :: this
    class(GameType), pointer :: jresult
        jresult => this%f_gameType
        return
  end function

  recursive function GameInfo_jm_getGameMode_0(this) result(jresult)
    class(GameInfo), target :: this
    class(GameMode), pointer :: jresult
        jresult => this%f_gameMode
        return
  end function

  recursive function GameInfo_jm_getPlayerType_0(this) result(jresult)
    class(GameInfo), target :: this
    class(PlayerType), pointer :: jresult
        jresult => this%f_playerType
        return
  end function

  recursive function GameInfo_jm_getHighestLevel_0(this) result(jresult)
    class(GameInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_highestLevel
        return
  end function

  recursive subroutine GameInfo_jm_setHighestLevel_1(this, j_highestLevel)
    class(GameInfo), target :: this
    integer(4), value :: j_highestLevel
        this%f_highestLevel = j_highestLevel
  end subroutine

  recursive function GameInfo_jm_getCurrentLevel_0(this) result(jresult)
    class(GameInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_currentLevel
        return
  end function

  recursive subroutine GameInfo_jm_setCurrentLevel_1(this, j_currentLevel)
    class(GameInfo), target :: this
    integer(4), value :: j_currentLevel
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_currentLevel = j_currentLevel
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(this%f_NEW_LEVEL)
        jtemp3 => jtemp4%jm_appendint_1(this%jm_getCurrentLevel_0())
        call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_SET_CURRENT_LEVEL)
  end subroutine

  recursive subroutine GameInfo_jm_nextGameLevel_0(this)
    class(GameInfo), target :: this
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(CommonLabels), pointer :: jtemp11
    class(CommonSeps), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getCurrentLevel_0() < this%jm_getHighestLevel_0())) then
            this%f_currentLevel = this%f_currentLevel + 1
        end if
        jtemp11 => CommonLabels_jm_getInstance_0()
        jtemp12 => CommonSeps_jm_getInstance_0()
        jtemp10 => StringMaker_jnew_0()
        jtemp9 => jtemp10%jm_append_1(jtemp11%f_NEXT)
        jtemp8 => jtemp9%jm_append_1(jtemp12%f_SPACE)
        jtemp7 => jtemp8%jm_append_1(this%f_NEW_LEVEL)
        jtemp6 => jtemp7%jm_appendint_1(this%jm_getCurrentLevel_0())
        call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, this%f_NEXT_GAME_LEVEL)
  end subroutine

  recursive subroutine GameInfo_jm_previousGameLevel_0(this)
    class(GameInfo), target :: this
        if ((this%jm_getCurrentLevel_0() > 1)) then
            this%f_currentLevel = this%f_currentLevel - 1
        end if
  end subroutine

  recursive function GameInfo_jm_isLastLevel_0(this) result(jresult)
    class(GameInfo), target :: this
    logical :: jresult
        if ((this%jm_getCurrentLevel_0() >= this%jm_getHighestLevel_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function GameInfo_jm_toHashtable_0(this) result(jresult)
    class(GameInfo), target :: this
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_hashtable
    class(StdUtil), pointer :: jtemp13
    class(GameType), pointer :: jtemp14
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => StdUtil_jm_getInstance_0()
        j_hashtable => jtemp13%jm_createHashtable_0()
        jtemp14 => this%jm_getGameType_0()
        jdiscardRef => j_hashtable%jm_put_2(this%f_gameInfoData%f_GAME_TYPE, jtemp14%jm_toString_0())
        jdiscardRef => j_hashtable%jm_put_2(this%f_gameInfoData%f_GAME_MODE, this%f_gameMode%jm_toString_0())
        jdiscardRef => j_hashtable%jm_put_2(this%f_gameInfoData%f_PLAYER_TYPE, this%f_playerType%jm_toString_0())
        jdiscardRef => j_hashtable%jm_put_2(this%f_gameInfoData%f_HIGHEST_LEVEL, JR_intString(this%jm_getHighestLevel_0()))
        jdiscardRef => j_hashtable%jm_put_2(this%f_gameInfoData%f_CURRENT_LEVEL, JR_intString(this%f_currentLevel))
        jresult => j_hashtable
        return
  end function

  recursive function GameInfo_jm_toString_0(this) result(jresult)
    class(GameInfo), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(GameType), pointer :: jtemp15
    class(StringUtil), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameInfoData%f_GAME_TYPE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_EQUALS)
        jtemp15 => this%jm_getGameType_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp15%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameInfoData%f_GAME_MODE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_EQUALS)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameMode%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameInfoData%f_PLAYER_TYPE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_EQUALS)
        jtemp16 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp16%jm_toString_1(this%f_playerType))
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameInfoData%f_HIGHEST_LEVEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_EQUALS)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getHighestLevel_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_gameInfoData%f_CURRENT_LEVEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_EQUALS)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_currentLevel)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module GameInfo_m

