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
! package org.allbinary.game.input.motion.action
module SingleKeyPressGameKeyFromMotionGestureEventListener_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use CompleteMotionGestureInputEventListener_m
  use GameKeyEvent_m
  use PressGameKeyEventHandler_m
  use ForcedLogUtil_m
  use LogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonStrings_m
  use GameKeyCompleteMotionGestureInputEvent_m
  implicit none

  type, extends(CompleteMotionGestureInputEventListener) :: SingleKeyPressGameKeyFromMotionGestureEventListener
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_onEvent_1 => SingleKeyPressGameKeyFromMotionGestureEventListener_jm_onEvent_1
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => SingleKeyPressGameKeyFromMotionGestureEventListener_jm_onCompleteMotionGestureInputEvent_1
  end type


contains

  function SingleKeyPressGameKeyFromMotionGestureEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingleKeyPressGameKeyFromMotionGestureEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingleKeyPressGameKeyFromMotionGestureEventListener)
      jresult => object
    end select
  end function

  function SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0() result(this)
    class(SingleKeyPressGameKeyFromMotionGestureEventListener), pointer :: this
    allocate(this)
    this%jclass = 'SingleKeyPressGameKeyFromMotionGestureEventListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive subroutine SingleKeyPressGameKeyFromMotionGestureEventListener_jm_onEvent_1(this, j_eventObject)
    class(SingleKeyPressGameKeyFromMotionGestureEventListener), target :: this
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

  recursive subroutine SingleKeyPressGameKeyFromMotionGestureEventListener_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(SingleKeyPressGameKeyFromMotionGestureEventListener), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: j_gameKeyCompleteMotionGestureInputEvent
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(CommonStrings), pointer :: j_commonStrings
    class(PressGameKeyEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKeyCompleteMotionGestureInputEvent => GameKeyCompleteMotionGestureInputEvent_jcast(j_completeMotionGestureInputEvent)
            j_gameKeyEvent => j_gameKeyCompleteMotionGestureInputEvent%jm_getGameKeyEvent_0()
            jtemp2 => PressGameKeyEventHandler_jm_getInstance_0()
            call jtemp2%jm_fireEvent_1(j_gameKeyEvent)
  end subroutine
end module SingleKeyPressGameKeyFromMotionGestureEventListener_m

function SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0_jext() result(this)
  use SingleKeyPressGameKeyFromMotionGestureEventListener_m, only: JObject, SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0()
end function

