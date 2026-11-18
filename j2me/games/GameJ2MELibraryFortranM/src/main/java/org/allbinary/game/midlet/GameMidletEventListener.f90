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
module GameMidletEventListener_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  implicit none

  type, extends(EventListenerInterface) :: GameMidletEventListener
  contains
    procedure :: jm_onGameEnd_1 => GameMidletEventListener_jm_onGameEnd_1
  end type


contains

  function GameMidletEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameMidletEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameMidletEventListener)
      jresult => object
    end select
  end function

  function GameMidletEventListener_jnew_0() result(this)
    class(GameMidletEventListener), pointer :: this
    allocate(this)
    this%jclass = 'GameMidletEventListener'
  end function

  recursive subroutine GameMidletEventListener_jm_onGameEnd_1(this, j_eventObject)
    class(GameMidletEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    error stop 'AbstractMethodError: GameMidletEventListener.onGameEnd'
  end subroutine
end module GameMidletEventListener_m

