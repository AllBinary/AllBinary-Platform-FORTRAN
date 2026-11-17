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
module ResizableListenerHandler_m
  use JR_m
  use ResizableListenerInterface_m
  implicit none

  type, extends(JObject) :: ResizableListenerHandler
  contains
    procedure :: jm_setListener_1 => ResizableListenerHandler_jm_setListener_1
    procedure :: jm_fire_1 => ResizableListenerHandler_jm_fire_1
    procedure :: jm_fireEvent_1 => ResizableListenerHandler_jm_fireEvent_1
  end type

  class(ResizableListenerHandler), pointer, save :: ResizableListenerHandler_jcell_instance => null()
  logical, save :: ResizableListenerHandler_jset_instance = .false.

contains

  function ResizableListenerHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResizableListenerHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResizableListenerHandler)
      jresult => object
    end select
  end function

  function ResizableListenerHandler_jstatic_instance() result(jresult)
    class(ResizableListenerHandler), pointer :: jresult
    if (.not. ResizableListenerHandler_jset_instance) then
      ResizableListenerHandler_jset_instance = .true.
      ResizableListenerHandler_jcell_instance => ResizableListenerHandler_jnew_0()
    end if
    jresult => ResizableListenerHandler_jcell_instance
  end function

  function ResizableListenerHandler_jnew_0() result(this)
    class(ResizableListenerHandler), pointer :: this
    allocate(this)
    this%jclass = 'ResizableListenerHandler'
  end function

  recursive function ResizableListenerHandler_jm_getInstance_0() result(jresult)
    class(ResizableListenerHandler), pointer :: jresult
        jresult => ResizableListenerHandler_jstatic_instance()
        return
  end function

  recursive subroutine ResizableListenerHandler_jm_setListener_1(this, j_resizableListenerInterface)
    class(ResizableListenerHandler), target :: this
    class(ResizableListenerInterface), target, optional :: j_resizableListenerInterface
    continue
  end subroutine

  recursive subroutine ResizableListenerHandler_jm_fire_1(this, j_isFullScreen)
    class(ResizableListenerHandler), target :: this
    logical, value :: j_isFullScreen
    continue
  end subroutine

  recursive subroutine ResizableListenerHandler_jm_fireEvent_1(this, j_value)
    class(ResizableListenerHandler), target :: this
    logical, value :: j_value
    continue
  end subroutine
end module ResizableListenerHandler_m

