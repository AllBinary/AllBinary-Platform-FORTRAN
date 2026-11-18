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
! package org.allbinary.string
module CommonStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: CommonStrings
    character(len=:), allocatable :: f_EMPTY
    character(len=:), allocatable :: f_CREATE_IMAGE
    character(len=:), allocatable :: f_PLEASE_WAIT
    character(len=:), allocatable :: f_PLEASE_WAIT_FOR_SERVER
    character(len=:), allocatable :: f_PERIODS
    character(len=:), allocatable :: f_LOADING
    character(len=:), allocatable :: f_CONSTRUCTOR
    character(len=:), allocatable :: f_START
    character(len=:), allocatable :: f_END
    character(len=:), allocatable :: f_EXCEPTION
    character(len=:), allocatable :: f_EXCEPTION_LABEL
    character(len=:), allocatable :: f_CLEANUP
    character(len=:), allocatable :: f_INIT
    character(len=:), allocatable :: f_CLOSE
    character(len=:), allocatable :: f_UP
    character(len=:), allocatable :: f_DOWN
    character(len=:), allocatable :: f_LEFT
    character(len=:), allocatable :: f_RIGHT
    type(JString), allocatable :: f_DIRECTION_NAME(:)
    character(len=:), allocatable :: f_CREATE
    character(len=:), allocatable :: f_REMOVE
    character(len=:), allocatable :: f_UPDATE
    character(len=:), allocatable :: f_DELETE_u6
    character(len=:), allocatable :: f_delete_u0
    character(len=:), allocatable :: f_LOAD
    character(len=:), allocatable :: f_SAVE
    character(len=:), allocatable :: f_ADD
    character(len=:), allocatable :: f_DROP
    character(len=:), allocatable :: f_INSERT
    character(len=:), allocatable :: f_VISIT
    character(len=:), allocatable :: f_START_METHOD_NAME
    character(len=:), allocatable :: f_END_METHOD_NAME
    character(len=:), allocatable :: f_GET
    character(len=:), allocatable :: f_PROCESS
    character(len=:), allocatable :: f_GET_INSTANCE
    character(len=:), allocatable :: f_GET_LIST
    character(len=:), allocatable :: f_RUN
    character(len=:), allocatable :: f_START_RUNNABLE
    character(len=:), allocatable :: f_RUNNING
    character(len=:), allocatable :: f_END_RUNNABLE
    character(len=:), allocatable :: f_DISABLE
    character(len=:), allocatable :: f_ENABLE
    character(len=:), allocatable :: f_SUCCESS
    character(len=:), allocatable :: f_FAILURE
    character(len=:), allocatable :: f_NOT_IMPLEMENTED
    character(len=:), allocatable :: f_UNKNOWN
    character(len=:), allocatable :: f_ON_EVENT
    character(len=:), allocatable :: f_IS_VALID
    character(len=:), allocatable :: f_TOSTRING
    character(len=:), allocatable :: f_ADD_LISTENER
    character(len=:), allocatable :: f_REMOVE_LISTENER
    character(len=:), allocatable :: f_SIZE
  end type

  class(CommonStrings), pointer, save :: CommonStrings_jcell_instance => null()
  logical, save :: CommonStrings_jset_instance = .false.

