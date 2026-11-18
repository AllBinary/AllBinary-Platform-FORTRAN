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
module PressGameKeyEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use GameKeyEvent_m
  implicit none

  type, extends(EventListenerInterface) :: PressGameKeyEventListenerInterface
  contains
    procedure :: jm_onPressGameKeyEvent_1 => PressGameKeyEventListenerInterface_jm_onPressGameKeyEvent_1
  end type


contains

  function PressGameKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PressGameKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PressGameKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function PressGameKeyEventListenerInterface_jnew_0() result(this)
    class(PressGameKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'PressGameKeyEventListenerInterface'
  end function

  recursive subroutine PressGameKeyEventListenerInterface_jm_onPressGameKeyEvent_1(this, j_gameKeyEvent)
    class(PressGameKeyEventListenerInterface), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: PressGameKeyEventListenerInterface.onPressGameKeyEvent'
  end subroutine
end module PressGameKeyEventListenerInterface_m

