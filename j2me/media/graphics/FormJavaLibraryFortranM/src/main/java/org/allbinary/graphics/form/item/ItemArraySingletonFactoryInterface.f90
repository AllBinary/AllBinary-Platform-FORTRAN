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
module ItemArraySingletonFactoryInterface_m
  use JR_m
  use ABCustomItem_m
  implicit none

  type, extends(JObject) :: ItemArraySingletonFactoryInterface
  contains
    procedure :: jm_getItems_0 => ItemArraySingletonFactoryInterface_jm_getItems_0
  end type


contains

  function ItemArraySingletonFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ItemArraySingletonFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ItemArraySingletonFactoryInterface)
      jresult => object
    end select
  end function

  function ItemArraySingletonFactoryInterface_jnew_0() result(this)
    class(ItemArraySingletonFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ItemArraySingletonFactoryInterface'
  end function

  recursive function ItemArraySingletonFactoryInterface_jm_getItems_0(this) result(jresult)
    class(ItemArraySingletonFactoryInterface), target :: this
    type(JRef), allocatable :: jresult(:)
    error stop 'AbstractMethodError: ItemArraySingletonFactoryInterface.getItems'
  end function
end module ItemArraySingletonFactoryInterface_m

