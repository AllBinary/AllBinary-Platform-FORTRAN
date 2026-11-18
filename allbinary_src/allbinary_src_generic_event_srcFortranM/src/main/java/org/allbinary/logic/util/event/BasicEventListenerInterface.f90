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
! package org.allbinary.logic.util.event
module BasicEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  implicit none

  type, extends(EventListenerInterface) :: BasicEventListenerInterface
  end type


contains

  function BasicEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicEventListenerInterface)
      jresult => object
    end select
  end function

  function BasicEventListenerInterface_jnew_0() result(this)
    class(BasicEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicEventListenerInterface'
  end function
end module BasicEventListenerInterface_m

