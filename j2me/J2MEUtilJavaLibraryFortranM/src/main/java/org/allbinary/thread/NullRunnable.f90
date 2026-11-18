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
module NullRunnable_m
  use JR_m
  use ARunnable_m
  implicit none

  type, extends(ARunnable) :: NullRunnable
  end type

  class(NullRunnable), pointer, save :: NullRunnable_jcell_instance => null()
  logical, save :: NullRunnable_jset_instance = .false.

contains

  function NullRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRunnable)
      jresult => object
    end select
  end function

  function NullRunnable_jstatic_instance() result(jresult)
    class(NullRunnable), pointer :: jresult
    if (.not. NullRunnable_jset_instance) then
      NullRunnable_jset_instance = .true.
      NullRunnable_jcell_instance => NullRunnable_jnew_0()
    end if
    jresult => NullRunnable_jcell_instance
  end function

  subroutine NullRunnable_jsetstatic_instance(jvalue)
    class(NullRunnable), target, optional :: jvalue
    NullRunnable_jset_instance = .true.
    if (present(jvalue)) then
      NullRunnable_jcell_instance => jvalue
    else
      NullRunnable_jcell_instance => null()
    end if
  end subroutine

  recursive function NullRunnable_jnew_0() result(this)
    class(NullRunnable), pointer :: this
    allocate(this)
    this%jclass = 'NullRunnable'
        continue
  end function

  recursive function NullRunnable_jm_getInstance_0() result(jresult)
    class(NullRunnable), pointer :: jresult
        jresult => NullRunnable_jstatic_instance()
        return
  end function
end module NullRunnable_m

function NullRunnable_jnew_0_jext() result(this)
  use NullRunnable_m, only: JObject, NullRunnable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullRunnable_jnew_0()
end function

