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
! package org.allbinary.game.combat.destroy.event
module DestroyedEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use DestroyedEvent_m
  implicit none

  type, extends(EventListenerInterface) :: DestroyedEventListenerInterface
  contains
    procedure :: jm_onDestroyed_1 => DestroyedEventListenerInterface_jm_onDestroyed_1
  end type


contains

  function DestroyedEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyedEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyedEventListenerInterface)
      jresult => object
    end select
  end function

  function DestroyedEventListenerInterface_jnew_0() result(this)
    class(DestroyedEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'DestroyedEventListenerInterface'
  end function

  recursive subroutine DestroyedEventListenerInterface_jm_onDestroyed_1(this, j_destroyedEvent)
    class(DestroyedEventListenerInterface), target :: this
    class(DestroyedEvent), target, optional :: j_destroyedEvent
    error stop 'AbstractMethodError: DestroyedEventListenerInterface.onDestroyed'
  end subroutine
end module DestroyedEventListenerInterface_m

