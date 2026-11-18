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
module GameFeatureEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use BasicEventHandler_m
  use GameFeatureListenerInterface_m
  use GameFeatureEvent_m
  implicit none

  type, extends(BasicEventHandler) :: GameFeatureEventHandler
  contains
    procedure :: jm_process_2 => GameFeatureEventHandler_jm_process_2
  end type

  class(GameFeatureEventHandler), pointer, save :: GameFeatureEventHandler_jcell_gameKeyEventHandler => null()
  logical, save :: GameFeatureEventHandler_jset_gameKeyEventHandler = .false.

contains

  function GameFeatureEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureEventHandler)
      jresult => object
    end select
  end function

  function GameFeatureEventHandler_jstatic_gameKeyEventHandler() result(jresult)
    class(GameFeatureEventHandler), pointer :: jresult
    if (.not. GameFeatureEventHandler_jset_gameKeyEventHandler) then
      GameFeatureEventHandler_jset_gameKeyEventHandler = .true.
      GameFeatureEventHandler_jcell_gameKeyEventHandler => GameFeatureEventHandler_jnew_0()
    end if
    jresult => GameFeatureEventHandler_jcell_gameKeyEventHandler
  end function

  subroutine GameFeatureEventHandler_jsetstatic_gameKeyEventHandler(jvalue)
    class(GameFeatureEventHandler), target, optional :: jvalue
    GameFeatureEventHandler_jset_gameKeyEventHandler = .true.
    if (present(jvalue)) then
      GameFeatureEventHandler_jcell_gameKeyEventHandler => jvalue
    else
      GameFeatureEventHandler_jcell_gameKeyEventHandler => null()
    end if
  end subroutine

  recursive function GameFeatureEventHandler_jnew_0() result(this)
    class(GameFeatureEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureEventHandler'
        continue
  end function

  recursive function GameFeatureEventHandler_jm_getInstance_0() result(jresult)
    class(GameFeatureEventHandler), pointer :: jresult
        jresult => GameFeatureEventHandler_jstatic_gameKeyEventHandler()
        return
  end function

  recursive subroutine GameFeatureEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(GameFeatureEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(GameFeatureListenerInterface), pointer :: j_gameFeatureListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameFeatureListenerInterface => GameFeatureListenerInterface_jcast(j_eventListenerInterface)
        call j_gameFeatureListenerInterface%jm_onGameFeatureChange_1(GameFeatureEvent_jcast(j_eventObject))
  end subroutine
end module GameFeatureEventHandler_m

function GameFeatureEventHandler_jnew_0_jext() result(this)
  use GameFeatureEventHandler_m, only: JObject, GameFeatureEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameFeatureEventHandler_jnew_0()
end function

