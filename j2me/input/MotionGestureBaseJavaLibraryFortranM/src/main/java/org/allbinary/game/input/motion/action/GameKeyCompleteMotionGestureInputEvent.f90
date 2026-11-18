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
! package org.allbinary.game.input.motion.action
module GameKeyCompleteMotionGestureInputEvent_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use GameKey_m
  use GameKeyEventSourceInterface_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use InputToGameKeyMapping_m
  use MotionGestureInput_m
  use CommonStrings_m
  use GameKeyCompleteMotionGestureInputEventFactory_m
  implicit none

  type, extends(CompleteMotionGestureInputEvent) :: GameKeyCompleteMotionGestureInputEvent
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    integer(4) :: f_SOURCE_ID = 0
    class(GameKey), pointer :: f_gameKey => null()
    class(GameKeyEvent), pointer :: f_gameKeyEvent => null()
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
  contains
    procedure :: jm_getSourceId_0 => GameKeyCompleteMotionGestureInputEvent_jm_getSourceId_0
    procedure :: jm_update_0 => GameKeyCompleteMotionGestureInputEvent_jm_update_0
    procedure :: jm_setGameKeyEvent_1 => GameKeyCompleteMotionGestureInputEvent_jm_setGameKeyEvent_1
    procedure :: jm_getGameKeyEvent_0 => GameKeyCompleteMotionGestureInputEvent_jm_getGameKeyEvent_0
    procedure :: jm_setGameKey_1 => GameKeyCompleteMotionGestureInputEvent_jm_setGameKey_1
    procedure :: jm_getGameKey_0 => GameKeyCompleteMotionGestureInputEvent_jm_getGameKey_0
  end type

  ! GameKeyCompleteMotionGestureInputEvent used as a GameKeyEventSourceInterface
  type, extends(GameKeyEventSourceInterface) :: GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jtarget => null()
  contains
    procedure :: jm_getSourceId_0 => GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface_jm_getSourceId_0
  end type


contains

  function GameKeyCompleteMotionGestureInputEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyCompleteMotionGestureInputEvent)
      jresult => object
    end select
  end function

  function GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface_jnew(object) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), target :: object
    class(GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameKeyCompleteMotionGestureInputEvent'
    jresult%jtarget => object
  end function

  recursive function GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface_jm_getSourceId_0(this) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getSourceId_0()
  end function

  recursive function GameKeyCompleteMotionGestureInputEvent_jnew_3(j_name, j_motionGestureInput, j_inputToGameKeyMapping) result(this)
    character(len=*), intent(in) :: j_name
    class(MotionGestureInput), target, optional :: j_motionGestureInput
    class(InputToGameKeyMapping), target, optional :: j_inputToGameKeyMapping
    class(GameKeyCompleteMotionGestureInputEvent), pointer :: this
    class(GameKeyCompleteMotionGestureInputEventFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameKeyCompleteMotionGestureInputEvent'
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_SOURCE_ID = this%f_gameKeyEventFactory%f_MOTION_GESTURE_SOURCE_ID
    this%f_gameKey => GameKey_jstatic_NULL_GAME_KEY()
    this%f_gameKeyEvent => GameKeyEvent_jstatic_NONE()
    
        continue ! super()
        this%f_inputToGameKeyMapping => j_inputToGameKeyMapping
        jtemp1 => GameKeyCompleteMotionGestureInputEventFactory_jm_getInstance_0()
        call jtemp1%jm_add_1(this)
        call this%jm_update_0()
  end function

  recursive function GameKeyCompleteMotionGestureInputEvent_jm_getSourceId_0(this) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_SOURCE_ID
        return
  end function

  recursive subroutine GameKeyCompleteMotionGestureInputEvent_jm_update_0(this)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(MotionGestureInput), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp2 => this%jm_getMotionGestureInput_0()
            call this%jm_setGameKey_1(this%f_inputToGameKeyMapping%jm_getInstance_1(jtemp2%jm_getId_0()))
            call this%jm_setGameKeyEvent_1(this%f_gameKeyEventFactory%jm_getInstanceForInput_2(GameKeyCompleteMotionGestureInputEvent_jas_GameKeyEventSourceInterface_jnew(this), this%jm_getGameKey_0()))
  end subroutine

  recursive subroutine GameKeyCompleteMotionGestureInputEvent_jm_setGameKeyEvent_1(this, j_gameKeyEvent)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
        this%f_gameKeyEvent => j_gameKeyEvent
  end subroutine

  recursive function GameKeyCompleteMotionGestureInputEvent_jm_getGameKeyEvent_0(this) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    class(GameKeyEvent), pointer :: jresult
        jresult => this%f_gameKeyEvent
        return
  end function

  recursive subroutine GameKeyCompleteMotionGestureInputEvent_jm_setGameKey_1(this, j_gameKey)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    class(GameKey), target, optional :: j_gameKey
        this%f_gameKey => j_gameKey
  end subroutine

  recursive function GameKeyCompleteMotionGestureInputEvent_jm_getGameKey_0(this) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    class(GameKey), pointer :: jresult
        jresult => this%f_gameKey
        return
  end function
end module GameKeyCompleteMotionGestureInputEvent_m

