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
! package org.allbinary.graphics.displayable.event
module DisplayChangeEventListener_m
  use JR_m
  use EventListenerInterface_m
  use DisplayChangeEvent_m
  implicit none

  type, extends(EventListenerInterface) :: DisplayChangeEventListener
  contains
    procedure :: jm_onDisplayChangeEvent_1 => DisplayChangeEventListener_jm_onDisplayChangeEvent_1
  end type


contains

  function DisplayChangeEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayChangeEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayChangeEventListener)
      jresult => object
    end select
  end function

  function DisplayChangeEventListener_jnew_0() result(this)
    class(DisplayChangeEventListener), pointer :: this
    allocate(this)
    this%jclass = 'DisplayChangeEventListener'
  end function

  recursive subroutine DisplayChangeEventListener_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(DisplayChangeEventListener), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
    error stop 'AbstractMethodError: DisplayChangeEventListener.onDisplayChangeEvent'
  end subroutine
end module DisplayChangeEventListener_m

