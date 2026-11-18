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
! package org.allbinary.input
module TouchJ2ME_m
  use JR_m
  implicit none

  type, extends(JObject) :: TouchJ2ME
  contains
    procedure :: jm_pointerDragged_2 => TouchJ2ME_jm_pointerDragged_2
    procedure :: jm_pointerPressed_2 => TouchJ2ME_jm_pointerPressed_2
    procedure :: jm_pointerReleased_2 => TouchJ2ME_jm_pointerReleased_2
  end type


contains

  function TouchJ2ME_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchJ2ME), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchJ2ME)
      jresult => object
    end select
  end function

  recursive function TouchJ2ME_jnew_0() result(this)
    class(TouchJ2ME), pointer :: this
    allocate(this)
    this%jclass = 'TouchJ2ME'
        continue
  end function

  recursive subroutine TouchJ2ME_jm_pointerDragged_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive subroutine TouchJ2ME_jm_pointerPressed_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive subroutine TouchJ2ME_jm_pointerReleased_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module TouchJ2ME_m