contains

  function CommonStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonStrings)
      jresult => object
    end select
  end function

  function CommonStrings_jstatic_instance() result(jresult)
    class(CommonStrings), pointer :: jresult
    if (.not. CommonStrings_jset_instance) then
      CommonStrings_jset_instance = .true.
      CommonStrings_jcell_instance => CommonStrings_jnew_0()
    end if
    jresult => CommonStrings_jcell_instance
  end function

  subroutine CommonStrings_jsetstatic_instance(jvalue)
    class(CommonStrings), target, optional :: jvalue
    CommonStrings_jset_instance = .true.
    if (present(jvalue)) then
      CommonStrings_jcell_instance => jvalue
    else
      CommonStrings_jcell_instance => null()
    end if
  end subroutine

  function CommonStrings_jnew_0() result(this)
    class(CommonStrings), pointer :: this
    allocate(this)
    this%jclass = 'CommonStrings'
    this%f_EMPTY = ''
    this%f_CREATE_IMAGE = ''
    this%f_PLEASE_WAIT = ''
    this%f_PLEASE_WAIT_FOR_SERVER = ''
    this%f_PERIODS = ''
    this%f_LOADING = ''
    this%f_CONSTRUCTOR = ''
    this%f_START = ''
    this%f_END = ''
    this%f_EXCEPTION = ''
    this%f_EXCEPTION_LABEL = ''
    this%f_CLEANUP = ''
    this%f_INIT = ''
    this%f_CLOSE = ''
    this%f_UP = ''
    this%f_DOWN = ''
    this%f_LEFT = ''
    this%f_RIGHT = ''
    this%f_CREATE = ''
    this%f_REMOVE = ''
    this%f_UPDATE = ''
    this%f_DELETE_u6 = ''
    this%f_delete_u0 = ''
    this%f_LOAD = ''
    this%f_SAVE = ''
    this%f_ADD = ''
    this%f_DROP = ''
    this%f_INSERT = ''
    this%f_VISIT = ''
    this%f_START_METHOD_NAME = ''
    this%f_END_METHOD_NAME = ''
    this%f_GET = ''
    this%f_PROCESS = ''
    this%f_GET_INSTANCE = ''
    this%f_GET_LIST = ''
    this%f_RUN = ''
    this%f_START_RUNNABLE = ''
    this%f_RUNNING = ''
    this%f_END_RUNNABLE = ''
    this%f_DISABLE = ''
    this%f_ENABLE = ''
    this%f_SUCCESS = ''
    this%f_FAILURE = ''
    this%f_NOT_IMPLEMENTED = ''
    this%f_UNKNOWN = ''
    this%f_ON_EVENT = ''
    this%f_IS_VALID = ''
    this%f_TOSTRING = ''
    this%f_ADD_LISTENER = ''
    this%f_REMOVE_LISTENER = ''
    this%f_SIZE = ''
    this%f_EMPTY = 'Empty'
    this%f_CREATE_IMAGE = 'createImage'
    this%f_PLEASE_WAIT = 'Please Wait'
    this%f_PLEASE_WAIT_FOR_SERVER = 'Please Wait Getting Data From Server...'
    this%f_PERIODS = '...'
    this%f_LOADING = 'Loading...'
    this%f_CONSTRUCTOR = 'Constructor'
    this%f_START = 'Start'
    this%f_END = 'End'
    this%f_EXCEPTION = 'Exception'
    this%f_EXCEPTION_LABEL = 'Exception: '
    this%f_CLEANUP = 'cleanup'
    this%f_INIT = 'init'
    this%f_CLOSE = 'close'
    this%f_UP = 'up'
    this%f_DOWN = 'down'
    this%f_LEFT = 'left'
    this%f_RIGHT = 'right'
    this%f_DIRECTION_NAME = [JString :: JString(this%f_DOWN), JString(this%f_LEFT), JString(this%f_RIGHT), JString(this%f_UP)]
    this%f_CREATE = 'Create'
    this%f_REMOVE = 'Remove'
    this%f_UPDATE = 'Update'
    this%f_DELETE_u6 = 'Delete'
    this%f_delete_u0 = 'delete'
    this%f_LOAD = 'load'
    this%f_SAVE = 'save'
    this%f_ADD = 'Add'
    this%f_DROP = 'Drop'
    this%f_INSERT = 'Insert'
    this%f_VISIT = 'visit'
    this%f_START_METHOD_NAME = this%f_START
    this%f_END_METHOD_NAME = 'end'
    this%f_GET = 'get'
    this%f_PROCESS = 'process'
    this%f_GET_INSTANCE = 'getInstance'
    this%f_GET_LIST = 'getList'
    this%f_RUN = 'run'
    this%f_START_RUNNABLE = 'Start Runnable'
    this%f_RUNNING = 'Running'
    this%f_END_RUNNABLE = 'End Runnable'
    this%f_DISABLE = 'disable'
    this%f_ENABLE = 'enable'
    this%f_SUCCESS = 'Command Success'
    this%f_FAILURE = 'Command Failed'
    this%f_NOT_IMPLEMENTED = 'Not Implemented'
    this%f_UNKNOWN = 'Unknown'
    this%f_ON_EVENT = 'onEvent'
    this%f_IS_VALID = 'isValid'
    this%f_TOSTRING = 'toString'
    this%f_ADD_LISTENER = 'addListener'
    this%f_REMOVE_LISTENER = 'removeListener'
    this%f_SIZE = 'size'
  end function

  recursive function CommonStrings_jm_getInstance_0() result(jresult)
    class(CommonStrings), pointer :: jresult
        jresult => CommonStrings_jstatic_instance()
        return
  end function
end module CommonStrings_m

