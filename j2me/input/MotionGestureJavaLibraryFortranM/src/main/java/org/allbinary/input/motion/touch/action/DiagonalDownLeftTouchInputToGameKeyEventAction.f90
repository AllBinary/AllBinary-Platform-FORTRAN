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
module DiagonalDownLeftTouchInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: DiagonalDownLeftTouchInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: DiagonalDownLeftTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: DiagonalDownLeftTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function DiagonalDownLeftTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DiagonalDownLeftTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DiagonalDownLeftTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function DiagonalDownLeftTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. DiagonalDownLeftTouchInputToGameKeyEventAction_jset_instance) then
      DiagonalDownLeftTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    DiagonalDownLeftTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => DiagonalDownLeftTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine DiagonalDownLeftTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    DiagonalDownLeftTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      DiagonalDownLeftTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      DiagonalDownLeftTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function DiagonalDownLeftTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(DiagonalDownLeftTouchInputToGameKeyEventAction), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'DiagonalDownLeftTouchInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function DiagonalDownLeftTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(DiagonalDownLeftTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call DiagonalDownLeftTouchInputToGameKeyEventAction_jsetstatic_instance(DiagonalDownLeftTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(DiagonalDownLeftTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module DiagonalDownLeftTouchInputToGameKeyEventAction_m

function DiagonalDownLeftTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use DiagonalDownLeftTouchInputToGameKeyEventAction_m, only: JObject, DiagonalDownLeftTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DiagonalDownLeftTouchInputToGameKeyEventAction_jnew_0()
end function

