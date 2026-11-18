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
! package org.allbinary.logic.util.event.handler
module BasicEventHandlerInterface_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  implicit none

  type, extends(JObject) :: BasicEventHandlerInterface
  contains
    procedure :: jm_addListenerInterface_1 => BasicEventHandlerInterface_jm_addListenerInterface_1
    procedure :: jm_fireEvent_1 => BasicEventHandlerInterface_jm_fireEvent_1
    procedure :: jm_removeAllListeners_0 => BasicEventHandlerInterface_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => BasicEventHandlerInterface_jm_removeListener_1
  end type


contains

  function BasicEventHandlerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicEventHandlerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicEventHandlerInterface)
      jresult => object
    end select
  end function

  function BasicEventHandlerInterface_jnew_0() result(this)
    class(BasicEventHandlerInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicEventHandlerInterface'
  end function

  recursive subroutine BasicEventHandlerInterface_jm_addListenerInterface_1(this, j_eventListenerInterface)
    class(BasicEventHandlerInterface), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    error stop 'AbstractMethodError: BasicEventHandlerInterface.addListenerInterface'
  end subroutine

  recursive subroutine BasicEventHandlerInterface_jm_fireEvent_1(this, j_eventObject)
    class(BasicEventHandlerInterface), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    error stop 'AbstractMethodError: BasicEventHandlerInterface.fireEvent'
  end subroutine

  recursive subroutine BasicEventHandlerInterface_jm_removeAllListeners_0(this)
    class(BasicEventHandlerInterface), target :: this
    error stop 'AbstractMethodError: BasicEventHandlerInterface.removeAllListeners'
  end subroutine

  recursive subroutine BasicEventHandlerInterface_jm_removeListener_1(this, j_eventListenerInterface)
    class(BasicEventHandlerInterface), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    error stop 'AbstractMethodError: BasicEventHandlerInterface.removeListener'
  end subroutine
end module BasicEventHandlerInterface_m

