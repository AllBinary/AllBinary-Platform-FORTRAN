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
module HorizontalItemIndexDx_m
  use JR_m
  use ABCustomItem_m
  use ItemIndexDx_m
  use ScrollCurrentSelectionForm_m
  implicit none

  type, extends(ItemIndexDx) :: HorizontalItemIndexDx
    class(ScrollCurrentSelectionForm), pointer :: f_scrollCurrentSelectionForm => null()
  contains
    procedure :: jm_getDx_4 => HorizontalItemIndexDx_jm_getDx_4
  end type


contains

  function HorizontalItemIndexDx_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HorizontalItemIndexDx), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HorizontalItemIndexDx)
      jresult => object
    end select
  end function

  recursive function HorizontalItemIndexDx_jnew_1(j_scrollCurrentSelectionForm) result(this)
    class(ScrollCurrentSelectionForm), target, optional :: j_scrollCurrentSelectionForm
    class(HorizontalItemIndexDx), pointer :: this
    allocate(this)
    this%jclass = 'HorizontalItemIndexDx'
    
        this%f_scrollCurrentSelectionForm => j_scrollCurrentSelectionForm
  end function

  recursive function HorizontalItemIndexDx_jm_getDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(HorizontalItemIndexDx), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%f_scrollCurrentSelectionForm%jm_getXHorizontalForm_4(j_index, j_item, j_dx, j_dy)
        return
  end function
end module HorizontalItemIndexDx_m

