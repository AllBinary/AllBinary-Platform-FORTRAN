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
module PlayerTypesFactory_m
  use JR_m
  use PlayerType_m
  implicit none

  type, extends(JObject) :: PlayerTypesFactory
    class(PlayerType), pointer :: f_PLAYER_TYPE_ONE => null()
    class(PlayerType), pointer :: f_PLAYER_TYPE_TWO => null()
    class(PlayerType), pointer :: f_PLAYER_TYPE_THREE => null()
  end type

  class(PlayerTypesFactory), pointer, save :: PlayerTypesFactory_jcell_SINGLETON => null()
  logical, save :: PlayerTypesFactory_jset_SINGLETON = .false.

contains

  function PlayerTypesFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerTypesFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerTypesFactory)
      jresult => object
    end select
  end function

  function PlayerTypesFactory_jstatic_SINGLETON() result(jresult)
    class(PlayerTypesFactory), pointer :: jresult
    if (.not. PlayerTypesFactory_jset_SINGLETON) then
      PlayerTypesFactory_jset_SINGLETON = .true.
      PlayerTypesFactory_jcell_SINGLETON => PlayerTypesFactory_jnew_0()
    end if
    jresult => PlayerTypesFactory_jcell_SINGLETON
  end function

  subroutine PlayerTypesFactory_jsetstatic_SINGLETON(jvalue)
    class(PlayerTypesFactory), target, optional :: jvalue
    PlayerTypesFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      PlayerTypesFactory_jcell_SINGLETON => jvalue
    else
      PlayerTypesFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function PlayerTypesFactory_jnew_0() result(this)
    class(PlayerTypesFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlayerTypesFactory'
    this%f_PLAYER_TYPE_ONE => PlayerType_jnew_2('Player Type One', 0)
    this%f_PLAYER_TYPE_TWO => PlayerType_jnew_2('Player Type Two', 1)
    this%f_PLAYER_TYPE_THREE => PlayerType_jnew_2('Player Type Three', 2)
  end function

  recursive function PlayerTypesFactory_jm_getInstance_0() result(jresult)
    class(PlayerTypesFactory), pointer :: jresult
        jresult => PlayerTypesFactory_jstatic_SINGLETON()
        return
  end function
end module PlayerTypesFactory_m

