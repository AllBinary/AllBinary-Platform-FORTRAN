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
module GameFeatureListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameFeatureEvent_m
  implicit none

  type, extends(EventListenerInterface) :: GameFeatureListenerInterface
  contains
    procedure :: jm_onGameFeatureChange_1 => GameFeatureListenerInterface_jm_onGameFeatureChange_1
  end type


contains

  function GameFeatureListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureListenerInterface)
      jresult => object
    end select
  end function

  function GameFeatureListenerInterface_jnew_0() result(this)
    class(GameFeatureListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureListenerInterface'
  end function

  recursive subroutine GameFeatureListenerInterface_jm_onGameFeatureChange_1(this, j_gameFeatureEvent)
    class(GameFeatureListenerInterface), target :: this
    class(GameFeatureEvent), target, optional :: j_gameFeatureEvent
    error stop 'AbstractMethodError: GameFeatureListenerInterface.onGameFeatureChange'
  end subroutine
end module GameFeatureListenerInterface_m

