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
! package org.allbinary.canvas
module RunnableCanvas_m
  use JR_m
  use TsUtil_m
  use NullWaitGameRunnable_m
  use MyCanvas_m
  use ABSystemWrapper_m
  use NullUtil_m
  use StdUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonStrings_m
  use NullThread_m
  use RunnableInterface_m
  use ThreadObjectUtil_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use Thread_m
  use Processor_m
  use RunnableCanvasRefreshHelper_m
  implicit none

  type, extends(MyCanvas) :: RunnableCanvas
    class(NullUtil), pointer :: f_nullUtil => null()
    class(StdUtil), pointer :: f_stdUtil => null()
    class(ABSystemWrapper), pointer :: f_systemWrapper => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    class(Thread), pointer :: f_thread_u0 => null()
    class(Thread), pointer :: f_currentThread => null()
    logical :: f_running = .false.
    class(TimeDelayHelper), pointer :: f_loopTimeHelper => null()
    class(Processor), pointer :: f_runnableCanvasRefreshHelper => null()
    class(CommonLabels), pointer :: f_commonLabels => null()
    class(ThreadObjectUtil), pointer :: f_threadObjectUtil => null()
    character(len=:), allocatable :: f_SET_RUNNING
    character(len=:), allocatable :: f_IS_RUNNING
    character(len=:), allocatable :: f_THREAD_u6
    character(len=:), allocatable :: f_NOT_EQUAL
    character(len=:), allocatable :: f_PAUSE_SLEEP
    character(len=:), allocatable :: f_START_PAUSE
    character(len=:), allocatable :: f_END_PAUSE
    character(len=:), allocatable :: f_PROCESS_LOOP_SLEEP
    integer(8) :: f_pauseWait = 0_8
    logical :: f_notified = .false.
  contains
    procedure :: jm_initCommands_1 => RunnableCanvas_jm_initCommands_1
    procedure :: jm_isMainCanvas_0 => RunnableCanvas_jm_isMainCanvas_0
    procedure :: jm_setThread_1 => RunnableCanvas_jm_setThread_1
    procedure :: jm_setRunning_1 => RunnableCanvas_jm_setRunning_1
    procedure :: jm_isRunning_0 => RunnableCanvas_jm_isRunning_0
    procedure :: jm_getLoopTimeHelperP_0 => RunnableCanvas_jm_getLoopTimeHelperP_0
    procedure :: jm_setWait_1 => RunnableCanvas_jm_setWait_1
    procedure :: jm_getWait_0 => RunnableCanvas_jm_getWait_0
    procedure :: jm_setCurrentThread_0 => RunnableCanvas_jm_setCurrentThread_0
    procedure :: jm_setCurrentThreadFake_0 => RunnableCanvas_jm_setCurrentThreadFake_0
    procedure :: jm_showNotify_0 => RunnableCanvas_jm_showNotify_0
    procedure :: jm_stopWaiting_0 => RunnableCanvas_jm_stopWaiting_0
    procedure :: jm_waitOnNotify_1 => RunnableCanvas_jm_waitOnNotify_1
    procedure :: jm_processSleep_0 => RunnableCanvas_jm_processSleep_0
    procedure :: jm_isPausable_0 => RunnableCanvas_jm_isPausable_0
    procedure :: jm_processGameSleep_1 => RunnableCanvas_jm_processGameSleep_1
    procedure :: jm_processLoopSleep_0 => RunnableCanvas_jm_processLoopSleep_0
    procedure :: jm_isSingleThread_0 => RunnableCanvas_jm_isSingleThread_0
    procedure :: jm_run_0 => RunnableCanvas_jm_run_0
    procedure :: jm_end2_0 => RunnableCanvas_jm_end2_0
    procedure :: jm_getType_0 => RunnableCanvas_jm_getType_0
  end type

  ! RunnableCanvas used as a RunnableInterface
  type, extends(RunnableInterface) :: RunnableCanvas_jas_RunnableInterface
    class(RunnableCanvas), pointer :: jtarget => null()
  contains
    procedure :: jm_setThread_1 => RunnableCanvas_jas_RunnableInterface_jm_setThread_1
    procedure :: jm_setRunning_1 => RunnableCanvas_jas_RunnableInterface_jm_setRunning_1
    procedure :: jm_isRunning_0 => RunnableCanvas_jas_RunnableInterface_jm_isRunning_0
  end type


