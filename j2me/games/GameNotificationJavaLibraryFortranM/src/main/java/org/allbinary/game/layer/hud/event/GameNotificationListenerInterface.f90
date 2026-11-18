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
! package org.allbinary.game.layer.hud.event
module GameNotificationListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameNotificationEvent_m
  implicit none

  type, extends(EventListenerInterface) :: GameNotificationListenerInterface
  contains
    procedure :: jm_onGameNotificationEvent_1 => GameNotificationListenerInterface_jm_onGameNotificationEvent_1
  end type


contains

  function GameNotificationListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameNotificationListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameNotificationListenerInterface)
      jresult => object
    end select
  end function

  function GameNotificationListenerInterface_jnew_0() result(this)
    class(GameNotificationListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameNotificationListenerInterface'
  end function

  recursive subroutine GameNotificationListenerInterface_jm_onGameNotificationEvent_1(this, j_gameNotificationEvent)
    class(GameNotificationListenerInterface), target :: this
    class(GameNotificationEvent), target, optional :: j_gameNotificationEvent
    error stop 'AbstractMethodError: GameNotificationListenerInterface.onGameNotificationEvent'
  end subroutine
end module GameNotificationListenerInterface_m

