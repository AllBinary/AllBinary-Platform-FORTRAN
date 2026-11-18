! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.graphics.canvas.transition.progress
module ProgressEndListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: ProgressEndListener
  contains
    procedure :: jm_onEndEvent_0 => ProgressEndListener_jm_onEndEvent_0
  end type

  class(ProgressEndListener), pointer, save :: ProgressEndListener_jcell_instance => null()
  logical, save :: ProgressEndListener_jset_instance = .false.

contains

  function ProgressEndListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProgressEndListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProgressEndListener)
      jresult => object
    end select
  end function

  function ProgressEndListener_jstatic_instance() result(jresult)
    class(ProgressEndListener), pointer :: jresult
    if (.not. ProgressEndListener_jset_instance) then
      ProgressEndListener_jset_instance = .true.
      ProgressEndListener_jcell_instance => ProgressEndListener_jnew_0()
    end if
    jresult => ProgressEndListener_jcell_instance
  end function

  subroutine ProgressEndListener_jsetstatic_instance(jvalue)
    class(ProgressEndListener), target, optional :: jvalue
    ProgressEndListener_jset_instance = .true.
    if (present(jvalue)) then
      ProgressEndListener_jcell_instance => jvalue
    else
      ProgressEndListener_jcell_instance => null()
    end if
  end subroutine

  function ProgressEndListener_jnew_0() result(this)
    class(ProgressEndListener), pointer :: this
    allocate(this)
    this%jclass = 'ProgressEndListener'
  end function

  recursive subroutine ProgressEndListener_jm_onEndEvent_0(this)
    class(ProgressEndListener), target :: this
    continue
  end subroutine
end module ProgressEndListener_m