contains

  function RunnableCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RunnableCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RunnableCanvas)
      jresult => object
    end select
  end function

  function RunnableCanvas_jas_RunnableInterface_jnew(object) result(jresult)
    class(RunnableCanvas), target :: object
    class(RunnableCanvas_jas_RunnableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RunnableCanvas'
    jresult%jtarget => object
  end function

  recursive subroutine RunnableCanvas_jas_RunnableInterface_jm_setThread_1(this, j_thread)
    class(RunnableCanvas_jas_RunnableInterface), target :: this
    class(Thread), target, optional :: j_thread
    call this%jtarget%jm_setThread_1(j_thread)
  end subroutine

  recursive subroutine RunnableCanvas_jas_RunnableInterface_jm_setRunning_1(this, j_isRunning)
    class(RunnableCanvas_jas_RunnableInterface), target :: this
    logical, value :: j_isRunning
    call this%jtarget%jm_setRunning_1(j_isRunning)
  end subroutine

  recursive function RunnableCanvas_jas_RunnableInterface_jm_isRunning_0(this) result(jresult)
    class(RunnableCanvas_jas_RunnableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isRunning_0()
  end function

  recursive function RunnableCanvas_jnew_3(j_commandListener, j_childNameList, j_hasParam) result(this)
    class(CommandListener), target, optional :: j_commandListener
    class(BasicArrayList), target, optional :: j_childNameList
    logical, value :: j_hasParam
    class(RunnableCanvas), pointer :: this
    class(CommonStrings), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(NullWaitGameRunnable), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RunnableCanvas'
    this%f_SET_RUNNING = ''
    this%f_IS_RUNNING = ''
    this%f_THREAD_u6 = ''
    this%f_NOT_EQUAL = ''
    this%f_PAUSE_SLEEP = ''
    this%f_START_PAUSE = ''
    this%f_END_PAUSE = ''
    this%f_PROCESS_LOOP_SLEEP = ''
    this%f_nullUtil => NullUtil_jm_getInstance_0()
    this%f_stdUtil => StdUtil_jm_getInstance_0()
    this%f_systemWrapper => ABSystemWrapper_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_thread_u0 => NullThread_jstatic_NULL_THREAD()
    this%f_currentThread => NullThread_jstatic_NULL_THREAD()
    
    jtemp1 => NullWaitGameRunnable_jm_getInstance_0()
    this%f_loopTimeHelper => TimeDelayHelper_jnew_1(jtemp1%f_WAIT)
    this%f_runnableCanvasRefreshHelper => Processor_jm_getInstance_0()
    this%f_commonLabels => CommonLabels_jm_getInstance_0()
    this%f_threadObjectUtil => ThreadObjectUtil_jm_getInstance_0()
    this%f_SET_RUNNING = 'setRunning'
    this%f_IS_RUNNING = 'isRunning'
    this%f_THREAD_u6 = 'Thread: '
    this%f_NOT_EQUAL = ' != '
    this%f_PAUSE_SLEEP = 'pause sleep'
    this%f_START_PAUSE = 'start pause - game thread sleep at: '
    this%f_END_PAUSE = 'end pause - game thread sleep at: '
    this%f_PROCESS_LOOP_SLEEP = 'processLoopSleep'
    this%f_pauseWait = 0_8
    this%f_notified = .false.
        jtemp2 => CommonStrings_jm_getInstance_0()
        continue ! super()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1('RunnableCanvas delay: ')
        jtemp3 => jtemp4%jm_appendint_1(this%f_loopTimeHelper%f_delay)
        call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_CONSTRUCTOR)
        this%f_runnableCanvasRefreshHelper => RunnableCanvasRefreshHelper_jnew_1(this)
        if (present(j_commandListener)) then
            call this%jm_initCommands_1(j_commandListener)
        else if (j_hasParam) then
            call this%f_logUtil%jm_putF_3('commandListener was null', this, 'initCommands')
        end if
  end function

  recursive subroutine RunnableCanvas_jm_initCommands_1(this, j_cmdListener)
    class(RunnableCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_NOT_IMPLEMENTED, this, 'initCommands')
  end subroutine

  recursive function RunnableCanvas_jm_isMainCanvas_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    logical :: jresult
        if (associated(this%jm_getCustomCommandListener_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine RunnableCanvas_jm_setThread_1(this, j_thread)
    class(RunnableCanvas), target :: this
    class(Thread), target, optional :: j_thread
        this%f_thread_u0 => j_thread
  end subroutine

  recursive subroutine RunnableCanvas_jm_setRunning_1(this, j_running)
    class(RunnableCanvas), target :: this
    logical, value :: j_running
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_running = j_running
        if ((.not. this%f_running)) then
            this%f_thread_u0 => NullThread_jstatic_NULL_THREAD()
            continue ! synchronized
                call this%f_threadObjectUtil%jm_notifyObject_1(this)
        end if
        jtemp8 => StringMaker_jnew_0()
        jtemp7 => jtemp8%jm_append_1(this%f_IS_RUNNING)
        jtemp6 => jtemp7%jm_appendboolean_1(this%f_running)
        call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, this%f_SET_RUNNING)
  end subroutine

  recursive function RunnableCanvas_jm_isRunning_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    logical :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (JR_same(this%f_thread_u0, this%f_currentThread)) then
            jresult = this%f_running
            return
        else
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_THREAD_u6)
            if (associated(this%f_thread_u0)) then
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_thread_u0%jm_toString_0())
            end if
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_NOT_EQUAL)
            if (associated(this%f_currentThread)) then
                jtemp9 => StringUtil_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp9%jm_toString_1(this%f_currentThread))
            end if
            call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_IS_RUNNING)
            jresult = .false.
            return
        end if
  end function

  recursive function RunnableCanvas_jm_getLoopTimeHelperP_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    class(TimeDelayHelper), pointer :: jresult
        jresult => this%f_loopTimeHelper
        return
  end function

  recursive subroutine RunnableCanvas_jm_setWait_1(this, j_wait)
    class(RunnableCanvas), target :: this
    integer(4), value :: j_wait
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_loopTimeHelper%f_delay = j_wait
        this%f_pauseWait = (int(j_wait, 8) * 3_8)
        jtemp12 => StringMaker_jnew_0()
        jtemp11 => jtemp12%jm_append_1('setWait - delay: ')
        jtemp10 => jtemp11%jm_appendint_1(this%f_loopTimeHelper%f_delay)
        call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, this%f_commonStrings%f_CONSTRUCTOR)
  end subroutine

  recursive function RunnableCanvas_jm_getWait_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    integer(4) :: jresult
        jresult = this%f_loopTimeHelper%f_delay
        return
  end function

  recursive subroutine RunnableCanvas_jm_setCurrentThread_0(this)
    class(RunnableCanvas), target :: this
        this%f_currentThread => Thread_jm_currentThread_0()
  end subroutine

  recursive subroutine RunnableCanvas_jm_setCurrentThreadFake_0(this)
    class(RunnableCanvas), target :: this
        this%f_currentThread => this%f_thread_u0
  end subroutine

  recursive subroutine RunnableCanvas_jm_showNotify_0(this)
    class(RunnableCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%jm_stopWaiting_0()
  end subroutine

  recursive subroutine RunnableCanvas_jm_stopWaiting_0(this)
    class(RunnableCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_notified = .true.
        continue ! synchronized
            call this%f_threadObjectUtil%jm_notifyObject_1(this)
        call this%jm_repaint_0()
  end subroutine

  recursive subroutine RunnableCanvas_jm_waitOnNotify_1(this, j_wait)
    class(RunnableCanvas), target :: this
    integer(8), value :: j_wait
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_notified)) then
            if ((j_wait > 0_8)) then
                call this%f_threadObjectUtil%jm_waitObjectFor_2(this, j_wait)
            else
                call this%f_threadObjectUtil%jm_waitObject_1(this)
            end if
        end if
  end subroutine

  recursive subroutine RunnableCanvas_jm_processSleep_0(this)
    class(RunnableCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call Thread_jm_sleep_1(this%f_pauseWait)
  end subroutine

  recursive function RunnableCanvas_jm_isPausable_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine RunnableCanvas_jm_processGameSleep_1(this, j_sleep)
    class(RunnableCanvas), target :: this
    integer(8), value :: j_sleep
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call Thread_jm_sleep_1(j_sleep)
  end subroutine

  recursive subroutine RunnableCanvas_jm_processLoopSleep_0(this)
    class(RunnableCanvas), target :: this
    class(StringMaker), pointer :: j_stringMaker
    integer(8) :: j_currentTimeMillis
    integer(8) :: j_elapsedTime
    integer(8) :: j_wait
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_runnableCanvasRefreshHelper%jm_process_0()
        if (this%jm_isPaused_0()) then
            j_stringMaker => StringMaker_jnew_0()
            if ((this%jm_isRunning_0() .and. (.not. this%jm_isSingleThread_0()))) then
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                j_currentTimeMillis = this%f_systemWrapper%jm_currentTimeMillis_0()
                jtemp16 => j_stringMaker%jm_append_1(this%f_START_PAUSE)
                jtemp15 => jtemp16%jm_appendlong_1(j_currentTimeMillis)
                jtemp14 => jtemp15%jm_append_1(this%f_PAUSE_SLEEP)
                jtemp13 => jtemp14%jm_appendlong_1(this%f_pauseWait)
                call this%f_logUtil%jm_putF_3(jtemp13%jm_toString_0(), this, this%f_PROCESS_LOOP_SLEEP)
                do while (((this%jm_isPaused_0() .and. this%jm_isRunning_0()) .and. (.not. this%jm_isSingleThread_0())))
                    call this%jm_processSleep_0()
                    if ((.not. this%jm_isPausable_0())) then
                        jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                        jtemp18 => j_stringMaker%jm_append_1(this%f_END_PAUSE)
                        jtemp17 => jtemp18%jm_appendlong_1(j_currentTimeMillis)
                        call this%f_logUtil%jm_putF_3(jtemp17%jm_toString_0(), this, this%f_PROCESS_LOOP_SLEEP)
                        return
                    end if
                end do
            end if
        end if
        j_elapsedTime = this%f_loopTimeHelper%jm_getElapsedTNT_0()
        j_wait = int(this%f_loopTimeHelper%f_delay, 8)
        if ((j_elapsedTime > j_wait)) then
            j_elapsedTime = j_wait
        else
            call this%jm_processGameSleep_1((j_wait - j_elapsedTime))
        end if
  end subroutine

  recursive function RunnableCanvas_jm_isSingleThread_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine RunnableCanvas_jm_run_0(this)
    class(RunnableCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setCurrentThread_0()
  end subroutine

  recursive subroutine RunnableCanvas_jm_end2_0(this)
    class(RunnableCanvas), target :: this
    continue
  end subroutine

  recursive function RunnableCanvas_jm_getType_0(this) result(jresult)
    class(RunnableCanvas), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module RunnableCanvas_m

