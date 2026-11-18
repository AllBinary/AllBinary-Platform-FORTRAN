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
module SecondaryThreadPool_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use System_m
  use ThreadPool_m
  implicit none

  type, extends(ThreadPool) :: SecondaryThreadPool
  contains
    procedure :: jm_runTask_1 => SecondaryThreadPool_jm_runTask_1
    procedure :: jm_startTask_1 => SecondaryThreadPool_jm_startTask_1
    procedure :: jm_completedTask_1 => SecondaryThreadPool_jm_completedTask_1
  end type

  class(ThreadPool), pointer, save :: SecondaryThreadPool_jcell_instance => null()
  logical, save :: SecondaryThreadPool_jset_instance = .false.

contains

  function SecondaryThreadPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SecondaryThreadPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SecondaryThreadPool)
      jresult => object
    end select
  end function

  function SecondaryThreadPool_jstatic_instance() result(jresult)
    class(ThreadPool), pointer :: jresult
    if (.not. SecondaryThreadPool_jset_instance) then
      SecondaryThreadPool_jset_instance = .true.
      SecondaryThreadPool_jcell_instance => SecondaryThreadPool_jnew_3('Secondary', 1, ThreadPool_jstatic_NORMAL_PRIORITY())
    end if
    jresult => SecondaryThreadPool_jcell_instance
  end function

  subroutine SecondaryThreadPool_jsetstatic_instance(jvalue)
    class(ThreadPool), target, optional :: jvalue
    SecondaryThreadPool_jset_instance = .true.
    if (present(jvalue)) then
      SecondaryThreadPool_jcell_instance => jvalue
    else
      SecondaryThreadPool_jcell_instance => null()
    end if
  end subroutine

  recursive function SecondaryThreadPool_jnew_3(j_poolName, j_numThreads, j_priority) result(this)
    character(len=*), intent(in) :: j_poolName
    integer(4), value :: j_numThreads
    integer(4), value :: j_priority
    class(SecondaryThreadPool), pointer :: this
    allocate(this)
    this%jclass = 'SecondaryThreadPool'
        continue ! super()
  end function

  recursive function SecondaryThreadPool_jm_getInstance_0() result(jresult)
    class(ThreadPool), pointer :: jresult
        jresult => SecondaryThreadPool_jstatic_instance()
        return
  end function

  recursive subroutine SecondaryThreadPool_jm_runTask_1(this, j_task)
    class(SecondaryThreadPool), target :: this
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
        jtemp1 => jtemp2%jm_appendlong_1(JR_currentTimeMillis())
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_threadPoolStrings%f_ADD_TASK)
        call this%ThreadPool%jm_runTask_1(j_task)
  end subroutine

  recursive subroutine SecondaryThreadPool_jm_startTask_1(this, j_task)
    class(SecondaryThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringUtil), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp9 => StringUtil_jm_getInstance_0()
        jtemp8 => StringMaker_jnew_0()
        jtemp7 => jtemp8%jm_append_1(this%f_threadPoolStrings%f_START_TASK)
        jtemp6 => jtemp7%jm_append_1(jtemp9%jm_toString_1(j_task))
        jtemp5 => jtemp6%jm_appendlong_1(JR_currentTimeMillis())
        call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive subroutine SecondaryThreadPool_jm_completedTask_1(this, j_task)
    class(SecondaryThreadPool), target :: this
    class(JObject), target, optional :: j_task
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringUtil), pointer :: jtemp14
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp14 => StringUtil_jm_getInstance_0()
        jtemp13 => StringMaker_jnew_0()
        jtemp12 => jtemp13%jm_append_1(this%f_threadPoolStrings%f_COMPLETE_TASK)
        jtemp11 => jtemp12%jm_append_1(jtemp14%jm_toString_1(j_task))
        jtemp10 => jtemp11%jm_appendlong_1(JR_currentTimeMillis())
        call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, this%f_commonStrings%f_RUN)
  end subroutine
end module SecondaryThreadPool_m

function SecondaryThreadPool_jnew_3_jext(p1, p2, p3) result(this)
  use SecondaryThreadPool_m, only: JObject, SecondaryThreadPool_jnew_3
  implicit none
      character(len=*), intent(in) :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => SecondaryThreadPool_jnew_3(p1, p2, p3)
end function

