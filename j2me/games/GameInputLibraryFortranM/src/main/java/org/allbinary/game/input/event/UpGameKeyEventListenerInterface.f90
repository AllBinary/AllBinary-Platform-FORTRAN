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
module UpGameKeyEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameKeyEvent_m
  implicit none

  type, extends(EventListenerInterface) :: UpGameKeyEventListenerInterface
  contains
    procedure :: jm_onUpGameKeyEvent_1 => UpGameKeyEventListenerInterface_jm_onUpGameKeyEvent_1
  end type


contains

  function UpGameKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpGameKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpGameKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function UpGameKeyEventListenerInterface_jnew_0() result(this)
    class(UpGameKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'UpGameKeyEventListenerInterface'
  end function

  recursive subroutine UpGameKeyEventListenerInterface_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(UpGameKeyEventListenerInterface), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: UpGameKeyEventListenerInterface.onUpGameKeyEvent'
  end subroutine
end module UpGameKeyEventListenerInterface_m

