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
module NoCompleteMotionGestureInputEventListener_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use CompleteMotionGestureInputEventListener_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  implicit none

  type, extends(CompleteMotionGestureInputEventListener) :: NoCompleteMotionGestureInputEventListener
  contains
    procedure :: jm_onEvent_1 => NoCompleteMotionGestureInputEventListener_jm_onEvent_1
    procedure :: jm_onCompleteMotionGestureInputEvent_1 => NoCompleteMotionGestureInputEventListener_jm_onCompleteMotionGestureInputEvent_1
  end type

  class(NoCompleteMotionGestureInputEventListener), pointer, save :: NoCompleteMotionGestureInputEventListener_jcell_instance => null()
  logical, save :: NoCompleteMotionGestureInputEventListener_jset_instance = .false.

contains

  function NoCompleteMotionGestureInputEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoCompleteMotionGestureInputEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoCompleteMotionGestureInputEventListener)
      jresult => object
    end select
  end function

  function NoCompleteMotionGestureInputEventListener_jstatic_instance() result(jresult)
    class(NoCompleteMotionGestureInputEventListener), pointer :: jresult
    if (.not. NoCompleteMotionGestureInputEventListener_jset_instance) then
      NoCompleteMotionGestureInputEventListener_jset_instance = .true.
      NoCompleteMotionGestureInputEventListener_jcell_instance => NoCompleteMotionGestureInputEventListener_jnew_0()
    end if
    jresult => NoCompleteMotionGestureInputEventListener_jcell_instance
  end function

  subroutine NoCompleteMotionGestureInputEventListener_jsetstatic_instance(jvalue)
    class(NoCompleteMotionGestureInputEventListener), target, optional :: jvalue
    NoCompleteMotionGestureInputEventListener_jset_instance = .true.
    if (present(jvalue)) then
      NoCompleteMotionGestureInputEventListener_jcell_instance => jvalue
    else
      NoCompleteMotionGestureInputEventListener_jcell_instance => null()
    end if
  end subroutine

  recursive function NoCompleteMotionGestureInputEventListener_jnew_0() result(this)
    class(NoCompleteMotionGestureInputEventListener), pointer :: this
    allocate(this)
    this%jclass = 'NoCompleteMotionGestureInputEventListener'
        continue
  end function

  recursive subroutine NoCompleteMotionGestureInputEventListener_jm_onEvent_1(this, j_eventObject)
    class(NoCompleteMotionGestureInputEventListener), target :: this
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

  recursive subroutine NoCompleteMotionGestureInputEventListener_jm_onCompleteMotionGestureInputEvent_1(this, j_completeMotionGestureInputEvent)
    class(NoCompleteMotionGestureInputEventListener), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_completeMotionGestureInputEvent
    continue
  end subroutine

  recursive function NoCompleteMotionGestureInputEventListener_jm_getInstance_0() result(jresult)
    class(NoCompleteMotionGestureInputEventListener), pointer :: jresult
        jresult => NoCompleteMotionGestureInputEventListener_jstatic_instance()
        return
  end function
end module NoCompleteMotionGestureInputEventListener_m

function NoCompleteMotionGestureInputEventListener_jnew_0_jext() result(this)
  use NoCompleteMotionGestureInputEventListener_m, only: JObject, NoCompleteMotionGestureInputEventListener_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoCompleteMotionGestureInputEventListener_jnew_0()
end function

