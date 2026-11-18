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
! package org.allbinary.game.ag.layer.hud.basic.notification
module GameNotificationHud_m
  use JR_m
  use BasicHud_m
  use BasicHudFactory_m
  use GameNotificationEvent_m
  use GameNotificationListenerInterface_m
  use BasicColor_m
  use BasicColorFactory_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use Integer_m
  use Boolean_m
  use GameNotification_m
  implicit none

  type, extends(BasicHud) :: GameNotificationHud
    character(len=:), allocatable :: f_METHOD_NAME
    class(GameNotificationEvent), pointer :: f_lastGameNotificationEvent => null()
  contains
    procedure :: jm_onEvent_1 => GameNotificationHud_jm_onEvent_1
    procedure :: jm_onGameNotificationEvent_1 => GameNotificationHud_jm_onGameNotificationEvent_1
    procedure :: jm_add_4 => GameNotificationHud_jm_add_4
    procedure :: jm_processTick_0 => GameNotificationHud_jm_processTick_0
    procedure :: jm_paint_1 => GameNotificationHud_jm_paint_1
    procedure :: jm_clear_0 => GameNotificationHud_jm_clear_0
  end type

  ! GameNotificationHud used as a GameNotificationListenerInterface
  type, extends(GameNotificationListenerInterface) :: GameNotificationHud_jas_GameNotificationListenerInterface
    class(GameNotificationHud), pointer :: jtarget => null()
  contains
    procedure :: jm_onGameNotificationEvent_1 => GameNotificationHud_jas_GameNotificationListenerInterface_jm_onGameNotificationEvent_1
  end type

  class(GameNotificationHud), pointer, save :: GameNotificationHud_jcell_NULL_GAME_NOTIFICATION => null()
  logical, save :: GameNotificationHud_jset_NULL_GAME_NOTIFICATION = .false.

contains

  function GameNotificationHud_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameNotificationHud), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameNotificationHud)
      jresult => object
    end select
  end function

  function GameNotificationHud_jas_GameNotificationListenerInterface_jnew(object) result(jresult)
    class(GameNotificationHud), target :: object
    class(GameNotificationHud_jas_GameNotificationListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameNotificationHud'
    jresult%jtarget => object
  end function

  recursive subroutine GameNotificationHud_jas_GameNotificationListenerInterface_jm_onGameNotificationEvent_1(this, j_gameNotificationEvent)
    class(GameNotificationHud_jas_GameNotificationListenerInterface), target :: this
    class(GameNotificationEvent), target, optional :: j_gameNotificationEvent
    call this%jtarget%jm_onGameNotificationEvent_1(j_gameNotificationEvent)
  end subroutine

  function GameNotificationHud_jstatic_NULL_GAME_NOTIFICATION() result(jresult)
    class(GameNotificationHud), pointer :: jresult
    class(BasicHudFactory), pointer :: jtemp1
    class(BasicHudFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    if (.not. GameNotificationHud_jset_NULL_GAME_NOTIFICATION) then
      GameNotificationHud_jset_NULL_GAME_NOTIFICATION = .true.
      jtemp1 => BasicHudFactory_jm_getInstance_0()
    jtemp2 => BasicHudFactory_jm_getInstance_0()
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    GameNotificationHud_jcell_NULL_GAME_NOTIFICATION => GameNotificationHud_jnew_4(jtemp1%f_TOPCENTER, jtemp2%f_HORIZONTAL, 0, jtemp3%f_RED)
    end if
    jresult => GameNotificationHud_jcell_NULL_GAME_NOTIFICATION
  end function

  subroutine GameNotificationHud_jsetstatic_NULL_GAME_NOTIFICATION(jvalue)
    class(GameNotificationHud), target, optional :: jvalue
    GameNotificationHud_jset_NULL_GAME_NOTIFICATION = .true.
    if (present(jvalue)) then
      GameNotificationHud_jcell_NULL_GAME_NOTIFICATION => jvalue
    else
      GameNotificationHud_jcell_NULL_GAME_NOTIFICATION => null()
    end if
  end subroutine

  recursive function GameNotificationHud_jnew_4(j_location, j_direction, j_bufferZone, j_basicColor) result(this)
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(GameNotificationHud), pointer :: this
    allocate(this)
    this%jclass = 'GameNotificationHud'
    this%f_METHOD_NAME = ''
    this%f_METHOD_NAME = 'onGameNotificationEvent'
    this%f_lastGameNotificationEvent => GameNotification_jstatic_NULL_GAME_NOTIFICATION_EVENT()
        continue ! super()
  end function

  recursive subroutine GameNotificationHud_jm_onEvent_1(this, j_eventObject)
    class(GameNotificationHud), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp4%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine GameNotificationHud_jm_onGameNotificationEvent_1(this, j_gameNotificationEvent)
    class(GameNotificationHud), target :: this
    class(GameNotificationEvent), target, optional :: j_gameNotificationEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_same(this%f_lastGameNotificationEvent, j_gameNotificationEvent))) then
            this%f_lastGameNotificationEvent => j_gameNotificationEvent
            call this%f_logUtil%jm_putF_3(j_gameNotificationEvent%jm_getString_0(), this, this%f_METHOD_NAME)
        end if
        call this%jm_add_4(j_gameNotificationEvent%jm_getString_0(), j_gameNotificationEvent%jm_getSeconds_0(), j_gameNotificationEvent%jm_getBasicColorP_0(), j_gameNotificationEvent%jm_getPermanent_0())
  end subroutine

  recursive subroutine GameNotificationHud_jm_add_4(this, j_string, j_seconds, j_basicColor, j_permanent)
    class(GameNotificationHud), target :: this
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_seconds
    class(BasicColor), target, optional :: j_basicColor
    logical, value :: j_permanent
    continue
  end subroutine

  recursive subroutine GameNotificationHud_jm_processTick_0(this)
    class(GameNotificationHud), target :: this
    continue
  end subroutine

  recursive subroutine GameNotificationHud_jm_paint_1(this, j_graphics)
    class(GameNotificationHud), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine GameNotificationHud_jm_clear_0(this)
    class(GameNotificationHud), target :: this
    continue
  end subroutine
end module GameNotificationHud_m

