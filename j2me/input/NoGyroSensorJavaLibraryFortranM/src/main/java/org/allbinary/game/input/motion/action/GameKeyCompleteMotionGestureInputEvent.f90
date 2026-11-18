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
  use InputToGameKeyMapping_m
  use MotionGestureInput_m
  implicit none

  type, extends(CompleteMotionGestureInputEvent) :: GameKeyCompleteMotionGestureInputEvent
    class(GameKey), pointer :: f_gameKey => null()
    class(GameKeyEvent), pointer :: f_gameKeyEvent => null()
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
    allocate(this)
    this%jclass = 'GameKeyCompleteMotionGestureInputEvent'
    this%f_gameKey => GameKey_jstatic_NULL_GAME_KEY()
    this%f_gameKeyEvent => GameKeyEvent_jstatic_NONE()
        continue ! super()
  end function

  recursive function GameKeyCompleteMotionGestureInputEvent_jm_getSourceId_0(this) result(jresult)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine GameKeyCompleteMotionGestureInputEvent_jm_update_0(this)
    class(GameKeyCompleteMotionGestureInputEvent), target :: this
    continue
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

