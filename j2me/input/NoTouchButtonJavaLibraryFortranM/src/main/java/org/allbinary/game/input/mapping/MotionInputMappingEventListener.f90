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
! package org.allbinary.game.input.mapping
module MotionInputMappingEventListener_m
  use JR_m
  use InputMappingEvent_m
  use InputMappingEventListenerInterface_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  implicit none

  type, extends(InputMappingEventListenerInterface) :: MotionInputMappingEventListener
  contains
    procedure :: jm_onEvent_1 => MotionInputMappingEventListener_jm_onEvent_1
    procedure :: jm_onInputMappingEvent_1 => MotionInputMappingEventListener_jm_onInputMappingEvent_1
  end type


contains

  function MotionInputMappingEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionInputMappingEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionInputMappingEventListener)
      jresult => object
    end select
  end function

  function MotionInputMappingEventListener_jnew_0() result(this)
    class(MotionInputMappingEventListener), pointer :: this
    allocate(this)
    this%jclass = 'MotionInputMappingEventListener'
  end function

  recursive subroutine MotionInputMappingEventListener_jm_onEvent_1(this, j_eventObject)
    class(MotionInputMappingEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine MotionInputMappingEventListener_jm_onInputMappingEvent_1(this, j_inputMappingEvent)
    class(MotionInputMappingEventListener), target :: this
    class(InputMappingEvent), target, optional :: j_inputMappingEvent
    continue
  end subroutine
end module MotionInputMappingEventListener_m

