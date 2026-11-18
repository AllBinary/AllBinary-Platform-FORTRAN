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
module GameInfoCopyFactory_m
  use JR_m
  use GameInfo_m
  implicit none

  type, extends(JObject) :: GameInfoCopyFactory
  end type


contains

  function GameInfoCopyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInfoCopyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInfoCopyFactory)
      jresult => object
    end select
  end function

  function GameInfoCopyFactory_jnew_0() result(this)
    class(GameInfoCopyFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameInfoCopyFactory'
  end function

  recursive function GameInfoCopyFactory_jm_getInstanceMaxLevel_2(j_gameInfo, j_maxLevel) result(jresult)
    class(GameInfo), target, optional :: j_gameInfo
    integer(4), value :: j_maxLevel
    class(GameInfo), pointer :: jresult
        jresult => GameInfo_jnew_5(j_gameInfo%jm_getGameType_0(), j_gameInfo%jm_getGameMode_0(), j_gameInfo%jm_getPlayerType_0(), j_maxLevel, j_gameInfo%jm_getCurrentLevel_0())
        return
  end function

  recursive function GameInfoCopyFactory_jm_getInstance_1(j_gameInfo) result(jresult)
    class(GameInfo), target, optional :: j_gameInfo
    class(GameInfo), pointer :: jresult
        jresult => GameInfo_jnew_5(j_gameInfo%jm_getGameType_0(), j_gameInfo%jm_getGameMode_0(), j_gameInfo%jm_getPlayerType_0(), j_gameInfo%jm_getHighestLevel_0(), j_gameInfo%jm_getCurrentLevel_0())
        return
  end function
end module GameInfoCopyFactory_m

