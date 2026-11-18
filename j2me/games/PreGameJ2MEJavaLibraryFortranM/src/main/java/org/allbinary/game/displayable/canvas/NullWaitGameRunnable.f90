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
! package org.allbinary.game.displayable.canvas
module NullWaitGameRunnable_m
  use JR_m
  use GameRunnable_m
  implicit none

  type, extends(GameRunnable) :: NullWaitGameRunnable
  end type

  class(GameRunnable), pointer, save :: NullWaitGameRunnable_jcell_instance => null()
  logical, save :: NullWaitGameRunnable_jset_instance = .false.

contains

  function NullWaitGameRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullWaitGameRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullWaitGameRunnable)
      jresult => object
    end select
  end function

  function NullWaitGameRunnable_jstatic_instance() result(jresult)
    class(GameRunnable), pointer :: jresult
    if (.not. NullWaitGameRunnable_jset_instance) then
      NullWaitGameRunnable_jset_instance = .true.
      NullWaitGameRunnable_jcell_instance => NullWaitGameRunnable_jnew_0()
    end if
    jresult => NullWaitGameRunnable_jcell_instance
  end function

  subroutine NullWaitGameRunnable_jsetstatic_instance(jvalue)
    class(GameRunnable), target, optional :: jvalue
    NullWaitGameRunnable_jset_instance = .true.
    if (present(jvalue)) then
      NullWaitGameRunnable_jcell_instance => jvalue
    else
      NullWaitGameRunnable_jcell_instance => null()
    end if
  end subroutine

  function NullWaitGameRunnable_jnew_0() result(this)
    class(NullWaitGameRunnable), pointer :: this
    allocate(this)
    this%jclass = 'NullWaitGameRunnable'
  end function

  recursive function NullWaitGameRunnable_jm_getInstance_0() result(jresult)
    class(GameRunnable), pointer :: jresult
        jresult => NullWaitGameRunnable_jstatic_instance()
        return
  end function
end module NullWaitGameRunnable_m

function NullWaitGameRunnable_jnew_0_jext() result(this)
  use NullWaitGameRunnable_m, only: JObject, NullWaitGameRunnable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullWaitGameRunnable_jnew_0()
end function

