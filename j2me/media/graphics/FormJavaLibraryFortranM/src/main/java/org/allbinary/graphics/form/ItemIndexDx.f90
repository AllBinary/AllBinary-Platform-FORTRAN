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
module ItemIndexDx_m
  use JR_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: ItemIndexDx
  contains
    procedure :: jm_getDx_4 => ItemIndexDx_jm_getDx_4
  end type

  class(ItemIndexDx), pointer, save :: ItemIndexDx_jcell_instance => null()
  logical, save :: ItemIndexDx_jset_instance = .false.

contains

  function ItemIndexDx_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemIndexDx), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemIndexDx)
      jresult => object
    end select
  end function

  function ItemIndexDx_jstatic_instance() result(jresult)
    class(ItemIndexDx), pointer :: jresult
    if (.not. ItemIndexDx_jset_instance) then
      ItemIndexDx_jset_instance = .true.
      ItemIndexDx_jcell_instance => ItemIndexDx_jnew_0()
    end if
    jresult => ItemIndexDx_jcell_instance
  end function

  subroutine ItemIndexDx_jsetstatic_instance(jvalue)
    class(ItemIndexDx), target, optional :: jvalue
    ItemIndexDx_jset_instance = .true.
    if (present(jvalue)) then
      ItemIndexDx_jcell_instance => jvalue
    else
      ItemIndexDx_jcell_instance => null()
    end if
  end subroutine

  function ItemIndexDx_jnew_0() result(this)
    class(ItemIndexDx), pointer :: this
    allocate(this)
    this%jclass = 'ItemIndexDx'
  end function

  recursive function ItemIndexDx_jm_getInstance_0() result(jresult)
    class(ItemIndexDx), pointer :: jresult
        jresult => ItemIndexDx_jstatic_instance()
        return
  end function

  recursive function ItemIndexDx_jm_getDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ItemIndexDx), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module ItemIndexDx_m

