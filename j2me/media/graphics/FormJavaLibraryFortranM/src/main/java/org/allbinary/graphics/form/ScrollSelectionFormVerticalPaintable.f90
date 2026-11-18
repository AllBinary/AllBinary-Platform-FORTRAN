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
module ScrollSelectionFormVerticalPaintable_m
  use JR_m
  use ABCustomItem_m
  use ItemIndexPaintable_m
  use ScrollSelectionForm_m
  implicit none

  type, extends(ItemIndexPaintable) :: ScrollSelectionFormVerticalPaintable
    class(ScrollSelectionForm), pointer :: f_scrollSelectionForm => null()
  contains
    procedure :: jm_paint_5 => ScrollSelectionFormVerticalPaintable_jm_paint_5
  end type


contains

  function ScrollSelectionFormVerticalPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollSelectionFormVerticalPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollSelectionFormVerticalPaintable)
      jresult => object
    end select
  end function

  recursive function ScrollSelectionFormVerticalPaintable_jnew_1(j_scrollSelectionForm) result(this)
    class(ScrollSelectionForm), target, optional :: j_scrollSelectionForm
    class(ScrollSelectionFormVerticalPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ScrollSelectionFormVerticalPaintable'
    
        this%f_scrollSelectionForm => j_scrollSelectionForm
  end function

  recursive function ScrollSelectionFormVerticalPaintable_jm_paint_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionFormVerticalPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%f_scrollSelectionForm%jm_paintItemVertical_5(j_graphics, j_index, j_item, j_dx, j_dy)
        return
  end function
end module ScrollSelectionFormVerticalPaintable_m

