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
module ItemPaintableFactory_m
  use JR_m
  use ItemPaintable_m
  use PaintableForm_m
  implicit none

  type, extends(ItemPaintable) :: ItemPaintableFactory
  contains
    procedure :: jm_getInstanceItemPaintable_1 => ItemPaintableFactory_jm_getInstanceItemPaintable_1
  end type

  class(ItemPaintableFactory), pointer, save :: ItemPaintableFactory_jcell_instance => null()
  logical, save :: ItemPaintableFactory_jset_instance = .false.

contains

  function ItemPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemPaintableFactory)
      jresult => object
    end select
  end function

  function ItemPaintableFactory_jstatic_instance() result(jresult)
    class(ItemPaintableFactory), pointer :: jresult
    if (.not. ItemPaintableFactory_jset_instance) then
      ItemPaintableFactory_jset_instance = .true.
      ItemPaintableFactory_jcell_instance => ItemPaintableFactory_jnew_0()
    end if
    jresult => ItemPaintableFactory_jcell_instance
  end function

  subroutine ItemPaintableFactory_jsetstatic_instance(jvalue)
    class(ItemPaintableFactory), target, optional :: jvalue
    ItemPaintableFactory_jset_instance = .true.
    if (present(jvalue)) then
      ItemPaintableFactory_jcell_instance => jvalue
    else
      ItemPaintableFactory_jcell_instance => null()
    end if
  end subroutine

  function ItemPaintableFactory_jnew_0() result(this)
    class(ItemPaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'ItemPaintableFactory'
  end function

  recursive function ItemPaintableFactory_jm_getInstance_0() result(jresult)
    class(ItemPaintableFactory), pointer :: jresult
        jresult => ItemPaintableFactory_jstatic_instance()
        return
  end function

  recursive function ItemPaintableFactory_jm_getInstanceItemPaintable_1(this, j_paintableForm) result(jresult)
    class(ItemPaintableFactory), target :: this
    class(PaintableForm), target, optional :: j_paintableForm
    class(ItemPaintable), pointer :: jresult
        jresult => ItemPaintableFactory_jstatic_instance()
        return
  end function
end module ItemPaintableFactory_m

function ItemPaintableFactory_jnew_0_jext() result(this)
  use ItemPaintableFactory_m, only: JObject, ItemPaintableFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ItemPaintableFactory_jnew_0()
end function

