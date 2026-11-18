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
module UpOrientationInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use OrientationMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: UpOrientationInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: UpOrientationInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: UpOrientationInputToGameKeyEventAction_jset_instance = .false.

contains

  function UpOrientationInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpOrientationInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpOrientationInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function UpOrientationInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. UpOrientationInputToGameKeyEventAction_jset_instance) then
      UpOrientationInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    UpOrientationInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => UpOrientationInputToGameKeyEventAction_jcell_instance
  end function

  subroutine UpOrientationInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    UpOrientationInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      UpOrientationInputToGameKeyEventAction_jcell_instance => jvalue
    else
      UpOrientationInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function UpOrientationInputToGameKeyEventAction_jnew_0() result(this)
    class(UpOrientationInputToGameKeyEventAction), pointer :: this
    class(OrientationMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'UpOrientationInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => OrientationMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function UpOrientationInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(UpOrientationInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call UpOrientationInputToGameKeyEventAction_jsetstatic_instance(UpOrientationInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(UpOrientationInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module UpOrientationInputToGameKeyEventAction_m

function UpOrientationInputToGameKeyEventAction_jnew_0_jext() result(this)
  use UpOrientationInputToGameKeyEventAction_m, only: JObject, UpOrientationInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpOrientationInputToGameKeyEventAction_jnew_0()
end function

