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
module RightOrientationInputToGameKeyEventAction_m
  use JR_m
  use PlatformInputMappingFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use OrientationMotionGestureFactory_m
  use NullUtil_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: RightOrientationInputToGameKeyEventAction
  end type

  class(JObject), pointer, save :: RightOrientationInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: RightOrientationInputToGameKeyEventAction_jset_instance = .false.

contains

  function RightOrientationInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RightOrientationInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RightOrientationInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function RightOrientationInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. RightOrientationInputToGameKeyEventAction_jset_instance) then
      RightOrientationInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    RightOrientationInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => RightOrientationInputToGameKeyEventAction_jcell_instance
  end function

  subroutine RightOrientationInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    RightOrientationInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      RightOrientationInputToGameKeyEventAction_jcell_instance => jvalue
    else
      RightOrientationInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function RightOrientationInputToGameKeyEventAction_jnew_0() result(this)
    class(RightOrientationInputToGameKeyEventAction), pointer :: this
    class(OrientationMotionGestureFactory), pointer :: jtemp3
    class(PersistentInputMapping), pointer :: jtemp4
    class(PlatformInputMappingFactory), pointer :: jtemp5
    allocate(this)
    this%jclass = 'RightOrientationInputToGameKeyEventAction'
        jtemp5 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp3 => OrientationMotionGestureFactory_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getPersistentInputMappingInstance_0()
        continue ! super()
  end function

  recursive function RightOrientationInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(RightOrientationInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call RightOrientationInputToGameKeyEventAction_jsetstatic_instance(RightOrientationInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(RightOrientationInputToGameKeyEventAction_jstatic_instance())
        return
  end function
end module RightOrientationInputToGameKeyEventAction_m

function RightOrientationInputToGameKeyEventAction_jnew_0_jext() result(this)
  use RightOrientationInputToGameKeyEventAction_m, only: JObject, RightOrientationInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => RightOrientationInputToGameKeyEventAction_jnew_0()
end function

