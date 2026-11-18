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
! package org.allbinary.game.health
module NullHealthListener_m
  use JR_m
  use HealthListenerInterface_m
  implicit none

  type, extends(HealthListenerInterface) :: NullHealthListener
  contains
    procedure :: jm_onHealthChange_0 => NullHealthListener_jm_onHealthChange_0
  end type

  class(NullHealthListener), pointer, save :: NullHealthListener_jcell_NULL_HEALTH_LISTENER => null()
  logical, save :: NullHealthListener_jset_NULL_HEALTH_LISTENER = .false.

contains

  function NullHealthListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullHealthListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullHealthListener)
      jresult => object
    end select
  end function

  function NullHealthListener_jstatic_NULL_HEALTH_LISTENER() result(jresult)
    class(NullHealthListener), pointer :: jresult
    if (.not. NullHealthListener_jset_NULL_HEALTH_LISTENER) then
      NullHealthListener_jset_NULL_HEALTH_LISTENER = .true.
      NullHealthListener_jcell_NULL_HEALTH_LISTENER => NullHealthListener_jnew_0()
    end if
    jresult => NullHealthListener_jcell_NULL_HEALTH_LISTENER
  end function

  subroutine NullHealthListener_jsetstatic_NULL_HEALTH_LISTENER(jvalue)
    class(NullHealthListener), target, optional :: jvalue
    NullHealthListener_jset_NULL_HEALTH_LISTENER = .true.
    if (present(jvalue)) then
      NullHealthListener_jcell_NULL_HEALTH_LISTENER => jvalue
    else
      NullHealthListener_jcell_NULL_HEALTH_LISTENER => null()
    end if
  end subroutine

  function NullHealthListener_jnew_0() result(this)
    class(NullHealthListener), pointer :: this
    allocate(this)
    this%jclass = 'NullHealthListener'
  end function

  recursive subroutine NullHealthListener_jm_onHealthChange_0(this)
    class(NullHealthListener), target :: this
    continue
  end subroutine
end module NullHealthListener_m

