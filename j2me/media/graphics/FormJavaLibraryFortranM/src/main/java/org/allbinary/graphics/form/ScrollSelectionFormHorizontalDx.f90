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
module ScrollSelectionFormHorizontalDx_m
  use JR_m
  use ABCustomItem_m
  use ItemIndexDx_m
  use ScrollSelectionForm_m
  implicit none

  type, extends(ItemIndexDx) :: ScrollSelectionFormHorizontalDx
    class(ScrollSelectionForm), pointer :: f_scrollSelectionForm => null()
  contains
    procedure :: jm_getDx_4 => ScrollSelectionFormHorizontalDx_jm_getDx_4
  end type


contains

  function ScrollSelectionFormHorizontalDx_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollSelectionFormHorizontalDx), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollSelectionFormHorizontalDx)
      jresult => object
    end select
  end function

  recursive function ScrollSelectionFormHorizontalDx_jnew_1(j_scrollSelectionForm) result(this)
    class(ScrollSelectionForm), target, optional :: j_scrollSelectionForm
    class(ScrollSelectionFormHorizontalDx), pointer :: this
    allocate(this)
    this%jclass = 'ScrollSelectionFormHorizontalDx'
    
        this%f_scrollSelectionForm => j_scrollSelectionForm
  end function

  recursive function ScrollSelectionFormHorizontalDx_jm_getDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionFormHorizontalDx), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%f_scrollSelectionForm%jm_getSelectedIndexForPointHorizontalDx_4(j_index, j_item, j_dx, j_dy)
        return
  end function
end module ScrollSelectionFormHorizontalDx_m

