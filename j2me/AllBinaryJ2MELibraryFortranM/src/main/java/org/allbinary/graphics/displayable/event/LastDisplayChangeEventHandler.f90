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
! package org.allbinary.graphics.displayable.event
module LastDisplayChangeEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use DisplayChangeEventListener_m
  use DisplayChangeEvent_m
  implicit none

  type, extends(BasicEventHandler) :: LastDisplayChangeEventHandler
  contains
    procedure :: jm_process_2 => LastDisplayChangeEventHandler_jm_process_2
  end type

  class(LastDisplayChangeEventHandler), pointer, save :: LastDisplayChangeEventHandler_jcell_SINGLETON => null()
  logical, save :: LastDisplayChangeEventHandler_jset_SINGLETON = .false.

contains

  function LastDisplayChangeEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LastDisplayChangeEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LastDisplayChangeEventHandler)
      jresult => object
    end select
  end function

  function LastDisplayChangeEventHandler_jstatic_SINGLETON() result(jresult)
    class(LastDisplayChangeEventHandler), pointer :: jresult
    if (.not. LastDisplayChangeEventHandler_jset_SINGLETON) then
      LastDisplayChangeEventHandler_jset_SINGLETON = .true.
      LastDisplayChangeEventHandler_jcell_SINGLETON => LastDisplayChangeEventHandler_jnew_0()
    end if
    jresult => LastDisplayChangeEventHandler_jcell_SINGLETON
  end function

  subroutine LastDisplayChangeEventHandler_jsetstatic_SINGLETON(jvalue)
    class(LastDisplayChangeEventHandler), target, optional :: jvalue
    LastDisplayChangeEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      LastDisplayChangeEventHandler_jcell_SINGLETON => jvalue
    else
      LastDisplayChangeEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function LastDisplayChangeEventHandler_jnew_0() result(this)
    class(LastDisplayChangeEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'LastDisplayChangeEventHandler'
        continue
  end function

  recursive function LastDisplayChangeEventHandler_jm_getInstance_0() result(jresult)
    class(LastDisplayChangeEventHandler), pointer :: jresult
        jresult => LastDisplayChangeEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine LastDisplayChangeEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(LastDisplayChangeEventHandler), target :: this
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
end module LastDisplayChangeEventHandler_m

function LastDisplayChangeEventHandler_jnew_0_jext() result(this)
  use LastDisplayChangeEventHandler_m, only: JObject, LastDisplayChangeEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LastDisplayChangeEventHandler_jnew_0()
end function

