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
module CommonStateStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: CommonStateStrings
    character(len=:), allocatable :: f_CONTEXT
    character(len=:), allocatable :: f_FINISH
    character(len=:), allocatable :: f_CREATE
    character(len=:), allocatable :: f_START
    character(len=:), allocatable :: f_RESTART
    character(len=:), allocatable :: f_RESUME
    character(len=:), allocatable :: f_PAUSE
    character(len=:), allocatable :: f_STOP
    character(len=:), allocatable :: f_DESTROY
    character(len=:), allocatable :: f_BIND
    character(len=:), allocatable :: f_ON_SAVE_INSTANCE_STATE
    character(len=:), allocatable :: f_ON_START_COMMAND
  end type

  class(CommonStateStrings), pointer, save :: CommonStateStrings_jcell_instance => null()
  logical, save :: CommonStateStrings_jset_instance = .false.

contains

  function CommonStateStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonStateStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonStateStrings)
      jresult => object
    end select
  end function

  function CommonStateStrings_jstatic_instance() result(jresult)
    class(CommonStateStrings), pointer :: jresult
    if (.not. CommonStateStrings_jset_instance) then
      CommonStateStrings_jset_instance = .true.
      CommonStateStrings_jcell_instance => CommonStateStrings_jnew_0()
    end if
    jresult => CommonStateStrings_jcell_instance
  end function

  subroutine CommonStateStrings_jsetstatic_instance(jvalue)
    class(CommonStateStrings), target, optional :: jvalue
    CommonStateStrings_jset_instance = .true.
    if (present(jvalue)) then
      CommonStateStrings_jcell_instance => jvalue
    else
      CommonStateStrings_jcell_instance => null()
    end if
  end subroutine

  function CommonStateStrings_jnew_0() result(this)
    class(CommonStateStrings), pointer :: this
    allocate(this)
    this%jclass = 'CommonStateStrings'
    this%f_CONTEXT = ''
    this%f_FINISH = ''
    this%f_CREATE = ''
    this%f_START = ''
    this%f_RESTART = ''
    this%f_RESUME = ''
    this%f_PAUSE = ''
    this%f_STOP = ''
    this%f_DESTROY = ''
    this%f_BIND = ''
    this%f_ON_SAVE_INSTANCE_STATE = ''
    this%f_ON_START_COMMAND = ''
    this%f_CONTEXT = 'Context: '
    this%f_FINISH = 'finish'
    this%f_CREATE = 'onCreate'
    this%f_START = 'onStart'
    this%f_RESTART = 'onRestart'
    this%f_RESUME = 'onResume'
    this%f_PAUSE = 'onPause'
    this%f_STOP = 'onStop'
    this%f_DESTROY = 'onDestroy'
    this%f_BIND = 'onBind'
    this%f_ON_SAVE_INSTANCE_STATE = 'onSaveInstanceState'
    this%f_ON_START_COMMAND = 'onStartCommand'
  end function

  recursive function CommonStateStrings_jm_getInstance_0() result(jresult)
    class(CommonStateStrings), pointer :: jresult
        jresult => CommonStateStrings_jstatic_instance()
        return
  end function
end module CommonStateStrings_m

