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
module PrimaryThreadPool_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use System_m
  use ThreadPool_m
  implicit none

  type, extends(ThreadPool) :: PrimaryThreadPool
  contains
    procedure :: jm_runTask_1 => PrimaryThreadPool_jm_runTask_1
    procedure :: jm_startTask_1 => PrimaryThreadPool_jm_startTask_1
    procedure :: jm_completedTask_1 => PrimaryThreadPool_jm_completedTask_1
  end type

  class(ThreadPool), pointer, save :: PrimaryThreadPool_jcell_THREAD_POOL => null()
  logical, save :: PrimaryThreadPool_jset_THREAD_POOL = .false.

contains

  function PrimaryThreadPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimaryThreadPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimaryThreadPool)
      jresult => object
    end select
  end function

  function PrimaryThreadPool_jstatic_THREAD_POOL() result(jresult)
    class(ThreadPool), pointer :: jresult
    if (.not. PrimaryThreadPool_jset_THREAD_POOL) then
      PrimaryThreadPool_jset_THREAD_POOL = .true.
      PrimaryThreadPool_jcell_THREAD_POOL => ThreadPool_jnew_3('Primary', 1, ThreadPool_jstatic_NORMAL_PRIORITY())
    end if
    jresult => PrimaryThreadPool_jcell_THREAD_POOL
  end function

  recursive function PrimaryThreadPool_jnew_3(j_poolName, j_numThreads, j_priority) result(this)
    character(len=*), intent(in) :: j_poolName
    integer(4), value :: j_numThreads
    integer(4), value :: j_priority
    class(PrimaryThreadPool), pointer :: this
    allocate(this)
    this%jclass = 'PrimaryThreadPool'
        continue ! super()
  end function

  recursive function PrimaryThreadPool_jm_getInstance_0() result(jresult)
    class(ThreadPool), pointer :: jresult
        jresult => PrimaryThreadPool_jstatic_THREAD_POOL()
        return
  end function

  recursive subroutine PrimaryThreadPool_jm_runTask_1(this, j_task)
    class(PrimaryThreadPool), target :: this
    class(JObject), target, optional :: j_task
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
        jtemp4 => StringUtil_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(jtemp4%jm_toString_1(j_task))
        jtemp1 => jtemp2%jm_appendlong_1(int(JR_currentTimeMillis(), 8))
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_threadPoolStrings%f_ADD_TASK)
        call this%ThreadPool%jm_runTask_1(j_task)
  end subroutine

  recursive subroutine PrimaryThreadPool_jm_startTask_1(this, j_task)
    class(PrimaryThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringUtil), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp8 => StringUtil_jm_getInstance_0()
        jtemp7 => StringMaker_jnew_0()
        jtemp6 => jtemp7%jm_append_1(this%f_threadPoolStrings%f_START_TASK)
        jtemp5 => jtemp6%jm_append_1(jtemp8%jm_toString_1(j_task))
        call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive subroutine PrimaryThreadPool_jm_completedTask_1(this, j_task)
    class(PrimaryThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringUtil), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp12 => StringUtil_jm_getInstance_0()
        jtemp11 => StringMaker_jnew_0()
        jtemp10 => jtemp11%jm_append_1(this%f_threadPoolStrings%f_COMPLETE_TASK)
        jtemp9 => jtemp10%jm_append_1(jtemp12%jm_toString_1(j_task))
        call this%f_logUtil%jm_putF_3(jtemp9%jm_toString_0(), this, this%f_commonStrings%f_RUN)
  end subroutine
end module PrimaryThreadPool_m

function PrimaryThreadPool_jnew_3_jext(p1, p2, p3) result(this)
  use PrimaryThreadPool_m, only: JObject, PrimaryThreadPool_jnew_3
  implicit none
      character(len=*), intent(in) :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => PrimaryThreadPool_jnew_3(p1, p2, p3)
end function

