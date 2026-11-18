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
module NullABRunnable_m
  use JR_m
  use ABRunnable_m
  implicit none

  type, extends(ABRunnable) :: NullABRunnable
  contains
    procedure :: jm_isRunning_0 => NullABRunnable_jm_isRunning_0
  end type

  class(NullABRunnable), pointer, save :: NullABRunnable_jcell_instance => null()
  logical, save :: NullABRunnable_jset_instance = .false.

contains

  function NullABRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullABRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullABRunnable)
      jresult => object
    end select
  end function

  function NullABRunnable_jstatic_instance() result(jresult)
    class(NullABRunnable), pointer :: jresult
    if (.not. NullABRunnable_jset_instance) then
      NullABRunnable_jset_instance = .true.
      NullABRunnable_jcell_instance => NullABRunnable_jnew_0()
    end if
    jresult => NullABRunnable_jcell_instance
  end function

  subroutine NullABRunnable_jsetstatic_instance(jvalue)
    class(NullABRunnable), target, optional :: jvalue
    NullABRunnable_jset_instance = .true.
    if (present(jvalue)) then
      NullABRunnable_jcell_instance => jvalue
    else
      NullABRunnable_jcell_instance => null()
    end if
  end subroutine

  function NullABRunnable_jnew_0() result(this)
    class(NullABRunnable), pointer :: this
    allocate(this)
    this%jclass = 'NullABRunnable'
  end function

  recursive function NullABRunnable_jm_getInstance_0() result(jresult)
    class(NullABRunnable), pointer :: jresult
        jresult => NullABRunnable_jstatic_instance()
        return
  end function

  recursive function NullABRunnable_jm_isRunning_0(this) result(jresult)
    class(NullABRunnable), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module NullABRunnable_m

function NullABRunnable_jnew_0_jext() result(this)
  use NullABRunnable_m, only: JObject, NullABRunnable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullABRunnable_jnew_0()
end function

