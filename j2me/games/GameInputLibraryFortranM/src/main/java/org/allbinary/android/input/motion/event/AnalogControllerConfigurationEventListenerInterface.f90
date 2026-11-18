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
! package org.allbinary.android.input.motion.event
module AnalogControllerConfigurationEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use AnalogControllerConfigurationEvent_m
  implicit none

  type, extends(EventListenerInterface) :: AnalogControllerConfigurationEventListenerInterface
  contains
    procedure :: jm_onAnalogControllerConfigurationEvent_1 => AnalogControllerConfigurationEventListenerInterface_jm_onAnalogControllerConfigurationEvent_1
  end type


contains

  function AnalogControllerConfigurationEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerConfigurationEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerConfigurationEventListenerInterface)
      jresult => object
    end select
  end function

  function AnalogControllerConfigurationEventListenerInterface_jnew_0() result(this)
    class(AnalogControllerConfigurationEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'AnalogControllerConfigurationEventListenerInterface'
  end function

  recursive subroutine AnalogControllerConfigurationEventListenerInterface_jm_onAnalogControllerConfigurationEvent_1(this, j_analogControllerConfigurationEvent)
    class(AnalogControllerConfigurationEventListenerInterface), target :: this
    class(AnalogControllerConfigurationEvent), target, optional :: j_analogControllerConfigurationEvent
    error stop 'AbstractMethodError: AnalogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent'
  end subroutine
end module AnalogControllerConfigurationEventListenerInterface_m

