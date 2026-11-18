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
! package org.allbinary.game.input.event
module DownGameKeyEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameKeyEvent_m
  implicit none

  type, extends(EventListenerInterface) :: DownGameKeyEventListenerInterface
  contains
    procedure :: jm_onDownGameKeyEvent_1 => DownGameKeyEventListenerInterface_jm_onDownGameKeyEvent_1
  end type


contains

  function DownGameKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownGameKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownGameKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function DownGameKeyEventListenerInterface_jnew_0() result(this)
    class(DownGameKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'DownGameKeyEventListenerInterface'
  end function

  recursive subroutine DownGameKeyEventListenerInterface_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(DownGameKeyEventListenerInterface), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: DownGameKeyEventListenerInterface.onDownGameKeyEvent'
  end subroutine
end module DownGameKeyEventListenerInterface_m

