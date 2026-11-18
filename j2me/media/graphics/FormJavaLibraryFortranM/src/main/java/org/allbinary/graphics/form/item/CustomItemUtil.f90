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
! package org.allbinary.graphics.form.item
module CustomItemUtil_m
  use JR_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: CustomItemUtil
    type(JRef), allocatable :: f_CUSTOM_ITEM_ARRAY(:)
  end type

  class(CustomItemUtil), pointer, save :: CustomItemUtil_jcell_instance => null()
  logical, save :: CustomItemUtil_jset_instance = .false.

contains

  function CustomItemUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomItemUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomItemUtil)
      jresult => object
    end select
  end function

  function CustomItemUtil_jstatic_instance() result(jresult)
    class(CustomItemUtil), pointer :: jresult
    if (.not. CustomItemUtil_jset_instance) then
      CustomItemUtil_jset_instance = .true.
      CustomItemUtil_jcell_instance => CustomItemUtil_jnew_0()
    end if
    jresult => CustomItemUtil_jcell_instance
  end function

  subroutine CustomItemUtil_jsetstatic_instance(jvalue)
    class(CustomItemUtil), target, optional :: jvalue
    CustomItemUtil_jset_instance = .true.
    if (present(jvalue)) then
      CustomItemUtil_jcell_instance => jvalue
    else
      CustomItemUtil_jcell_instance => null()
    end if
  end subroutine

  function CustomItemUtil_jnew_0() result(this)
    class(CustomItemUtil), pointer :: this
    allocate(this)
    this%jclass = 'CustomItemUtil'
    this%f_CUSTOM_ITEM_ARRAY = JR_newRefArray(0)
  end function

  recursive function CustomItemUtil_jm_getInstance_0() result(jresult)
    class(CustomItemUtil), pointer :: jresult
        jresult => CustomItemUtil_jstatic_instance()
        return
  end function
end module CustomItemUtil_m

