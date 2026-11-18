! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module ItemIndexPaintable_m
  use JR_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: ItemIndexPaintable
  contains
    procedure :: jm_paint_5 => ItemIndexPaintable_jm_paint_5
  end type

  class(ItemIndexPaintable), pointer, save :: ItemIndexPaintable_jcell_instance => null()
  logical, save :: ItemIndexPaintable_jset_instance = .false.

contains

  function ItemIndexPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemIndexPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemIndexPaintable)
      jresult => object
    end select
  end function

  function ItemIndexPaintable_jstatic_instance() result(jresult)
    class(ItemIndexPaintable), pointer :: jresult
    if (.not. ItemIndexPaintable_jset_instance) then
      ItemIndexPaintable_jset_instance = .true.
      ItemIndexPaintable_jcell_instance => ItemIndexPaintable_jnew_0()
    end if
    jresult => ItemIndexPaintable_jcell_instance
  end function

  subroutine ItemIndexPaintable_jsetstatic_instance(jvalue)
    class(ItemIndexPaintable), target, optional :: jvalue
    ItemIndexPaintable_jset_instance = .true.
    if (present(jvalue)) then
      ItemIndexPaintable_jcell_instance => jvalue
    else
      ItemIndexPaintable_jcell_instance => null()
    end if
  end subroutine

  function ItemIndexPaintable_jnew_0() result(this)
    class(ItemIndexPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ItemIndexPaintable'
  end function

  recursive function ItemIndexPaintable_jm_getInstance_0() result(jresult)
    class(ItemIndexPaintable), pointer :: jresult
        jresult => ItemIndexPaintable_jstatic_instance()
        return
  end function

  recursive function ItemIndexPaintable_jm_paint_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ItemIndexPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module ItemIndexPaintable_m

