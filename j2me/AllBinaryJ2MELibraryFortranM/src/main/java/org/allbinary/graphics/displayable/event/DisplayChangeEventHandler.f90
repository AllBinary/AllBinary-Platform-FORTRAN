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
! package org.allbinary.graphics.displayable.event
module DisplayChangeEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use DisplayChangeEventListener_m
  use DisplayChangeEvent_m
  implicit none

  type, extends(BasicEventHandler) :: DisplayChangeEventHandler
  contains
    procedure :: jm_process_2 => DisplayChangeEventHandler_jm_process_2
  end type

  class(DisplayChangeEventHandler), pointer, save :: DisplayChangeEventHandler_jcell_SINGLETON => null()
  logical, save :: DisplayChangeEventHandler_jset_SINGLETON = .false.

contains

  function DisplayChangeEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayChangeEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayChangeEventHandler)
      jresult => object
    end select
  end function

  function DisplayChangeEventHandler_jstatic_SINGLETON() result(jresult)
    class(DisplayChangeEventHandler), pointer :: jresult
    if (.not. DisplayChangeEventHandler_jset_SINGLETON) then
      DisplayChangeEventHandler_jset_SINGLETON = .true.
      DisplayChangeEventHandler_jcell_SINGLETON => DisplayChangeEventHandler_jnew_0()
    end if
    jresult => DisplayChangeEventHandler_jcell_SINGLETON
  end function

  subroutine DisplayChangeEventHandler_jsetstatic_SINGLETON(jvalue)
    class(DisplayChangeEventHandler), target, optional :: jvalue
    DisplayChangeEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      DisplayChangeEventHandler_jcell_SINGLETON => jvalue
    else
      DisplayChangeEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function DisplayChangeEventHandler_jnew_0() result(this)
    class(DisplayChangeEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'DisplayChangeEventHandler'
        continue
  end function

  recursive function DisplayChangeEventHandler_jm_getInstance_0() result(jresult)
    class(DisplayChangeEventHandler), pointer :: jresult
        jresult => DisplayChangeEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine DisplayChangeEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(DisplayChangeEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(DisplayChangeEventListener), pointer :: j_displayChangeEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_displayChangeEventListener => DisplayChangeEventListener_jcast(j_eventListenerInterface)
        call j_displayChangeEventListener%jm_onDisplayChangeEvent_1(DisplayChangeEvent_jcast(j_eventObject))
  end subroutine
end module DisplayChangeEventHandler_m

function DisplayChangeEventHandler_jnew_0_jext() result(this)
  use DisplayChangeEventHandler_m, only: JObject, DisplayChangeEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DisplayChangeEventHandler_jnew_0()
end function

