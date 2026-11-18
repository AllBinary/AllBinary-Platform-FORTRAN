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
module VirtualKeyboardEventHandler_m
  use JR_m
  use BooleanFactory_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use Thread_m
  use VirtualKeyboardEvent_m
  use VirtualKeyboardEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: VirtualKeyboardEventHandler
    class(VirtualKeyboardEvent), pointer :: f_SHOW_EVENT => null()
    class(VirtualKeyboardEvent), pointer :: f_HIDE_EVENT => null()
  contains
    procedure :: jm_process_2 => VirtualKeyboardEventHandler_jm_process_2
    procedure :: jm_open_0 => VirtualKeyboardEventHandler_jm_open_0
    procedure :: jm_close_0 => VirtualKeyboardEventHandler_jm_close_0
  end type

  class(VirtualKeyboardEventHandler), pointer, save :: VirtualKeyboardEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: VirtualKeyboardEventHandler_jset_gameKeyEventHandler = .false.

contains

  function VirtualKeyboardEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VirtualKeyboardEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VirtualKeyboardEventHandler)
      jresult => object
    end select
  end function

  function VirtualKeyboardEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(VirtualKeyboardEventHandler), pointer :: jresult
    if (.not. VirtualKeyboardEventHandler_jset_gameKeyEventHandler) then
      VirtualKeyboardEventHandler_jset_gameKeyEventHandler = .true.
      VirtualKeyboardEventHandler_jcell_gameKeyEventHandler => VirtualKeyboardEventHandler_jnew_0()
    end if
    jresult => VirtualKeyboardEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine VirtualKeyboardEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(VirtualKeyboardEventHandler), target, optional :: jvalue
    VirtualKeyboardEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      VirtualKeyboardEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      VirtualKeyboardEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function VirtualKeyboardEventHandler_jnew_0() result(this)
    class(VirtualKeyboardEventHandler), pointer :: this
    class(BooleanFactory), pointer :: jtemp1
    class(BooleanFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'VirtualKeyboardEventHandler'
    jtemp1 => BooleanFactory_jm_getInstance_0()
    this%f_SHOW_EVENT => VirtualKeyboardEvent_jnew_1(jtemp1%f_TRUE)
    jtemp2 => BooleanFactory_jm_getInstance_0()
    this%f_HIDE_EVENT => VirtualKeyboardEvent_jnew_1(jtemp2%f_FALSE)
        continue
  end function

  recursive function VirtualKeyboardEventHandler_jm_getInstance_0() result(jresult)
    class(VirtualKeyboardEventHandler), pointer :: jresult
        jresult => VirtualKeyboardEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine VirtualKeyboardEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(VirtualKeyboardEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(VirtualKeyboardEventListenerInterface), pointer :: j_virtualKeyboardEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_virtualKeyboardEventListenerInterface => VirtualKeyboardEventListenerInterface_jcast(j_eventListenerInterface)
        call j_virtualKeyboardEventListenerInterface%jm_onVirtualKeyboardEvent_1(VirtualKeyboardEvent_jcast(j_eventObject))
  end subroutine

  recursive subroutine VirtualKeyboardEventHandler_jm_open_0(this)
    class(VirtualKeyboardEventHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call Thread_jm_sleep_1(120)
            call this%jm_fireEvent_1(this%f_SHOW_EVENT)
  end subroutine

  recursive subroutine VirtualKeyboardEventHandler_jm_close_0(this)
    class(VirtualKeyboardEventHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call Thread_jm_sleep_1(120)
            call this%jm_fireEvent_1(this%f_HIDE_EVENT)
  end subroutine
end module VirtualKeyboardEventHandler_m

function VirtualKeyboardEventHandler_jnew_0_jext() result(this)
  use VirtualKeyboardEventHandler_m, only: JObject, VirtualKeyboardEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => VirtualKeyboardEventHandler_jnew_0()
end function

