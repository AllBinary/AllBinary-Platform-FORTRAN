! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module GamePersistanceStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: GamePersistanceStrings
    character(len=:), allocatable :: f_SAVED_GAME_RECORD_ID
    character(len=:), allocatable :: f_SAVED_GAME_CONFIGURATION_RECORD_ID
    character(len=:), allocatable :: f_DEFAULT_INPUT_MAPPING_RECORD_ID
    character(len=:), allocatable :: f_SAVED_INPUT_CONFIGURATION_RECORD_ID
  end type

  class(GamePersistanceStrings), pointer, save :: GamePersistanceStrings_jcell_instance => null()
  logical, save :: GamePersistanceStrings_jset_instance = .false.

contains

  function GamePersistanceStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GamePersistanceStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GamePersistanceStrings)
      jresult => object
    end select
  end function

  function GamePersistanceStrings_jstatic_instance() result(jresult)
    class(GamePersistanceStrings), pointer :: jresult
    if (.not. GamePersistanceStrings_jset_instance) then
      GamePersistanceStrings_jset_instance = .true.
      GamePersistanceStrings_jcell_instance => GamePersistanceStrings_jnew_0()
    end if
    jresult => GamePersistanceStrings_jcell_instance
  end function

  subroutine GamePersistanceStrings_jsetstatic_instance(jvalue)
    class(GamePersistanceStrings), target, optional :: jvalue
    GamePersistanceStrings_jset_instance = .true.
    if (present(jvalue)) then
      GamePersistanceStrings_jcell_instance => jvalue
    else
      GamePersistanceStrings_jcell_instance => null()
    end if
  end subroutine

  function GamePersistanceStrings_jnew_0() result(this)
    class(GamePersistanceStrings), pointer :: this
    allocate(this)
    this%jclass = 'GamePersistanceStrings'
    this%f_SAVED_GAME_RECORD_ID = ''
    this%f_SAVED_GAME_CONFIGURATION_RECORD_ID = ''
    this%f_DEFAULT_INPUT_MAPPING_RECORD_ID = ''
    this%f_SAVED_INPUT_CONFIGURATION_RECORD_ID = ''
    this%f_SAVED_GAME_RECORD_ID = '_SG'
    this%f_SAVED_GAME_CONFIGURATION_RECORD_ID = '_SGC'
    this%f_DEFAULT_INPUT_MAPPING_RECORD_ID = '_DIM'
    this%f_SAVED_INPUT_CONFIGURATION_RECORD_ID = '_SIC'
  end function

  recursive function GamePersistanceStrings_jm_getInstance_0() result(jresult)
    class(GamePersistanceStrings), pointer :: jresult
        jresult => GamePersistanceStrings_jstatic_instance()
        return
  end function
end module GamePersistanceStrings_m

