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
! package org.allbinary.game.configuration.event
module GameInitializedEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use GameInitializedListenerInterface_m
  use GameInitializedEvent_m
  implicit none

  type, extends(BasicEventHandler) :: GameInitializedEventHandler
  contains
    procedure :: jm_process_2 => GameInitializedEventHandler_jm_process_2
  end type

  class(GameInitializedEventHandler), pointer, save :: GameInitializedEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: GameInitializedEventHandler_jset_gameKeyEventHandler = .false.

contains

  function GameInitializedEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializedEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializedEventHandler)
      jresult => object
    end select
  end function

  function GameInitializedEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(GameInitializedEventHandler), pointer :: jresult
    if (.not. GameInitializedEventHandler_jset_gameKeyEventHandler) then
      GameInitializedEventHandler_jset_gameKeyEventHandler = .true.
      GameInitializedEventHandler_jcell_gameKeyEventHandler => GameInitializedEventHandler_jnew_0()
    end if
    jresult => GameInitializedEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine GameInitializedEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(GameInitializedEventHandler), target, optional :: jvalue
    GameInitializedEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      GameInitializedEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      GameInitializedEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function GameInitializedEventHandler_jnew_0() result(this)
    class(GameInitializedEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'GameInitializedEventHandler'
        continue
  end function

  recursive function GameInitializedEventHandler_jm_getInstance_0() result(jresult)
    class(GameInitializedEventHandler), pointer :: jresult
        jresult => GameInitializedEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine GameInitializedEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(GameInitializedEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(GameInitializedListenerInterface), pointer :: j_gameInitializedListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameInitializedListenerInterface => GameInitializedListenerInterface_jcast(j_eventListenerInterface)
        call j_gameInitializedListenerInterface%jm_onGameInitialized_1(GameInitializedEvent_jcast(j_eventObject))
  end subroutine
end module GameInitializedEventHandler_m

function GameInitializedEventHandler_jnew_0_jext() result(this)
  use GameInitializedEventHandler_m, only: JObject, GameInitializedEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameInitializedEventHandler_jnew_0()
end function

