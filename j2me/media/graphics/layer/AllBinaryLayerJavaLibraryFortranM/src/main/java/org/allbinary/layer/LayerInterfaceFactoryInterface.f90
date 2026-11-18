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
! package org.allbinary.layer
module LayerInterfaceFactoryInterface_m
  use JR_m
  use ABHashtable_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: LayerInterfaceFactoryInterface
  contains
    procedure :: jm_getNextInstance_4 => LayerInterfaceFactoryInterface_jm_getNextInstance_4
  end type


contains

  function LayerInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function LayerInterfaceFactoryInterface_jnew_0() result(this)
    class(LayerInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerInterfaceFactoryInterface'
  end function

  recursive function LayerInterfaceFactoryInterface_jm_getNextInstance_4(this, j_hashtable, j_x, j_y, j_z) result(jresult)
    class(LayerInterfaceFactoryInterface), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(AllBinaryLayer), pointer :: jresult
    error stop 'AbstractMethodError: LayerInterfaceFactoryInterface.getNextInstance'
  end function
end module LayerInterfaceFactoryInterface_m

