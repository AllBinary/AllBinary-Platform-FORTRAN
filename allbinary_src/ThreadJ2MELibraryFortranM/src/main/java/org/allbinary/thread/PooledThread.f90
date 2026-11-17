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
! package org.allbinary.thread
module PooledThread_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use Thread_m
  use ThreadObjectUtil_m
  use ThreadPool_m
  implicit none

  type, extends(Thread) :: PooledThread
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ThreadObjectUtil), pointer :: f_threadObjectUtil => null()
    class(ThreadPool), pointer :: f_threadPool => null()
    character(len=:), allocatable :: f_INTERRUPT_EXCEPTION
  contains
    procedure :: jm_run_0 => PooledThread_jm_run_0
  end type


contains

  function PooledThread_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PooledThread), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PooledThread)
      jresult => object
    end select
  end function

  recursive function PooledThread_jnew_1(j_threadPool) result(this)
    class(ThreadPool), target, optional :: j_threadPool
    class(PooledThread), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PooledThread'
    this%f_INTERRUPT_EXCEPTION = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_threadObjectUtil => ThreadObjectUtil_jm_getInstance_0()
    
    this%f_INTERRUPT_EXCEPTION = 'Exit InterruptedException'
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_CONSTRUCTOR, this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_threadPool => j_threadPool
  end function

  recursive subroutine PooledThread_jm_run_0(this)
    class(PooledThread), target :: this
    class(JObject), pointer :: j_task2
    class(LogUtil), pointer :: j_logUtil
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_threadPool%jm_threadStarted_0()
        do while (.true.)
            j_task2 => this%f_threadObjectUtil%f_NULL_PRIORITY_RUNNABLE
            continue ! try
                j_task2 => this%f_threadPool%jm_getTask_0()
                this%f_threadPool%f_runningTask = .true.
                call this%f_threadPool%jm_startTask_1(j_task2)
            if (JR_same(j_task2, this%f_threadObjectUtil%f_NULL_PRIORITY_RUNNABLE)) then
                exit
            end if
            continue ! try
                call j_task2%jm_run_0()
                call this%f_threadPool%jm_completedTask_1(j_task2)
                this%f_threadPool%f_runningTask = .false.
        end do
        call this%f_threadPool%jm_threadStopped_0()
  end subroutine
end module PooledThread_m

