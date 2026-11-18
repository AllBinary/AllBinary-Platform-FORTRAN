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
module ThreadUtil_m
  use JR_m
  use LogUtil_m
  use Thread_m
  implicit none

  type, extends(JObject) :: ThreadUtil
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_JOIN
  contains
    procedure :: jm_isRunning_1 => ThreadUtil_jm_isRunning_1
    procedure :: jm_join_1 => ThreadUtil_jm_join_1
  end type

  class(ThreadUtil), pointer, save :: ThreadUtil_jcell_instance => null()
  logical, save :: ThreadUtil_jset_instance = .false.

contains

  function ThreadUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreadUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreadUtil)
      jresult => object
    end select
  end function

  function ThreadUtil_jstatic_instance() result(jresult)
    class(ThreadUtil), pointer :: jresult
    if (.not. ThreadUtil_jset_instance) then
      ThreadUtil_jset_instance = .true.
      ThreadUtil_jcell_instance => ThreadUtil_jnew_0()
    end if
    jresult => ThreadUtil_jcell_instance
  end function

  subroutine ThreadUtil_jsetstatic_instance(jvalue)
    class(ThreadUtil), target, optional :: jvalue
    ThreadUtil_jset_instance = .true.
    if (present(jvalue)) then
      ThreadUtil_jcell_instance => jvalue
    else
      ThreadUtil_jcell_instance => null()
    end if
  end subroutine

  function ThreadUtil_jnew_0() result(this)
    class(ThreadUtil), pointer :: this
    allocate(this)
    this%jclass = 'ThreadUtil'
    this%f_JOIN = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_JOIN = 'join'
  end function

  recursive function ThreadUtil_jm_getInstance_0() result(jresult)
    class(ThreadUtil), pointer :: jresult
        jresult => ThreadUtil_jstatic_instance()
        return
  end function

  recursive function ThreadUtil_jm_isRunning_1(this, j_thread) result(jresult)
    class(ThreadUtil), target :: this
    class(Thread), target, optional :: j_thread
    logical :: jresult
        if ((present(j_thread) .and. j_thread%jm_isAlive_0())) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine ThreadUtil_jm_join_1(this, j_thread)
    class(ThreadUtil), target :: this
    class(Thread), target, optional :: j_thread
    class(ThreadUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => ThreadUtil_jm_getInstance_0()
        if (jtemp1%jm_isRunning_1(j_thread)) then
            call this%f_logUtil%jm_putF_3('Waiting for Thread To Join/End', this, this%f_JOIN)
            call j_thread%jm_join_0()
        end if
  end subroutine
end module ThreadUtil_m

