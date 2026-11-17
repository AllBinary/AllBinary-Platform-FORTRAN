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
! package org.allbinary.graphics
module ResizableListenerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ResizableListenerInterface
  contains
    procedure :: jm_onResizable_1 => ResizableListenerInterface_jm_onResizable_1
  end type


contains

  function ResizableListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResizableListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResizableListenerInterface)
      jresult => object
    end select
  end function

  function ResizableListenerInterface_jnew_0() result(this)
    class(ResizableListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'ResizableListenerInterface'
  end function

  recursive subroutine ResizableListenerInterface_jm_onResizable_1(this, j_isResizable)
    class(ResizableListenerInterface), target :: this
    logical, value :: j_isResizable
    error stop 'AbstractMethodError: ResizableListenerInterface.onResizable'
  end subroutine
end module ResizableListenerInterface_m

