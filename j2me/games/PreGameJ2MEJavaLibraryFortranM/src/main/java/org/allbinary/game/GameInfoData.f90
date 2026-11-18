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
module GameInfoData_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameInfoData
    character(len=:), allocatable :: f_GAME_TYPE
    character(len=:), allocatable :: f_GAME_MODE
    character(len=:), allocatable :: f_PLAYER_TYPE
    character(len=:), allocatable :: f_HIGHEST_LEVEL
    character(len=:), allocatable :: f_CURRENT_LEVEL
    character(len=:), allocatable :: f_SOFTWARE_INFORMATION
  end type

  class(GameInfoData), pointer, save :: GameInfoData_jcell_instance => null()
  logical, save :: GameInfoData_jset_instance = .false.

contains

  function GameInfoData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInfoData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInfoData)
      jresult => object
    end select
  end function

  function GameInfoData_jstatic_instance() result(jresult)
    class(GameInfoData), pointer :: jresult
    if (.not. GameInfoData_jset_instance) then
      GameInfoData_jset_instance = .true.
      GameInfoData_jcell_instance => GameInfoData_jnew_0()
    end if
    jresult => GameInfoData_jcell_instance
  end function

  subroutine GameInfoData_jsetstatic_instance(jvalue)
    class(GameInfoData), target, optional :: jvalue
    GameInfoData_jset_instance = .true.
    if (present(jvalue)) then
      GameInfoData_jcell_instance => jvalue
    else
      GameInfoData_jcell_instance => null()
    end if
  end subroutine

  recursive function GameInfoData_jnew_0() result(this)
    class(GameInfoData), pointer :: this
    allocate(this)
    this%jclass = 'GameInfoData'
    this%f_GAME_TYPE = ''
    this%f_GAME_MODE = ''
    this%f_PLAYER_TYPE = ''
    this%f_HIGHEST_LEVEL = ''
    this%f_CURRENT_LEVEL = ''
    this%f_SOFTWARE_INFORMATION = ''
    this%f_GAME_TYPE = 'GAME_TYPE'
    this%f_GAME_MODE = 'GAME_MODE'
    this%f_PLAYER_TYPE = 'PLAYER_TYPE'
    this%f_HIGHEST_LEVEL = 'HIGHEST_LEVEL'
    this%f_CURRENT_LEVEL = 'CURRENT_LEVEL'
    this%f_SOFTWARE_INFORMATION = 'SOFTWARE_INFORMATION'
        continue
  end function

  recursive function GameInfoData_jm_getInstance_0() result(jresult)
    class(GameInfoData), pointer :: jresult
        jresult => GameInfoData_jstatic_instance()
        return
  end function
end module GameInfoData_m

