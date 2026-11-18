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
! package org.allbinary.debug
module DebugInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: DebugInterface
  contains
    procedure :: jm_start_0 => DebugInterface_jm_start_0
    procedure :: jm_stop_0 => DebugInterface_jm_stop_0
    procedure :: jm_getStartTime_0 => DebugInterface_jm_getStartTime_0
    procedure :: jm_getMaxTime_0 => DebugInterface_jm_getMaxTime_0
    procedure :: jm_isRunning_0 => DebugInterface_jm_isRunning_0
  end type


contains

  function DebugInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DebugInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DebugInterface)
      jresult => object
    end select
  end function

  function DebugInterface_jnew_0() result(this)
    class(DebugInterface), pointer :: this
    allocate(this)
    this%jclass = 'DebugInterface'
  end function

  recursive subroutine DebugInterface_jm_start_0(this)
    class(DebugInterface), target :: this
    error stop 'AbstractMethodError: DebugInterface.start'
  end subroutine

  recursive subroutine DebugInterface_jm_stop_0(this)
    class(DebugInterface), target :: this
    error stop 'AbstractMethodError: DebugInterface.stop'
  end subroutine

  recursive function DebugInterface_jm_getStartTime_0(this) result(jresult)
    class(DebugInterface), target :: this
    integer(8) :: jresult
    error stop 'AbstractMethodError: DebugInterface.getStartTime'
  end function

  recursive function DebugInterface_jm_getMaxTime_0(this) result(jresult)
    class(DebugInterface), target :: this
    integer(8) :: jresult
    error stop 'AbstractMethodError: DebugInterface.getMaxTime'
  end function

  recursive function DebugInterface_jm_isRunning_0(this) result(jresult)
    class(DebugInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: DebugInterface.isRunning'
  end function
end module DebugInterface_m

