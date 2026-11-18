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
! package org.allbinary.graphics.paint
module LocationPaintableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: LocationPaintableInterface
  contains
    procedure :: jm_paintXY_3 => LocationPaintableInterface_jm_paintXY_3
  end type


contains

  function LocationPaintableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LocationPaintableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LocationPaintableInterface)
      jresult => object
    end select
  end function

  function LocationPaintableInterface_jnew_0() result(this)
    class(LocationPaintableInterface), pointer :: this
    allocate(this)
    this%jclass = 'LocationPaintableInterface'
  end function

  recursive subroutine LocationPaintableInterface_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(LocationPaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    error stop 'AbstractMethodError: LocationPaintableInterface.paintXY'
  end subroutine
end module LocationPaintableInterface_m

