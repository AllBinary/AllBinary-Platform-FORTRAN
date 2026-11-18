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
module ScrollSelectionFormHorizontalPaintable_m
  use JR_m
  use ABCustomItem_m
  use ItemIndexPaintable_m
  use ScrollSelectionForm_m
  implicit none

  type, extends(ItemIndexPaintable) :: ScrollSelectionFormHorizontalPaintable
    class(ScrollSelectionForm), pointer :: f_scrollSelectionForm => null()
  contains
    procedure :: jm_paint_5 => ScrollSelectionFormHorizontalPaintable_jm_paint_5
  end type


contains

  function ScrollSelectionFormHorizontalPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollSelectionFormHorizontalPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollSelectionFormHorizontalPaintable)
      jresult => object
    end select
  end function

  recursive function ScrollSelectionFormHorizontalPaintable_jnew_1(j_scrollSelectionForm) result(this)
    class(ScrollSelectionForm), target, optional :: j_scrollSelectionForm
    class(ScrollSelectionFormHorizontalPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ScrollSelectionFormHorizontalPaintable'
    
        this%f_scrollSelectionForm => j_scrollSelectionForm
  end function

  recursive function ScrollSelectionFormHorizontalPaintable_jm_paint_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionFormHorizontalPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%f_scrollSelectionForm%jm_paintItemHorizontal_5(j_graphics, j_index, j_item, j_dx, j_dy)
        return
  end function
end module ScrollSelectionFormHorizontalPaintable_m

