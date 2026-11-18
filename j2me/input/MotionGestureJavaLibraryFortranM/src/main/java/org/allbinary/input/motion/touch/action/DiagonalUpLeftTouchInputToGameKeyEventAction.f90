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
module DiagonalUpLeftTouchInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: DiagonalUpLeftTouchInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: DiagonalUpLeftTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: DiagonalUpLeftTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function DiagonalUpLeftTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DiagonalUpLeftTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DiagonalUpLeftTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function DiagonalUpLeftTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. DiagonalUpLeftTouchInputToGameKeyEventAction_jset_instance) then
      DiagonalUpLeftTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    DiagonalUpLeftTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => DiagonalUpLeftTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine DiagonalUpLeftTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    DiagonalUpLeftTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      DiagonalUpLeftTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      DiagonalUpLeftTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function DiagonalUpLeftTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(DiagonalUpLeftTouchInputToGameKeyEventAction), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'DiagonalUpLeftTouchInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function DiagonalUpLeftTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(DiagonalUpLeftTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call DiagonalUpLeftTouchInputToGameKeyEventAction_jsetstatic_instance(DiagonalUpLeftTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(DiagonalUpLeftTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module DiagonalUpLeftTouchInputToGameKeyEventAction_m

function DiagonalUpLeftTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use DiagonalUpLeftTouchInputToGameKeyEventAction_m, only: JObject, DiagonalUpLeftTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DiagonalUpLeftTouchInputToGameKeyEventAction_jnew_0()
end function

