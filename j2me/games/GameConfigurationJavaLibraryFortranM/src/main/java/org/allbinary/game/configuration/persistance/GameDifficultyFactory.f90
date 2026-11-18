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
module GameDifficultyFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameDifficultyFactory
    integer(4) :: f_level = 0
  contains
    procedure :: jm_setLevel_1 => GameDifficultyFactory_jm_setLevel_1
    procedure :: jm_getLevel_0 => GameDifficultyFactory_jm_getLevel_0
  end type

  class(GameDifficultyFactory), pointer, save :: GameDifficultyFactory_jcell_instance => null()
  logical, save :: GameDifficultyFactory_jset_instance = .false.

contains

  function GameDifficultyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameDifficultyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameDifficultyFactory)
      jresult => object
    end select
  end function

  function GameDifficultyFactory_jstatic_instance() result(jresult)
    class(GameDifficultyFactory), pointer :: jresult
    if (.not. GameDifficultyFactory_jset_instance) then
      GameDifficultyFactory_jset_instance = .true.
      GameDifficultyFactory_jcell_instance => GameDifficultyFactory_jnew_0()
    end if
    jresult => GameDifficultyFactory_jcell_instance
  end function

  subroutine GameDifficultyFactory_jsetstatic_instance(jvalue)
    class(GameDifficultyFactory), target, optional :: jvalue
    GameDifficultyFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameDifficultyFactory_jcell_instance => jvalue
    else
      GameDifficultyFactory_jcell_instance => null()
    end if
  end subroutine

  function GameDifficultyFactory_jnew_0() result(this)
    class(GameDifficultyFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameDifficultyFactory'
    this%f_level = 0
  end function

  recursive function GameDifficultyFactory_jm_getInstance_0() result(jresult)
    class(GameDifficultyFactory), pointer :: jresult
        jresult => GameDifficultyFactory_jstatic_instance()
        return
  end function

  recursive subroutine GameDifficultyFactory_jm_setLevel_1(this, j_level)
    class(GameDifficultyFactory), target :: this
    integer(4), value :: j_level
        this%f_level = j_level
  end subroutine

  recursive function GameDifficultyFactory_jm_getLevel_0(this) result(jresult)
    class(GameDifficultyFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_level
        return
  end function
end module GameDifficultyFactory_m

