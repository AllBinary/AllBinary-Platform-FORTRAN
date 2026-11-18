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
! package org.allbinary.input.motion.trackball.action
module DownTrackballInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TrackballMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: DownTrackballInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: DownTrackballInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: DownTrackballInputToGameKeyEventAction_jset_instance = .false.

contains

  function DownTrackballInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownTrackballInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownTrackballInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function DownTrackballInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. DownTrackballInputToGameKeyEventAction_jset_instance) then
      DownTrackballInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    DownTrackballInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => DownTrackballInputToGameKeyEventAction_jcell_instance
  end function

  subroutine DownTrackballInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    DownTrackballInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      DownTrackballInputToGameKeyEventAction_jcell_instance => jvalue
    else
      DownTrackballInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function DownTrackballInputToGameKeyEventAction_jnew_0() result(this)
    class(DownTrackballInputToGameKeyEventAction), pointer :: this
    class(TrackballMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'DownTrackballInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => TrackballMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function DownTrackballInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(DownTrackballInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call DownTrackballInputToGameKeyEventAction_jsetstatic_instance(DownTrackballInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(DownTrackballInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module DownTrackballInputToGameKeyEventAction_m

function DownTrackballInputToGameKeyEventAction_jnew_0_jext() result(this)
  use DownTrackballInputToGameKeyEventAction_m, only: JObject, DownTrackballInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DownTrackballInputToGameKeyEventAction_jnew_0()
end function

