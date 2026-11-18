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
module UpKeyEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use Integer_m
  implicit none

  type, extends(EventListenerInterface) :: UpKeyEventListenerInterface
  contains
    procedure :: jm_onUpKeyEvent_1 => UpKeyEventListenerInterface_jm_onUpKeyEvent_1
  end type


contains

  function UpKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function UpKeyEventListenerInterface_jnew_0() result(this)
    class(UpKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'UpKeyEventListenerInterface'
  end function

  recursive subroutine UpKeyEventListenerInterface_jm_onUpKeyEvent_1(this, j_keyAsInteger)
    class(UpKeyEventListenerInterface), target :: this
    integer(4), value :: j_keyAsInteger
    error stop 'AbstractMethodError: UpKeyEventListenerInterface.onUpKeyEvent'
  end subroutine
end module UpKeyEventListenerInterface_m

