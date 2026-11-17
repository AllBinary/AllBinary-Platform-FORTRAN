! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.thread
module ABRunnable_m
  use JR_m
  use Thread_m
  use RunnableInterface_m
  implicit none

  type, extends(RunnableInterface) :: ABRunnable
    logical :: f_running = .false.
  contains
    procedure :: jm_setThread_1 => ABRunnable_jm_setThread_1
    procedure :: jm_isRunning_0 => ABRunnable_jm_isRunning_0
    procedure :: jm_setRunning_1 => ABRunnable_jm_setRunning_1
    procedure :: jm_run_0 => ABRunnable_jm_run_0
    procedure :: jm_getType_0 => ABRunnable_jm_getType_0
  end type


contains

  function ABRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABRunnable)
      jresult => object
    end select
  end function

  function ABRunnable_jnew_0() result(this)
    class(ABRunnable), pointer :: this
    allocate(this)
    this%jclass = 'ABRunnable'
    this%f_running = .false.
  end function

  recursive subroutine ABRunnable_jm_setThread_1(this, j_thread)
    class(ABRunnable), target :: this
    class(Thread), target, optional :: j_thread
    continue
  end subroutine

  recursive function ABRunnable_jm_isRunning_0(this) result(jresult)
    class(ABRunnable), target :: this
    logical :: jresult
        jresult = this%f_running
        return
  end function

  recursive subroutine ABRunnable_jm_setRunning_1(this, j_isRunning)
    class(ABRunnable), target :: this
    logical, value :: j_isRunning
        this%f_running = j_isRunning
  end subroutine

  recursive subroutine ABRunnable_jm_run_0(this)
    class(ABRunnable), target :: this
    continue
  end subroutine

  recursive function ABRunnable_jm_getType_0(this) result(jresult)
    class(ABRunnable), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module ABRunnable_m

