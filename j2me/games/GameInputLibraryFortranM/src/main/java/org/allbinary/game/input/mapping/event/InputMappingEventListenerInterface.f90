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
module InputMappingEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use InputMappingEvent_m
  implicit none

  type, extends(EventListenerInterface) :: InputMappingEventListenerInterface
  contains
    procedure :: jm_onInputMappingEvent_1 => InputMappingEventListenerInterface_jm_onInputMappingEvent_1
  end type


contains

  function InputMappingEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMappingEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMappingEventListenerInterface)
      jresult => object
    end select
  end function

  function InputMappingEventListenerInterface_jnew_0() result(this)
    class(InputMappingEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'InputMappingEventListenerInterface'
  end function

  recursive subroutine InputMappingEventListenerInterface_jm_onInputMappingEvent_1(this, j_inputMappingEvent)
    class(InputMappingEventListenerInterface), target :: this
    class(InputMappingEvent), target, optional :: j_inputMappingEvent
    error stop 'AbstractMethodError: InputMappingEventListenerInterface.onInputMappingEvent'
  end subroutine
end module InputMappingEventListenerInterface_m

