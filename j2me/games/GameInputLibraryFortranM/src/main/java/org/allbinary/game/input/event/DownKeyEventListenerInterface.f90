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
module DownKeyEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use Integer_m
  use GameKeyEvent_m
  implicit none

  type, extends(EventListenerInterface) :: DownKeyEventListenerInterface
  contains
    procedure :: jm_onDownKeyEvent_1 => DownKeyEventListenerInterface_jm_onDownKeyEvent_1
    procedure :: jm_onDownKey_1 => DownKeyEventListenerInterface_jm_onDownKey_1
  end type


contains

  function DownKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function DownKeyEventListenerInterface_jnew_0() result(this)
    class(DownKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'DownKeyEventListenerInterface'
  end function

  recursive subroutine DownKeyEventListenerInterface_jm_onDownKeyEvent_1(this, j_keyInteger)
    class(DownKeyEventListenerInterface), target :: this
    class(GameKeyEvent), target, optional :: j_keyInteger
    error stop 'AbstractMethodError: DownKeyEventListenerInterface.onDownKeyEvent'
  end subroutine

  recursive subroutine DownKeyEventListenerInterface_jm_onDownKey_1(this, j_keyInteger)
    class(DownKeyEventListenerInterface), target :: this
    integer(4), value :: j_keyInteger
    error stop 'AbstractMethodError: DownKeyEventListenerInterface.onDownKey'
  end subroutine
end module DownKeyEventListenerInterface_m

