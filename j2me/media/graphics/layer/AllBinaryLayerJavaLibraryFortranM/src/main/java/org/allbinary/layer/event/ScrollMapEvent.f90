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
module ScrollMapEvent_m
  use JR_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: ScrollMapEvent
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_setDx_1 => ScrollMapEvent_jm_setDx_1
    procedure :: jm_getDx_0 => ScrollMapEvent_jm_getDx_0
    procedure :: jm_setDy_1 => ScrollMapEvent_jm_setDy_1
    procedure :: jm_getDy_0 => ScrollMapEvent_jm_getDy_0
    procedure :: jm_setDxDy_2 => ScrollMapEvent_jm_setDxDy_2
  end type


contains

  function ScrollMapEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollMapEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollMapEvent)
      jresult => object
    end select
  end function

  recursive function ScrollMapEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(ScrollMapEvent), pointer :: this
    allocate(this)
    this%jclass = 'ScrollMapEvent'
    
    
        continue ! super()
  end function

  recursive subroutine ScrollMapEvent_jm_setDx_1(this, j_dx)
    class(ScrollMapEvent), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function ScrollMapEvent_jm_getDx_0(this) result(jresult)
    class(ScrollMapEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine ScrollMapEvent_jm_setDy_1(this, j_dy)
    class(ScrollMapEvent), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive function ScrollMapEvent_jm_getDy_0(this) result(jresult)
    class(ScrollMapEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function

  recursive subroutine ScrollMapEvent_jm_setDxDy_2(this, j_dx, j_dy)
    class(ScrollMapEvent), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_dx = j_dx
        this%f_dy = j_dy
  end subroutine
end module ScrollMapEvent_m

