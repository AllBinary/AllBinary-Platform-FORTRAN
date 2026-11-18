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
module BasicHighScoresGameInfoFactory_m
  use JR_m
  use GameInfo_m
  use GameTypeFactory_m
  use GameMode_m
  use PlayerTypesFactory_m
  implicit none

  type, extends(JObject) :: BasicHighScoresGameInfoFactory
    class(GameInfo), pointer :: f_MULTI_PLAYER_SERVER => null()
    class(GameInfo), pointer :: f_SINGLE_PLAYER_SERVER => null()
  end type

  class(BasicHighScoresGameInfoFactory), pointer, save :: BasicHighScoresGameInfoFactory_jcell_SINGLETON => null()
  logical, save :: BasicHighScoresGameInfoFactory_jset_SINGLETON = .false.

contains

  function BasicHighScoresGameInfoFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicHighScoresGameInfoFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicHighScoresGameInfoFactory)
      jresult => object
    end select
  end function

  function BasicHighScoresGameInfoFactory_jstatic_SINGLETON() result(jresult)
    class(BasicHighScoresGameInfoFactory), pointer :: jresult
    if (.not. BasicHighScoresGameInfoFactory_jset_SINGLETON) then
      BasicHighScoresGameInfoFactory_jset_SINGLETON = .true.
      BasicHighScoresGameInfoFactory_jcell_SINGLETON => BasicHighScoresGameInfoFactory_jnew_0()
    end if
    jresult => BasicHighScoresGameInfoFactory_jcell_SINGLETON
  end function

  subroutine BasicHighScoresGameInfoFactory_jsetstatic_SINGLETON(jvalue)
    class(BasicHighScoresGameInfoFactory), target, optional :: jvalue
    BasicHighScoresGameInfoFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      BasicHighScoresGameInfoFactory_jcell_SINGLETON => jvalue
    else
      BasicHighScoresGameInfoFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function BasicHighScoresGameInfoFactory_jnew_0() result(this)
    class(BasicHighScoresGameInfoFactory), pointer :: this
    class(GameTypeFactory), pointer :: jtemp1
    class(PlayerTypesFactory), pointer :: jtemp2
    class(GameTypeFactory), pointer :: jtemp3
    class(PlayerTypesFactory), pointer :: jtemp4
    allocate(this)
    this%jclass = 'BasicHighScoresGameInfoFactory'
    jtemp1 => GameTypeFactory_jm_getInstance_0()
    jtemp2 => PlayerTypesFactory_jm_getInstance_0()
    this%f_MULTI_PLAYER_SERVER => GameInfo_jnew_5(jtemp1%f_MULTI_PLAYER, GameMode_jstatic_SERVER(), jtemp2%f_PLAYER_TYPE_ONE, 0, 0)
    jtemp3 => GameTypeFactory_jm_getInstance_0()
    jtemp4 => PlayerTypesFactory_jm_getInstance_0()
    this%f_SINGLE_PLAYER_SERVER => GameInfo_jnew_5(jtemp3%f_SINGLE_PLAYER, GameMode_jstatic_SERVER(), jtemp4%f_PLAYER_TYPE_ONE, 0, 0)
  end function

  recursive function BasicHighScoresGameInfoFactory_jm_getInstance_0() result(jresult)
    class(BasicHighScoresGameInfoFactory), pointer :: jresult
        jresult => BasicHighScoresGameInfoFactory_jstatic_SINGLETON()
        return
  end function
end module BasicHighScoresGameInfoFactory_m

