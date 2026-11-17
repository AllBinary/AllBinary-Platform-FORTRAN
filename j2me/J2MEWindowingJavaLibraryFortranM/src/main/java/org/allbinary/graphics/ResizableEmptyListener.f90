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
module ResizableEmptyListener_m
  use JR_m
  use ResizableListenerInterface_m
  implicit none

  type, extends(ResizableListenerInterface) :: ResizableEmptyListener
  contains
    procedure :: jm_onResizable_1 => ResizableEmptyListener_jm_onResizable_1
  end type


contains

  function ResizableEmptyListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResizableEmptyListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResizableEmptyListener)
      jresult => object
    end select
  end function

  function ResizableEmptyListener_jnew_0() result(this)
    class(ResizableEmptyListener), pointer :: this
    allocate(this)
    this%jclass = 'ResizableEmptyListener'
  end function

  recursive subroutine ResizableEmptyListener_jm_onResizable_1(this, j_isResizable)
    class(ResizableEmptyListener), target :: this
    logical, value :: j_isResizable
    continue
  end subroutine
end module ResizableEmptyListener_m

