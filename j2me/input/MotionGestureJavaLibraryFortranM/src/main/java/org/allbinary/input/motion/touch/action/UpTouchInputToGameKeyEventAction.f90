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
module UpTouchInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: UpTouchInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: UpTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: UpTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function UpTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function UpTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. UpTouchInputToGameKeyEventAction_jset_instance) then
      UpTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    UpTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => UpTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine UpTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    UpTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      UpTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      UpTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function UpTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(UpTouchInputToGameKeyEventAction), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'UpTouchInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function UpTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(UpTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call UpTouchInputToGameKeyEventAction_jsetstatic_instance(UpTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(UpTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module UpTouchInputToGameKeyEventAction_m

function UpTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use UpTouchInputToGameKeyEventAction_m, only: JObject, UpTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpTouchInputToGameKeyEventAction_jnew_0()
end function

