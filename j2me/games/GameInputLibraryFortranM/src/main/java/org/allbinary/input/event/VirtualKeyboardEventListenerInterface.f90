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
! package org.allbinary.input.event
module VirtualKeyboardEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use VirtualKeyboardEvent_m
  implicit none

  type, extends(EventListenerInterface) :: VirtualKeyboardEventListenerInterface
  contains
    procedure :: jm_onVirtualKeyboardEvent_1 => VirtualKeyboardEventListenerInterface_jm_onVirtualKeyboardEvent_1
  end type


contains

  function VirtualKeyboardEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VirtualKeyboardEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VirtualKeyboardEventListenerInterface)
      jresult => object
    end select
  end function

  function VirtualKeyboardEventListenerInterface_jnew_0() result(this)
    class(VirtualKeyboardEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'VirtualKeyboardEventListenerInterface'
  end function

  recursive subroutine VirtualKeyboardEventListenerInterface_jm_onVirtualKeyboardEvent_1(this, j_virtualKeyboardEvent)
    class(VirtualKeyboardEventListenerInterface), target :: this
    class(VirtualKeyboardEvent), target, optional :: j_virtualKeyboardEvent
    error stop 'AbstractMethodError: VirtualKeyboardEventListenerInterface.onVirtualKeyboardEvent'
  end subroutine
end module VirtualKeyboardEventListenerInterface_m

