! Generated Code Do Not Modify
! package org.allbinary.thread
module ThreadObjectUtil_m
  use JR_m
  use TsUtil_m
  use Thread_m
  use NullPriorityRunnable_m
  use PriorityRunnable_m
  implicit none

  type, extends(JObject) :: ThreadObjectUtil
    class(PriorityRunnable), pointer :: f_NULL_PRIORITY_RUNNABLE => null()
  contains
    procedure :: jm_notifyObject_1 => ThreadObjectUtil_jm_notifyObject_1
    procedure :: jm_waitObject_1 => ThreadObjectUtil_jm_waitObject_1
    procedure :: jm_waitObjectFor_2 => ThreadObjectUtil_jm_waitObjectFor_2
    procedure :: jm_processThread_1 => ThreadObjectUtil_jm_processThread_1
  end type

  class(ThreadObjectUtil), pointer, save :: ThreadObjectUtil_jcell_instance => null()
  logical, save :: ThreadObjectUtil_jset_instance = .false.

contains

  function ThreadObjectUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreadObjectUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreadObjectUtil)
      jresult => object
    end select
  end function

  function ThreadObjectUtil_jstatic_instance() result(jresult)
    class(ThreadObjectUtil), pointer :: jresult
    if (.not. ThreadObjectUtil_jset_instance) then
      ThreadObjectUtil_jset_instance = .true.
      ThreadObjectUtil_jcell_instance => ThreadObjectUtil_jnew_0()
    end if
    jresult => ThreadObjectUtil_jcell_instance
  end function

  subroutine ThreadObjectUtil_jsetstatic_instance(jvalue)
    class(ThreadObjectUtil), target, optional :: jvalue
    ThreadObjectUtil_jset_instance = .true.
    if (present(jvalue)) then
      ThreadObjectUtil_jcell_instance => jvalue
    else
      ThreadObjectUtil_jcell_instance => null()
    end if
  end subroutine

  function ThreadObjectUtil_jnew_0() result(this)
    class(ThreadObjectUtil), pointer :: this
    allocate(this)
    this%jclass = 'ThreadObjectUtil'
    this%f_NULL_PRIORITY_RUNNABLE => NullPriorityRunnable_jnew_0()
  end function

  recursive function ThreadObjectUtil_jm_getInstance_0() result(jresult)
    class(ThreadObjectUtil), pointer :: jresult
        jresult => ThreadObjectUtil_jstatic_instance()
        return
  end function

  recursive subroutine ThreadObjectUtil_jm_notifyObject_1(this, j_anyType)
    class(ThreadObjectUtil), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call JR_wait(j_anyType)
  end subroutine

  recursive subroutine ThreadObjectUtil_jm_waitObject_1(this, j_anyType)
    class(ThreadObjectUtil), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call JR_wait(j_anyType)
  end subroutine

  recursive subroutine ThreadObjectUtil_jm_waitObjectFor_2(this, j_anyType, j_delay)
    class(ThreadObjectUtil), target :: this
    class(JObject), target, optional :: j_anyType
    integer(8), value :: j_delay
    class(TsUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => TsUtil_jm_getInstance_0()
        call jtemp1%jm_waitFor_2(j_anyType, j_delay)
  end subroutine

  recursive subroutine ThreadObjectUtil_jm_processThread_1(this, j_runnable)
    class(ThreadObjectUtil), target :: this
    class(JObject), target, optional :: j_runnable
    class(Thread), pointer :: j_thread
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_thread => Thread_jnew_1(j_runnable)
        call j_thread%jm_start_0()
  end subroutine
end module ThreadObjectUtil_m

