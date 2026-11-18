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
module BasicCompositeEventHandlerInterface_m
  use JR_m
  use BasicEventHandlerInterface_m
  implicit none

  type, extends(JObject) :: BasicCompositeEventHandlerInterface
  contains
    procedure :: jm_getEventHandler_0 => BasicCompositeEventHandlerInterface_jm_getEventHandler_0
    procedure :: jm_setEventHandler_1 => BasicCompositeEventHandlerInterface_jm_setEventHandler_1
  end type


contains

  function BasicCompositeEventHandlerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicCompositeEventHandlerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicCompositeEventHandlerInterface)
      jresult => object
    end select
  end function

  function BasicCompositeEventHandlerInterface_jnew_0() result(this)
    class(BasicCompositeEventHandlerInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicCompositeEventHandlerInterface'
  end function

  recursive function BasicCompositeEventHandlerInterface_jm_getEventHandler_0(this) result(jresult)
    class(BasicCompositeEventHandlerInterface), target :: this
    class(BasicEventHandlerInterface), pointer :: jresult
    error stop 'AbstractMethodError: BasicCompositeEventHandlerInterface.getEventHandler'
  end function

  recursive subroutine BasicCompositeEventHandlerInterface_jm_setEventHandler_1(this, j_basicEventHandlerInterface)
    class(BasicCompositeEventHandlerInterface), target :: this
    class(BasicEventHandlerInterface), target, optional :: j_basicEventHandlerInterface
    error stop 'AbstractMethodError: BasicCompositeEventHandlerInterface.setEventHandler'
  end subroutine
end module BasicCompositeEventHandlerInterface_m

