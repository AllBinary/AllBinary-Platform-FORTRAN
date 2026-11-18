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
! package org.allbinary.view.event
module ViewPositionEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use ViewPositionEvent_m
  implicit none

  type, extends(EventListenerInterface) :: ViewPositionEventListenerInterface
  contains
    procedure :: jm_onChangeEvent_1 => ViewPositionEventListenerInterface_jm_onChangeEvent_1
  end type


contains

  function ViewPositionEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionEventListenerInterface)
      jresult => object
    end select
  end function

  function ViewPositionEventListenerInterface_jnew_0() result(this)
    class(ViewPositionEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionEventListenerInterface'
  end function

  recursive subroutine ViewPositionEventListenerInterface_jm_onChangeEvent_1(this, j_layerManagerEvent)
    class(ViewPositionEventListenerInterface), target :: this
    class(ViewPositionEvent), target, optional :: j_layerManagerEvent
    error stop 'AbstractMethodError: ViewPositionEventListenerInterface.onChangeEvent'
  end subroutine
end module ViewPositionEventListenerInterface_m

