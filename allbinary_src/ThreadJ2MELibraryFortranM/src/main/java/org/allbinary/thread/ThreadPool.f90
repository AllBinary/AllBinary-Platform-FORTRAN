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
! package org.allbinary.thread
module ThreadPool_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use Thread_m
  use NullRunnable_m
  use ThreadPoolStrings_m
  use ThreadObjectUtil_m
  use PooledThread_m
  use PriorityRunnable_m
  implicit none

  type, extends(JObject) :: ThreadPool
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(NullRunnable), pointer :: f_NULL_RUNNABLE => null()
    class(ThreadPoolStrings), pointer :: f_threadPoolStrings => null()
    class(ThreadObjectUtil), pointer :: f_threadObjectUtil => null()
    character(len=:), allocatable :: f_poolName
    integer(4) :: f_priority = 0
    logical :: f_isAlive = .false.
    class(BasicArrayList), pointer :: f_taskQueue => null()
    integer(4) :: f_threadID = 0
    integer(4) :: f_numThreads = 0
    logical :: f_runningTask = .false.
  contains
    procedure :: jm_init_0 => ThreadPool_jm_init_0
    procedure :: jm_runAPriorityTask_0 => ThreadPool_jm_runAPriorityTask_0
    procedure :: jm_runTaskWithPriority_1 => ThreadPool_jm_runTaskWithPriority_1
    procedure :: jm_runTask_1 => ThreadPool_jm_runTask_1
    procedure :: jm_getTask_0 => ThreadPool_jm_getTask_0
    procedure :: jm_clear_0 => ThreadPool_jm_clear_0
    procedure :: jm_close_0 => ThreadPool_jm_close_0
    procedure :: jm_join_0 => ThreadPool_jm_join_0
    procedure :: jm_isBusy_0 => ThreadPool_jm_isBusy_0
    procedure :: jm_threadStarted_0 => ThreadPool_jm_threadStarted_0
    procedure :: jm_threadStopped_0 => ThreadPool_jm_threadStopped_0
    procedure :: jm_startTask_1 => ThreadPool_jm_startTask_1
    procedure :: jm_completedTask_1 => ThreadPool_jm_completedTask_1
    procedure :: jm_createName_0 => ThreadPool_jm_createName_0
  end type

  character(len=:), allocatable, save :: ThreadPool_jcell_ROOT_NAME
  logical, save :: ThreadPool_jset_ROOT_NAME = .false.
  integer(4), save :: ThreadPool_jcell_NORMAL_PRIORITY
  logical, save :: ThreadPool_jset_NORMAL_PRIORITY = .false.

