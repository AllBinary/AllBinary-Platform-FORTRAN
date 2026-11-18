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
! package org.allbinary.game.configuration.persistance
module GameConfigurationPersistanceSingleton_m
  use JR_m
  use KeyValuePersistance_m
  use GamePersistanceStrings_m
  implicit none

  type, extends(KeyValuePersistance) :: GameConfigurationPersistanceSingleton
  end type

  class(GameConfigurationPersistanceSingleton), pointer, save :: GameConfigurationPersistanceSingleton_jcell_GAME_PERSISTANCE => null()
  logical, save :: GameConfigurationPersistanceSingleton_jset_GAME_PERSISTANCE = .false.

contains

  function GameConfigurationPersistanceSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationPersistanceSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationPersistanceSingleton)
      jresult => object
    end select
  end function

  function GameConfigurationPersistanceSingleton_jstatic_GAME_PERSISTANCE() result(jresult)
    class(GameConfigurationPersistanceSingleton), pointer :: jresult
    if (.not. GameConfigurationPersistanceSingleton_jset_GAME_PERSISTANCE) then
      GameConfigurationPersistanceSingleton_jset_GAME_PERSISTANCE = .true.
      GameConfigurationPersistanceSingleton_jcell_GAME_PERSISTANCE => GameConfigurationPersistanceSingleton_jnew_0()
    end if
    jresult => GameConfigurationPersistanceSingleton_jcell_GAME_PERSISTANCE
  end function

  subroutine GameConfigurationPersistanceSingleton_jsetstatic_GAME_PERSISTANCE(jvalue)
    class(GameConfigurationPersistanceSingleton), target, optional :: jvalue
    GameConfigurationPersistanceSingleton_jset_GAME_PERSISTANCE = .true.
    if (present(jvalue)) then
      GameConfigurationPersistanceSingleton_jcell_GAME_PERSISTANCE => jvalue
    else
      GameConfigurationPersistanceSingleton_jcell_GAME_PERSISTANCE => null()
    end if
  end subroutine

  recursive function GameConfigurationPersistanceSingleton_jnew_0() result(this)
    class(GameConfigurationPersistanceSingleton), pointer :: this
    class(GamePersistanceStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameConfigurationPersistanceSingleton'
        jtemp1 => GamePersistanceStrings_jm_getInstance_0()
        continue ! super()
  end function

  recursive function GameConfigurationPersistanceSingleton_jm_getInstance_0() result(jresult)
    class(GameConfigurationPersistanceSingleton), pointer :: jresult
        jresult => GameConfigurationPersistanceSingleton_jstatic_GAME_PERSISTANCE()
        return
  end function
end module GameConfigurationPersistanceSingleton_m

function GameConfigurationPersistanceSingleton_jnew_0_jext() result(this)
  use GameConfigurationPersistanceSingleton_m, only: JObject, GameConfigurationPersistanceSingleton_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameConfigurationPersistanceSingleton_jnew_0()
end function

