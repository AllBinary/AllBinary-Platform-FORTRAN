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
! package org.allbinary.input.motion.gyro.action
module LeftOrientationInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use OrientationMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: LeftOrientationInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: LeftOrientationInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: LeftOrientationInputToGameKeyEventAction_jset_instance = .false.

contains

  function LeftOrientationInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LeftOrientationInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LeftOrientationInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function LeftOrientationInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. LeftOrientationInputToGameKeyEventAction_jset_instance) then
      LeftOrientationInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    LeftOrientationInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => LeftOrientationInputToGameKeyEventAction_jcell_instance
  end function

  subroutine LeftOrientationInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    LeftOrientationInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      LeftOrientationInputToGameKeyEventAction_jcell_instance => jvalue
    else
      LeftOrientationInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function LeftOrientationInputToGameKeyEventAction_jnew_0() result(this)
    class(LeftOrientationInputToGameKeyEventAction), pointer :: this
    class(OrientationMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'LeftOrientationInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => OrientationMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function LeftOrientationInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(LeftOrientationInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call LeftOrientationInputToGameKeyEventAction_jsetstatic_instance(LeftOrientationInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(LeftOrientationInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module LeftOrientationInputToGameKeyEventAction_m

function LeftOrientationInputToGameKeyEventAction_jnew_0_jext() result(this)
  use LeftOrientationInputToGameKeyEventAction_m, only: JObject, LeftOrientationInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LeftOrientationInputToGameKeyEventAction_jnew_0()
end function