contains

  function ThreadPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreadPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreadPool)
      jresult => object
    end select
  end function

  function ThreadPool_jstatic_ROOT_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. ThreadPool_jset_ROOT_NAME) then
      ThreadPool_jset_ROOT_NAME = .true.
      ThreadPool_jcell_ROOT_NAME = '-PooledThread-'
    end if
    jresult = ThreadPool_jcell_ROOT_NAME
  end function

  function ThreadPool_jstatic_NORMAL_PRIORITY() result(jresult)
    integer(4) :: jresult
    if (.not. ThreadPool_jset_NORMAL_PRIORITY) then
      ThreadPool_jset_NORMAL_PRIORITY = .true.
      ThreadPool_jcell_NORMAL_PRIORITY = Thread_jstatic_NORM_PRIORITY()
    end if
    jresult = ThreadPool_jcell_NORMAL_PRIORITY
  end function

  recursive function ThreadPool_jnew_3(j_poolName, j_numThreads, j_priority) result(this)
    character(len=*), intent(in) :: j_poolName
    integer(4), value :: j_numThreads
    integer(4), value :: j_priority
    class(ThreadPool), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ThreadPool'
    this%f_poolName = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_NULL_RUNNABLE => NullRunnable_jm_getInstance_0()
    this%f_threadPoolStrings => ThreadPoolStrings_jm_getInstance_0()
    this%f_threadObjectUtil => ThreadObjectUtil_jm_getInstance_0()
    
    
    this%f_isAlive = .false.
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_taskQueue => jtemp1%jm_getImmutableInstance_0()
    
    
    
        this%f_poolName = j_poolName
        this%f_priority = j_priority
        this%f_numThreads = j_numThreads
  end function

  recursive subroutine ThreadPool_jm_init_0(this)
    class(ThreadPool), target :: this
    class(PooledThread), pointer :: j_pooledThread
    integer(4) :: j_i
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_isAlive)) then
            this%f_isAlive = .true.
            this%f_taskQueue => BasicArrayListD_jnew_0()
            continue
            j_i = 0
            do while ((j_i < this%f_numThreads))
                j_pooledThread => PooledThread_jnew_1(this)
                call j_pooledThread%jm_setPriority_1(this%f_priority)
                call j_pooledThread%jm_start_0()
                j_i = j_i + 1
            end do
        end if
  end subroutine

  recursive subroutine ThreadPool_jm_runAPriorityTask_0(this)
    class(ThreadPool), target :: this
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive subroutine ThreadPool_jm_runTaskWithPriority_1(this, j_task)
    class(ThreadPool), target :: this
    class(PriorityRunnable), target, optional :: j_task
    integer(4) :: j_size
    class(PriorityRunnable), pointer :: j_runnable
    class(PriorityRunnable), pointer :: j_lowerPriorityRunnable
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            if ((.not. this%f_isAlive)) then
                call this%jm_init_0()
            end if
            if (present(j_task)) then
                j_size = this%f_taskQueue%jm_size_0()
                continue
                j_lowerPriorityRunnable => this%f_threadObjectUtil%f_NULL_PRIORITY_RUNNABLE
                j_index = 0
                do while ((j_index < j_size))
                    j_runnable => PriorityRunnable_jcast(this%f_taskQueue%jm_get_1(j_index))
                    if ((j_runnable%jm_getPriority_0() > j_task%jm_getPriority_0())) then
                        j_lowerPriorityRunnable => j_runnable
                        exit
                    end if
                    j_index = j_index + 1
                end do
                if (JR_same(j_lowerPriorityRunnable, this%f_threadObjectUtil%f_NULL_PRIORITY_RUNNABLE)) then
                    jdiscardBoolean = this%f_taskQueue%jm_add_1(j_task)
                else
                    j_index = this%f_taskQueue%jm_indexOf_1(j_lowerPriorityRunnable)
                    call this%f_taskQueue%jm_addAt_2(j_index, j_task)
                end if
                call JR_wait(this)
            end if
  end subroutine

  recursive subroutine ThreadPool_jm_runTask_1(this, j_task)
    class(ThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            if ((.not. this%f_isAlive)) then
                call this%jm_init_0()
            end if
            if (present(j_task)) then
                jdiscardBoolean = this%f_taskQueue%jm_add_1(j_task)
                call JR_wait(this)
            end if
  end subroutine

  recursive function ThreadPool_jm_getTask_0(this) result(jresult)
    class(ThreadPool), target :: this
    class(JObject), pointer :: jresult
    class(JObject), pointer :: j_runnable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            do while ((this%f_taskQueue%jm_size_0() == 0))
                if ((.not. this%f_isAlive)) then
                    jresult => this%f_NULL_RUNNABLE
                    return
                end if
                call JR_wait(this)
            end do
            j_runnable => this%f_taskQueue%jm_removeAt_1(0)
            jresult => j_runnable
            return
  end function

  recursive subroutine ThreadPool_jm_clear_0(this)
    class(ThreadPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            if (this%f_isAlive) then
                call this%f_taskQueue%jm_clear_0()
            end if
  end subroutine

  recursive subroutine ThreadPool_jm_close_0(this)
    class(ThreadPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            if (this%f_isAlive) then
                this%f_isAlive = .false.
                call this%f_taskQueue%jm_clear_0()
            end if
  end subroutine

  recursive subroutine ThreadPool_jm_join_0(this)
    class(ThreadPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            this%f_isAlive = .false.
            call this%f_taskQueue%jm_clear_0()
            call JR_wait(this)
  end subroutine

  recursive function ThreadPool_jm_isBusy_0(this) result(jresult)
    class(ThreadPool), target :: this
    logical :: jresult
        if ((.not. this%f_isAlive)) then
            jresult = .false.
            return
        end if
        if ((this%f_taskQueue%jm_size_0() > 0)) then
            jresult = .true.
            return
        end if
        if (this%f_runningTask) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive subroutine ThreadPool_jm_threadStarted_0(this)
    class(ThreadPool), target :: this
    continue
  end subroutine

  recursive subroutine ThreadPool_jm_threadStopped_0(this)
    class(ThreadPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_numThreads == 1)) then
            this%f_isAlive = .false.
            call this%f_taskQueue%jm_clear_0()
        end if
  end subroutine

  recursive subroutine ThreadPool_jm_startTask_1(this, j_task)
    class(ThreadPool), target :: this
    class(JObject), target, optional :: j_task
    continue
  end subroutine

  recursive subroutine ThreadPool_jm_completedTask_1(this, j_task)
    class(ThreadPool), target :: this
    class(JObject), target, optional :: j_task
    continue
  end subroutine

  recursive function ThreadPool_jm_createName_0(this) result(jresult)
    class(ThreadPool), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    integer(4) :: jtemp6
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(this%f_poolName)
        jtemp6 = this%f_threadID
        this%f_threadID = this%f_threadID + 1
        jtemp3 => jtemp4%jm_append_1(ThreadPool_jstatic_ROOT_NAME())
        jtemp2 => jtemp3%jm_appendint_1(jtemp6)
        jresult = jtemp2%jm_toString_0()
        return
  end function
end module ThreadPool_m

