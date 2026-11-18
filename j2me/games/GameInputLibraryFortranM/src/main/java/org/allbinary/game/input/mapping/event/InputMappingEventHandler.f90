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
! package org.allbinary.game.input.mapping.event
module InputMappingEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use InputMappingEventListenerInterface_m
  use InputMappingEvent_m
  implicit none

  type, extends(BasicEventHandler) :: InputMappingEventHandler
  contains
    procedure :: jm_process_2 => InputMappingEventHandler_jm_process_2
  end type

  class(InputMappingEventHandler), pointer, save :: InputMappingEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: InputMappingEventHandler_jset_gameKeyEventHandler = .false.

contains

  function InputMappingEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMappingEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMappingEventHandler)
      jresult => object
    end select
  end function

  function InputMappingEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(InputMappingEventHandler), pointer :: jresult
    if (.not. InputMappingEventHandler_jset_gameKeyEventHandler) then
      InputMappingEventHandler_jset_gameKeyEventHandler = .true.
      InputMappingEventHandler_jcell_gameKeyEventHandler => InputMappingEventHandler_jnew_0()
    end if
    jresult => InputMappingEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine InputMappingEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(InputMappingEventHandler), target, optional :: jvalue
    InputMappingEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      InputMappingEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      InputMappingEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function InputMappingEventHandler_jnew_0() result(this)
    class(InputMappingEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'InputMappingEventHandler'
        continue
  end function

  recursive function InputMappingEventHandler_jm_getInstance_0() result(jresult)
    class(InputMappingEventHandler), pointer :: jresult
        jresult => InputMappingEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine InputMappingEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(InputMappingEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(InputMappingEventListenerInterface), pointer :: j_inputMappingEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_inputMappingEventListenerInterface => InputMappingEventListenerInterface_jcast(j_eventListenerInterface)
        call j_inputMappingEventListenerInterface%jm_onInputMappingEvent_1(InputMappingEvent_jcast(j_eventObject))
  end subroutine
end module InputMappingEventHandler_m

function InputMappingEventHandler_jnew_0_jext() result(this)
  use InputMappingEventHandler_m, only: JObject, InputMappingEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => InputMappingEventHandler_jnew_0()
end function

