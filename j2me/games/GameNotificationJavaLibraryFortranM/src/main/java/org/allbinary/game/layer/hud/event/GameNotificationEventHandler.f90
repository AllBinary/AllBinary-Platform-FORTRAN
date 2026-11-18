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
module GameNotificationEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use NullEventListener_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use GameNotificationListenerInterface_m
  use GameNotificationEvent_m
  implicit none

  type, extends(BasicEventHandler) :: GameNotificationEventHandler
    logical :: f_enabled = .false.
  contains
    procedure :: jm_removeAllListeners_0 => GameNotificationEventHandler_jm_removeAllListeners_0
    procedure :: jm_process_2 => GameNotificationEventHandler_jm_process_2
  end type

  class(GameNotificationEventHandler), pointer, save :: GameNotificationEventHandler_jcell_instance => null()
  logical, save :: GameNotificationEventHandler_jset_instance = .false.

contains

  function GameNotificationEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameNotificationEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameNotificationEventHandler)
      jresult => object
    end select
  end function

  function GameNotificationEventHandler_jstatic_instance() result(jresult)
    class(GameNotificationEventHandler), pointer :: jresult
    if (.not. GameNotificationEventHandler_jset_instance) then
      GameNotificationEventHandler_jset_instance = .true.
      GameNotificationEventHandler_jcell_instance => GameNotificationEventHandler_jnew_0()
    end if
    jresult => GameNotificationEventHandler_jcell_instance
  end function

  subroutine GameNotificationEventHandler_jsetstatic_instance(jvalue)
    class(GameNotificationEventHandler), target, optional :: jvalue
    GameNotificationEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      GameNotificationEventHandler_jcell_instance => jvalue
    else
      GameNotificationEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function GameNotificationEventHandler_jnew_0() result(this)
    class(GameNotificationEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'GameNotificationEventHandler'
    this%f_enabled = .true.
        continue
  end function

  recursive subroutine GameNotificationEventHandler_jm_removeAllListeners_0(this)
    class(GameNotificationEventHandler), target :: this
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_eventListenerInterface => NullEventListener_jstatic_NULL_EVENT_LISTENER()
        j_list => this%f_eventListenerInterfaceList
        if ((j_list%jm_size_0() > 0)) then
            j_eventListenerInterface => EventListenerInterface_jcast(j_list%f_objectArray((0) + 1)%v)
        end if
        call this%BasicEventHandler%jm_removeAllListeners_0()
        if ((.not. JR_same(j_eventListenerInterface, NullEventListener_jstatic_NULL_EVENT_LISTENER()))) then
            call this%jm_addListenerInterface_1(j_eventListenerInterface)
        end if
  end subroutine

  recursive function GameNotificationEventHandler_jm_getInstance_0() result(jresult)
    class(GameNotificationEventHandler), pointer :: jresult
        jresult => GameNotificationEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine GameNotificationEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(GameNotificationEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(GameNotificationListenerInterface), pointer :: j_gameNotificationListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_enabled)) then
            return
        end if
        j_gameNotificationListenerInterface => GameNotificationListenerInterface_jcast(j_eventListenerInterface)
        call j_gameNotificationListenerInterface%jm_onGameNotificationEvent_1(GameNotificationEvent_jcast(j_eventObject))
  end subroutine
end module GameNotificationEventHandler_m

function GameNotificationEventHandler_jnew_0_jext() result(this)
  use GameNotificationEventHandler_m, only: JObject, GameNotificationEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameNotificationEventHandler_jnew_0()
end function

