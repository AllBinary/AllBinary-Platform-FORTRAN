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
! package org.allbinary.input.motion.touch.action
module LeftTouchInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: LeftTouchInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: LeftTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: LeftTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function LeftTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LeftTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LeftTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function LeftTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. LeftTouchInputToGameKeyEventAction_jset_instance) then
      LeftTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    LeftTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => LeftTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine LeftTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    LeftTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      LeftTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      LeftTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function LeftTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(LeftTouchInputToGameKeyEventAction), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'LeftTouchInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function LeftTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(LeftTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call LeftTouchInputToGameKeyEventAction_jsetstatic_instance(LeftTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(LeftTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module LeftTouchInputToGameKeyEventAction_m

function LeftTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use LeftTouchInputToGameKeyEventAction_m, only: JObject, LeftTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LeftTouchInputToGameKeyEventAction_jnew_0()
end function

