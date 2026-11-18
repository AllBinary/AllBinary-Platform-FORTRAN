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
module DownOrientationInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use OrientationMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: DownOrientationInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: DownOrientationInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: DownOrientationInputToGameKeyEventAction_jset_instance = .false.

contains

  function DownOrientationInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownOrientationInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownOrientationInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function DownOrientationInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. DownOrientationInputToGameKeyEventAction_jset_instance) then
      DownOrientationInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    DownOrientationInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => DownOrientationInputToGameKeyEventAction_jcell_instance
  end function

  subroutine DownOrientationInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    DownOrientationInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      DownOrientationInputToGameKeyEventAction_jcell_instance => jvalue
    else
      DownOrientationInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function DownOrientationInputToGameKeyEventAction_jnew_0() result(this)
    class(DownOrientationInputToGameKeyEventAction), pointer :: this
    class(OrientationMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'DownOrientationInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => OrientationMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function DownOrientationInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(DownOrientationInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call DownOrientationInputToGameKeyEventAction_jsetstatic_instance(DownOrientationInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(DownOrientationInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module DownOrientationInputToGameKeyEventAction_m

function DownOrientationInputToGameKeyEventAction_jnew_0_jext() result(this)
  use DownOrientationInputToGameKeyEventAction_m, only: JObject, DownOrientationInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DownOrientationInputToGameKeyEventAction_jnew_0()
end function

