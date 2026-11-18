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
module NullThread_m
  use JR_m
  use Thread_m
  implicit none

  type, extends(JObject) :: NullThread
  end type

  class(Thread), pointer, save :: NullThread_jcell_NULL_THREAD => null()
  logical, save :: NullThread_jset_NULL_THREAD = .false.

contains

  function NullThread_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullThread), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullThread)
      jresult => object
    end select
  end function

  function NullThread_jstatic_NULL_THREAD() result(jresult)
    class(Thread), pointer :: jresult
    if (.not. NullThread_jset_NULL_THREAD) then
      NullThread_jset_NULL_THREAD = .true.
      NullThread_jcell_NULL_THREAD => Thread_jnew_0()
    end if
    jresult => NullThread_jcell_NULL_THREAD
  end function

  subroutine NullThread_jsetstatic_NULL_THREAD(jvalue)
    class(Thread), target, optional :: jvalue
    NullThread_jset_NULL_THREAD = .true.
    if (present(jvalue)) then
      NullThread_jcell_NULL_THREAD => jvalue
    else
      NullThread_jcell_NULL_THREAD => null()
    end if
  end subroutine

  function NullThread_jnew_0() result(this)
    class(NullThread), pointer :: this
    allocate(this)
    this%jclass = 'NullThread'
  end function
end module NullThread_m

