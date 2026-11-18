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
module PersistanceStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: PersistanceStrings
    character(len=:), allocatable :: f_SAVING
    character(len=:), allocatable :: f_NUMBER_OF_RECORDS
    character(len=:), allocatable :: f_LOADING_ID
    character(len=:), allocatable :: f_LOAD_ALL
    character(len=:), allocatable :: f_DELETING_WITH_ID
    character(len=:), allocatable :: f_CLOSING_RECORDSTORE
    character(len=:), allocatable :: f_NOT_SAVING
    character(len=:), allocatable :: f_ERROR_LOADING
    character(len=:), allocatable :: f_ERROR_LOADING_ID
    character(len=:), allocatable :: f_ID
    character(len=:), allocatable :: f_GAME_ACTION_INPUT
  end type

  class(PersistanceStrings), pointer, save :: PersistanceStrings_jcell_instance => null()
  logical, save :: PersistanceStrings_jset_instance = .false.

contains

  function PersistanceStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PersistanceStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PersistanceStrings)
      jresult => object
    end select
  end function

  function PersistanceStrings_jstatic_instance() result(jresult)
    class(PersistanceStrings), pointer :: jresult
    if (.not. PersistanceStrings_jset_instance) then
      PersistanceStrings_jset_instance = .true.
      PersistanceStrings_jcell_instance => PersistanceStrings_jnew_0()
    end if
    jresult => PersistanceStrings_jcell_instance
  end function

  subroutine PersistanceStrings_jsetstatic_instance(jvalue)
    class(PersistanceStrings), target, optional :: jvalue
    PersistanceStrings_jset_instance = .true.
    if (present(jvalue)) then
      PersistanceStrings_jcell_instance => jvalue
    else
      PersistanceStrings_jcell_instance => null()
    end if
  end subroutine

  function PersistanceStrings_jnew_0() result(this)
    class(PersistanceStrings), pointer :: this
    allocate(this)
    this%jclass = 'PersistanceStrings'
    this%f_SAVING = ''
    this%f_NUMBER_OF_RECORDS = ''
    this%f_LOADING_ID = ''
    this%f_LOAD_ALL = ''
    this%f_DELETING_WITH_ID = ''
    this%f_CLOSING_RECORDSTORE = ''
    this%f_NOT_SAVING = ''
    this%f_ERROR_LOADING = ''
    this%f_ERROR_LOADING_ID = ''
    this%f_ID = ''
    this%f_GAME_ACTION_INPUT = ''
    this%f_SAVING = 'Saving: '
    this%f_NUMBER_OF_RECORDS = 'Number of records: '
    this%f_LOADING_ID = 'Loading data with id: '
    this%f_LOAD_ALL = 'loadAll'
    this%f_DELETING_WITH_ID = 'Deleting data with id: '
    this%f_CLOSING_RECORDSTORE = 'Closing RecordStore'
    this%f_NOT_SAVING = 'Not Saving: '
    this%f_ERROR_LOADING = 'Error Loading gameActionInput: '
    this%f_ERROR_LOADING_ID = 'Error Loading id: '
    this%f_ID = ' id: '
    this%f_GAME_ACTION_INPUT = ' GameActionInput: '
  end function

  recursive function PersistanceStrings_jm_getInstance_0() result(jresult)
    class(PersistanceStrings), pointer :: jresult
        jresult => PersistanceStrings_jstatic_instance()
        return
  end function
end module PersistanceStrings_m

