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
module PriorityRunnable_m
  use JR_m
  implicit none

  type, extends(JObject) :: PriorityRunnable
  contains
    procedure :: jm_getPriority_0 => PriorityRunnable_jm_getPriority_0
    procedure :: jm_isDone_0 => PriorityRunnable_jm_isDone_0
    procedure :: jm_reset_0 => PriorityRunnable_jm_reset_0
  end type


contains

  function PriorityRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PriorityRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PriorityRunnable)
      jresult => object
    end select
  end function

  function PriorityRunnable_jnew_0() result(this)
    class(PriorityRunnable), pointer :: this
    allocate(this)
    this%jclass = 'PriorityRunnable'
  end function

  recursive function PriorityRunnable_jm_getPriority_0(this) result(jresult)
    class(PriorityRunnable), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: PriorityRunnable.getPriority'
  end function

  recursive function PriorityRunnable_jm_isDone_0(this) result(jresult)
    class(PriorityRunnable), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: PriorityRunnable.isDone'
  end function

  recursive subroutine PriorityRunnable_jm_reset_0(this)
    class(PriorityRunnable), target :: this
    error stop 'AbstractMethodError: PriorityRunnable.reset'
  end subroutine
end module PriorityRunnable_m

