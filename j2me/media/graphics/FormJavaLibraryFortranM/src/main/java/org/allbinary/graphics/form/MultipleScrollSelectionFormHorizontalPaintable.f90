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
module MultipleScrollSelectionFormHorizontalPaintable_m
  use JR_m
  use ABCustomItem_m
  use ItemIndexPaintable_m
  use MultipleScrollSelectionHorizontalForm_m
  implicit none

  type, extends(ItemIndexPaintable) :: MultipleScrollSelectionFormHorizontalPaintable
    class(MultipleScrollSelectionHorizontalForm), pointer :: f_multipleScrollSelectionForm => null()
  contains
    procedure :: jm_paint_5 => MultipleScrollSelectionFormHorizontalPaintable_jm_paint_5
  end type


contains

  function MultipleScrollSelectionFormHorizontalPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultipleScrollSelectionFormHorizontalPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultipleScrollSelectionFormHorizontalPaintable)
      jresult => object
    end select
  end function

  recursive function MultipleScrollSelectionFormHorizontalPaintable_jnew_1(j_multipleScrollSelectionForm) result(this)
    class(MultipleScrollSelectionHorizontalForm), target, optional :: j_multipleScrollSelectionForm
    class(MultipleScrollSelectionFormHorizontalPaintable), pointer :: this
    allocate(this)
    this%jclass = 'MultipleScrollSelectionFormHorizontalPaintable'
    
        this%f_multipleScrollSelectionForm => j_multipleScrollSelectionForm
  end function

  recursive function MultipleScrollSelectionFormHorizontalPaintable_jm_paint_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(MultipleScrollSelectionFormHorizontalPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%f_multipleScrollSelectionForm%jm_paintHorizontal_5(j_graphics, j_index, j_item, j_dx, j_dy)
        return
  end function
end module MultipleScrollSelectionFormHorizontalPaintable_m

