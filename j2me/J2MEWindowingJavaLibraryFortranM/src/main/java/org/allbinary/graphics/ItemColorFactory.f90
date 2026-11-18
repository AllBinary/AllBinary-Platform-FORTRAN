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
! package org.allbinary.graphics
module ItemColorFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: ItemColorFactory
    integer(4) :: f_INVERT_PAINT = 0
    integer(4) :: f_PAINT = 0
    integer(4) :: f_TEXT_FIELD_NO_FOCUS = 0
  end type

  class(ItemColorFactory), pointer, save :: ItemColorFactory_jcell_instance => null()
  logical, save :: ItemColorFactory_jset_instance = .false.

contains

  function ItemColorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemColorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemColorFactory)
      jresult => object
    end select
  end function

  function ItemColorFactory_jstatic_instance() result(jresult)
    class(ItemColorFactory), pointer :: jresult
    if (.not. ItemColorFactory_jset_instance) then
      ItemColorFactory_jset_instance = .true.
      ItemColorFactory_jcell_instance => ItemColorFactory_jnew_0()
    end if
    jresult => ItemColorFactory_jcell_instance
  end function

  subroutine ItemColorFactory_jsetstatic_instance(jvalue)
    class(ItemColorFactory), target, optional :: jvalue
    ItemColorFactory_jset_instance = .true.
    if (present(jvalue)) then
      ItemColorFactory_jcell_instance => jvalue
    else
      ItemColorFactory_jcell_instance => null()
    end if
  end subroutine

  function ItemColorFactory_jnew_0() result(this)
    class(ItemColorFactory), pointer :: this
    allocate(this)
    this%jclass = 'ItemColorFactory'
    this%f_INVERT_PAINT = int(z'FF000000', 4)
    this%f_PAINT = int(z'FFe07718', 4)
    this%f_TEXT_FIELD_NO_FOCUS = int(z'7F7F7F', 4)
  end function

  recursive function ItemColorFactory_jm_getInstance_0() result(jresult)
    class(ItemColorFactory), pointer :: jresult
        jresult => ItemColorFactory_jstatic_instance()
        return
  end function
end module ItemColorFactory_m

