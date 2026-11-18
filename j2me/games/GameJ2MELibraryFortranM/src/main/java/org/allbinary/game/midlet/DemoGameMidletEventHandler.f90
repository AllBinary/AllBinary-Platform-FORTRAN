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
! package org.allbinary.game.midlet
module DemoGameMidletEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use DemoGameMidletEventListener_m
  use DemoGameMidletEvent_m
  implicit none

  type, extends(BasicEventHandler) :: DemoGameMidletEventHandler
  contains
    procedure :: jm_process_2 => DemoGameMidletEventHandler_jm_process_2
  end type

  class(DemoGameMidletEventHandler), pointer, save :: DemoGameMidletEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: DemoGameMidletEventHandler_jset_gameKeyEventHandler = .false.

contains

  function DemoGameMidletEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletEventHandler)
      jresult => object
    end select
  end function

  function DemoGameMidletEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(DemoGameMidletEventHandler), pointer :: jresult
    if (.not. DemoGameMidletEventHandler_jset_gameKeyEventHandler) then
      DemoGameMidletEventHandler_jset_gameKeyEventHandler = .true.
      DemoGameMidletEventHandler_jcell_gameKeyEventHandler => DemoGameMidletEventHandler_jnew_0()
    end if
    jresult => DemoGameMidletEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine DemoGameMidletEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(DemoGameMidletEventHandler), target, optional :: jvalue
    DemoGameMidletEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      DemoGameMidletEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      DemoGameMidletEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function DemoGameMidletEventHandler_jnew_0() result(this)
    class(DemoGameMidletEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletEventHandler'
        continue
  end function

  recursive function DemoGameMidletEventHandler_jm_getInstance_0() result(jresult)
    class(DemoGameMidletEventHandler), pointer :: jresult
        jresult => DemoGameMidletEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine DemoGameMidletEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(DemoGameMidletEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(DemoGameMidletEventListener), pointer :: j_demoGameMidletEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_demoGameMidletEventListener => DemoGameMidletEventListener_jcast(j_eventListenerInterface)
        call j_demoGameMidletEventListener%jm_onDemoGameMidletEvent_1(DemoGameMidletEvent_jcast(j_eventObject))
  end subroutine
end module DemoGameMidletEventHandler_m

function DemoGameMidletEventHandler_jnew_0_jext() result(this)
  use DemoGameMidletEventHandler_m, only: JObject, DemoGameMidletEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DemoGameMidletEventHandler_jnew_0()
end function

