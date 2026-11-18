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
module RightTouchInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: RightTouchInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: RightTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: RightTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function RightTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RightTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RightTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function RightTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. RightTouchInputToGameKeyEventAction_jset_instance) then
      RightTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    RightTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => RightTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine RightTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    RightTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      RightTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      RightTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function RightTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(RightTouchInputToGameKeyEventAction), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'RightTouchInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function RightTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(RightTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call RightTouchInputToGameKeyEventAction_jsetstatic_instance(RightTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(RightTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module RightTouchInputToGameKeyEventAction_m

function RightTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use RightTouchInputToGameKeyEventAction_m, only: JObject, RightTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => RightTouchInputToGameKeyEventAction_jnew_0()
end function

