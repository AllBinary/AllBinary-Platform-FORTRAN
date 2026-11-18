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
module NoDebug_m
  use JR_m
  use DebugInterface_m
  implicit none

  type, extends(DebugInterface) :: NoDebug
  contains
    procedure :: jm_start_0 => NoDebug_jm_start_0
    procedure :: jm_stop_0 => NoDebug_jm_stop_0
    procedure :: jm_getMaxTime_0 => NoDebug_jm_getMaxTime_0
    procedure :: jm_getStartTime_0 => NoDebug_jm_getStartTime_0
    procedure :: jm_isRunning_0 => NoDebug_jm_isRunning_0
  end type

  class(DebugInterface), pointer, save :: NoDebug_jcell_SINGLETON => null()
  logical, save :: NoDebug_jset_SINGLETON = .false.

contains

  function NoDebug_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoDebug), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoDebug)
      jresult => object
    end select
  end function

  function NoDebug_jstatic_SINGLETON() result(jresult)
    class(DebugInterface), pointer :: jresult
    if (.not. NoDebug_jset_SINGLETON) then
      NoDebug_jset_SINGLETON = .true.
      NoDebug_jcell_SINGLETON => NoDebug_jnew_0()
    end if
    jresult => NoDebug_jcell_SINGLETON
  end function

  subroutine NoDebug_jsetstatic_SINGLETON(jvalue)
    class(DebugInterface), target, optional :: jvalue
    NoDebug_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NoDebug_jcell_SINGLETON => jvalue
    else
      NoDebug_jcell_SINGLETON => null()
    end if
  end subroutine

  function NoDebug_jnew_0() result(this)
    class(NoDebug), pointer :: this
    allocate(this)
    this%jclass = 'NoDebug'
  end function

  recursive function NoDebug_jm_getInstance_0() result(jresult)
    class(DebugInterface), pointer :: jresult
        jresult => NoDebug_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NoDebug_jm_start_0(this)
    class(NoDebug), target :: this
    continue
  end subroutine

  recursive subroutine NoDebug_jm_stop_0(this)
    class(NoDebug), target :: this
    continue
  end subroutine

  recursive function NoDebug_jm_getMaxTime_0(this) result(jresult)
    class(NoDebug), target :: this
    integer(8) :: jresult
        jresult = 10000_8
        return
  end function

  recursive function NoDebug_jm_getStartTime_0(this) result(jresult)
    class(NoDebug), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive function NoDebug_jm_isRunning_0(this) result(jresult)
    class(NoDebug), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module NoDebug_m

