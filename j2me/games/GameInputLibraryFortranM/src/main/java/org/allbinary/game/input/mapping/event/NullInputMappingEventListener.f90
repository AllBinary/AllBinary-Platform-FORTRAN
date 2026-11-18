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
! package org.allbinary.game.input.mapping.event
module NullInputMappingEventListener_m
  use JR_m
  use AllBinaryEventObject_m
  use InputMappingEventListenerInterface_m
  use InputMappingEvent_m
  implicit none

  type, extends(InputMappingEventListenerInterface) :: NullInputMappingEventListener
  contains
    procedure :: jm_onInputMappingEvent_1 => NullInputMappingEventListener_jm_onInputMappingEvent_1
    procedure :: jm_onEvent_1 => NullInputMappingEventListener_jm_onEvent_1
  end type

  class(NullInputMappingEventListener), pointer, save :: NullInputMappingEventListener_jcell_NULL_INPUT_MAPPING_EVENT_LISTENER => null()
  logical, save :: NullInputMappingEventListener_jset_NULL_INPUT_MAPPING_EVENT_LISTENER = .false.

contains

  function NullInputMappingEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullInputMappingEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullInputMappingEventListener)
      jresult => object
    end select
  end function

  function NullInputMappingEventListener_jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER() result(jresult)
    class(NullInputMappingEventListener), pointer :: jresult
    if (.not. NullInputMappingEventListener_jset_NULL_INPUT_MAPPING_EVENT_LISTENER) then
      NullInputMappingEventListener_jset_NULL_INPUT_MAPPING_EVENT_LISTENER = .true.
      NullInputMappingEventListener_jcell_NULL_INPUT_MAPPING_EVENT_LISTENER => NullInputMappingEventListener_jnew_0()
    end if
    jresult => NullInputMappingEventListener_jcell_NULL_INPUT_MAPPING_EVENT_LISTENER
  end function

  subroutine NullInputMappingEventListener_jsetstatic_NULL_INPUT_MAPPING_EVENT_LISTENER(jvalue)
    class(NullInputMappingEventListener), target, optional :: jvalue
    NullInputMappingEventListener_jset_NULL_INPUT_MAPPING_EVENT_LISTENER = .true.
    if (present(jvalue)) then
      NullInputMappingEventListener_jcell_NULL_INPUT_MAPPING_EVENT_LISTENER => jvalue
    else
      NullInputMappingEventListener_jcell_NULL_INPUT_MAPPING_EVENT_LISTENER => null()
    end if
  end subroutine

  function NullInputMappingEventListener_jnew_0() result(this)
    class(NullInputMappingEventListener), pointer :: this
    allocate(this)
    this%jclass = 'NullInputMappingEventListener'
  end function

  recursive subroutine NullInputMappingEventListener_jm_onInputMappingEvent_1(this, j_inputMappingEvent)
    class(NullInputMappingEventListener), target :: this
    class(InputMappingEvent), target, optional :: j_inputMappingEvent
    continue
  end subroutine

  recursive subroutine NullInputMappingEventListener_jm_onEvent_1(this, j_eventObject)
    class(NullInputMappingEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    continue
  end subroutine
end module NullInputMappingEventListener_m

