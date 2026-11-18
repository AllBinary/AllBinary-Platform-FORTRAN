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
! package org.allbinary.game.midlet
module GameMidletEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use GameMidletEventListener_m
  implicit none

  type, extends(BasicEventHandler) :: GameMidletEventHandler
  contains
    procedure :: jm_process_2 => GameMidletEventHandler_jm_process_2
  end type

  class(GameMidletEventHandler), pointer, save :: GameMidletEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: GameMidletEventHandler_jset_gameKeyEventHandler = .false.

contains

  function GameMidletEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMidletEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMidletEventHandler)
      jresult => object
    end select
  end function

  function GameMidletEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(GameMidletEventHandler), pointer :: jresult
    if (.not. GameMidletEventHandler_jset_gameKeyEventHandler) then
      GameMidletEventHandler_jset_gameKeyEventHandler = .true.
      GameMidletEventHandler_jcell_gameKeyEventHandler => GameMidletEventHandler_jnew_0()
    end if
    jresult => GameMidletEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine GameMidletEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(GameMidletEventHandler), target, optional :: jvalue
    GameMidletEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      GameMidletEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      GameMidletEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function GameMidletEventHandler_jnew_0() result(this)
    class(GameMidletEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'GameMidletEventHandler'
        continue
  end function

  recursive function GameMidletEventHandler_jm_getInstance_0() result(jresult)
    class(GameMidletEventHandler), pointer :: jresult
        jresult => GameMidletEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine GameMidletEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(GameMidletEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(GameMidletEventListener), pointer :: j_gameMidletEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameMidletEventListener => GameMidletEventListener_jcast(j_eventListenerInterface)
        call j_gameMidletEventListener%jm_onGameEnd_1(j_eventObject)
  end subroutine
end module GameMidletEventHandler_m

function GameMidletEventHandler_jnew_0_jext() result(this)
  use GameMidletEventHandler_m, only: JObject, GameMidletEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameMidletEventHandler_jnew_0()
end function

