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
module NullPriorityRunnable_m
  use JR_m
  use PriorityRunnable_m
  implicit none

  type, extends(PriorityRunnable) :: NullPriorityRunnable
  contains
    procedure :: jm_getPriority_0 => NullPriorityRunnable_jm_getPriority_0
    procedure :: jm_isDone_0 => NullPriorityRunnable_jm_isDone_0
    procedure :: jm_reset_0 => NullPriorityRunnable_jm_reset_0
    procedure :: jm_run_0 => NullPriorityRunnable_jm_run_0
  end type


contains

  function NullPriorityRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullPriorityRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullPriorityRunnable)
      jresult => object
    end select
  end function

  function NullPriorityRunnable_jnew_0() result(this)
    class(NullPriorityRunnable), pointer :: this
    allocate(this)
    this%jclass = 'NullPriorityRunnable'
  end function

  recursive function NullPriorityRunnable_jm_getPriority_0(this) result(jresult)
    class(NullPriorityRunnable), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function NullPriorityRunnable_jm_isDone_0(this) result(jresult)
    class(NullPriorityRunnable), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine NullPriorityRunnable_jm_reset_0(this)
    class(NullPriorityRunnable), target :: this
    continue
  end subroutine

  recursive subroutine NullPriorityRunnable_jm_run_0(this)
    class(NullPriorityRunnable), target :: this
    continue
  end subroutine
end module NullPriorityRunnable_m

