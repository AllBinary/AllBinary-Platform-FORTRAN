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
module GamePersistanceSingleton_m
  use JR_m
  use KeyValuePersistance_m
  use GamePersistanceStrings_m
  implicit none

  type, extends(KeyValuePersistance) :: GamePersistanceSingleton
  end type

  class(GamePersistanceSingleton), pointer, save :: GamePersistanceSingleton_jcell_GAME_PERSISTANCE => null()
  logical, save :: GamePersistanceSingleton_jset_GAME_PERSISTANCE = .false.

contains

  function GamePersistanceSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GamePersistanceSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GamePersistanceSingleton)
      jresult => object
    end select
  end function

  function GamePersistanceSingleton_jstatic_GAME_PERSISTANCE() result(jresult)
    class(GamePersistanceSingleton), pointer :: jresult
    if (.not. GamePersistanceSingleton_jset_GAME_PERSISTANCE) then
      GamePersistanceSingleton_jset_GAME_PERSISTANCE = .true.
      GamePersistanceSingleton_jcell_GAME_PERSISTANCE => GamePersistanceSingleton_jnew_0()
    end if
    jresult => GamePersistanceSingleton_jcell_GAME_PERSISTANCE
  end function

  subroutine GamePersistanceSingleton_jsetstatic_GAME_PERSISTANCE(jvalue)
    class(GamePersistanceSingleton), target, optional :: jvalue
    GamePersistanceSingleton_jset_GAME_PERSISTANCE = .true.
    if (present(jvalue)) then
      GamePersistanceSingleton_jcell_GAME_PERSISTANCE => jvalue
    else
      GamePersistanceSingleton_jcell_GAME_PERSISTANCE => null()
    end if
  end subroutine

  recursive function GamePersistanceSingleton_jnew_0() result(this)
    class(GamePersistanceSingleton), pointer :: this
    class(GamePersistanceStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GamePersistanceSingleton'
        jtemp1 => GamePersistanceStrings_jm_getInstance_0()
        continue ! super()
  end function

  recursive function GamePersistanceSingleton_jm_getInstance_0() result(jresult)
    class(GamePersistanceSingleton), pointer :: jresult
        jresult => GamePersistanceSingleton_jstatic_GAME_PERSISTANCE()
        return
  end function
end module GamePersistanceSingleton_m

function GamePersistanceSingleton_jnew_0_jext() result(this)
  use GamePersistanceSingleton_m, only: JObject, GamePersistanceSingleton_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GamePersistanceSingleton_jnew_0()
end function

