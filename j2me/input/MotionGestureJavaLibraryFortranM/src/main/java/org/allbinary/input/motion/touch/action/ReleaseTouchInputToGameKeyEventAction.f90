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
module ReleaseTouchInputToGameKeyEventAction_m
  use JR_m
  use GameKey_m
  use GameKeyFactory_m
  use PlatformInputMappingFactory_m
  use GameKeyEventFactory_m
  use GameKeyCompleteMotionGestureInputEvent_m
  use TouchMotionGestureFactory_m
  use NullUtil_m
  use CommonStrings_m
  implicit none

  type, extends(GameKeyCompleteMotionGestureInputEvent) :: ReleaseTouchInputToGameKeyEventAction
    class(GameKey), pointer :: f_NONE => null()
  contains
    procedure :: jm_update_0 => ReleaseTouchInputToGameKeyEventAction_jm_update_0
  end type

  class(JObject), pointer, save :: ReleaseTouchInputToGameKeyEventAction_jcell_instance => null()
  logical, save :: ReleaseTouchInputToGameKeyEventAction_jset_instance = .false.

contains

  function ReleaseTouchInputToGameKeyEventAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ReleaseTouchInputToGameKeyEventAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ReleaseTouchInputToGameKeyEventAction)
      jresult => object
    end select
  end function

  function ReleaseTouchInputToGameKeyEventAction_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ReleaseTouchInputToGameKeyEventAction_jset_instance) then
      ReleaseTouchInputToGameKeyEventAction_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ReleaseTouchInputToGameKeyEventAction_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => ReleaseTouchInputToGameKeyEventAction_jcell_instance
  end function

  subroutine ReleaseTouchInputToGameKeyEventAction_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    ReleaseTouchInputToGameKeyEventAction_jset_instance = .true.
    if (present(jvalue)) then
      ReleaseTouchInputToGameKeyEventAction_jcell_instance => jvalue
    else
      ReleaseTouchInputToGameKeyEventAction_jcell_instance => null()
    end if
  end subroutine

  recursive function ReleaseTouchInputToGameKeyEventAction_jnew_0() result(this)
    class(ReleaseTouchInputToGameKeyEventAction), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(TouchMotionGestureFactory), pointer :: jtemp4
    class(PersistentInputMapping), pointer :: jtemp5
    class(PlatformInputMappingFactory), pointer :: jtemp6
    class(GameKeyEventFactory), pointer :: jtemp7
    class(GameKeyFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ReleaseTouchInputToGameKeyEventAction'
    jtemp3 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp3%f_NONE
        jtemp6 => PlatformInputMappingFactory_jm_getInstance_0()
        jtemp4 => TouchMotionGestureFactory_jm_getInstance_0()
        jtemp5 => jtemp6%jm_getPersistentInputMappingInstance_0()
        continue ! super()
        continue ! try
            call this%jm_setGameKey_1(this%f_NONE)
            jtemp7 => GameKeyEventFactory_jm_getInstance_0()
            call this%jm_setGameKeyEvent_1(jtemp7%jm_getInstanceForInput_2(this, this%f_NONE))
  end function

  recursive function ReleaseTouchInputToGameKeyEventAction_jm_getInstance_0() result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(ReleaseTouchInputToGameKeyEventAction_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call ReleaseTouchInputToGameKeyEventAction_jsetstatic_instance(ReleaseTouchInputToGameKeyEventAction_jnew_0())
        end if
        jresult => GameKeyCompleteMotionGestureInputEvent_jcast(ReleaseTouchInputToGameKeyEventAction_jstatic_instance())
        return
  end function

  recursive subroutine ReleaseTouchInputToGameKeyEventAction_jm_update_0(this)
    class(ReleaseTouchInputToGameKeyEventAction), target :: this
    continue
  end subroutine
end module ReleaseTouchInputToGameKeyEventAction_m

function ReleaseTouchInputToGameKeyEventAction_jnew_0_jext() result(this)
  use ReleaseTouchInputToGameKeyEventAction_m, only: JObject, ReleaseTouchInputToGameKeyEventAction_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ReleaseTouchInputToGameKeyEventAction_jnew_0()
end function

