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
module GameInitializedListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameInitializedEvent_m
  implicit none

  type, extends(EventListenerInterface) :: GameInitializedListenerInterface
  contains
    procedure :: jm_onGameInitialized_1 => GameInitializedListenerInterface_jm_onGameInitialized_1
  end type


contains

  function GameInitializedListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializedListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializedListenerInterface)
      jresult => object
    end select
  end function

  function GameInitializedListenerInterface_jnew_0() result(this)
    class(GameInitializedListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameInitializedListenerInterface'
  end function

  recursive subroutine GameInitializedListenerInterface_jm_onGameInitialized_1(this, j_gameInitializedEvent)
    class(GameInitializedListenerInterface), target :: this
    class(GameInitializedEvent), target, optional :: j_gameInitializedEvent
    error stop 'AbstractMethodError: GameInitializedListenerInterface.onGameInitialized'
  end subroutine
end module GameInitializedListenerInterface_m

