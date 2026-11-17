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
module RunnableInterface_m
  use JR_m
  use Thread_m
  implicit none

  type, extends(JObject) :: RunnableInterface
  contains
    procedure :: jm_isRunning_0 => RunnableInterface_jm_isRunning_0
    procedure :: jm_setRunning_1 => RunnableInterface_jm_setRunning_1
    procedure :: jm_setThread_1 => RunnableInterface_jm_setThread_1
  end type


contains

  function RunnableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RunnableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RunnableInterface)
      jresult => object
    end select
  end function

  function RunnableInterface_jnew_0() result(this)
    class(RunnableInterface), pointer :: this
    allocate(this)
    this%jclass = 'RunnableInterface'
  end function

  recursive function RunnableInterface_jm_isRunning_0(this) result(jresult)
    class(RunnableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: RunnableInterface.isRunning'
  end function

  recursive subroutine RunnableInterface_jm_setRunning_1(this, j_isRunning)
    class(RunnableInterface), target :: this
    logical, value :: j_isRunning
    error stop 'AbstractMethodError: RunnableInterface.setRunning'
  end subroutine

  recursive subroutine RunnableInterface_jm_setThread_1(this, j_thread)
    class(RunnableInterface), target :: this
    class(Thread), target, optional :: j_thread
    error stop 'AbstractMethodError: RunnableInterface.setThread'
  end subroutine
end module RunnableInterface_m

