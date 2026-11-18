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
! package org.allbinary.graphics.form
module ItemPaintable_m
  use JR_m
  implicit none

  type, extends(JObject) :: ItemPaintable
  contains
    procedure :: jm_paint_4 => ItemPaintable_jm_paint_4
  end type


contains

  function ItemPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemPaintable)
      jresult => object
    end select
  end function

  function ItemPaintable_jnew_0() result(this)
    class(ItemPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ItemPaintable'
  end function

  recursive subroutine ItemPaintable_jm_paint_4(this, j_graphics, j_currentIndex, j_x, j_y)
    class(ItemPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_currentIndex
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module ItemPaintable_m

