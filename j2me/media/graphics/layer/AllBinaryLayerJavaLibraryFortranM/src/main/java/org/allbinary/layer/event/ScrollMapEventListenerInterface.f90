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
! package org.allbinary.layer.event
module ScrollMapEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use ScrollMapEvent_m
  implicit none

  type, extends(EventListenerInterface) :: ScrollMapEventListenerInterface
  contains
    procedure :: jm_onMoveEvent_1 => ScrollMapEventListenerInterface_jm_onMoveEvent_1
  end type


contains

  function ScrollMapEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollMapEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollMapEventListenerInterface)
      jresult => object
    end select
  end function

  function ScrollMapEventListenerInterface_jnew_0() result(this)
    class(ScrollMapEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'ScrollMapEventListenerInterface'
  end function

  recursive subroutine ScrollMapEventListenerInterface_jm_onMoveEvent_1(this, j_layerManagerEvent)
    class(ScrollMapEventListenerInterface), target :: this
    class(ScrollMapEvent), target, optional :: j_layerManagerEvent
    error stop 'AbstractMethodError: ScrollMapEventListenerInterface.onMoveEvent'
  end subroutine
end module ScrollMapEventListenerInterface_m

