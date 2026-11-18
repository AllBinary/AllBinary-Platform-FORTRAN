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
! package org.allbinary.game.layer.pickup
module CountedPickedUpLayerInterfaceFactoryInterface_m
  use JR_m
  use LayerInterfaceFactoryInterface_m
  use AllBinaryLayer_m
  use ABHashtable_m
  use PickedUpLayerInterfaceFactoryInterface_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactoryInterface) :: CountedPickedUpLayerInterfaceFactoryInterface
  contains
    procedure :: jm_getId_0 => CountedPickedUpLayerInterfaceFactoryInterface_jm_getId_0
    procedure :: jm_getTotal_0 => CountedPickedUpLayerInterfaceFactoryInterface_jm_getTotal_0
  end type


contains

  function CountedPickedUpLayerInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CountedPickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CountedPickedUpLayerInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function CountedPickedUpLayerInterfaceFactoryInterface_jnew_0() result(this)
    class(CountedPickedUpLayerInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'CountedPickedUpLayerInterfaceFactoryInterface'
  end function

  recursive function CountedPickedUpLayerInterfaceFactoryInterface_jm_getId_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactoryInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: CountedPickedUpLayerInterfaceFactoryInterface.getId'
  end function

  recursive function CountedPickedUpLayerInterfaceFactoryInterface_jm_getTotal_0(this) result(jresult)
    class(CountedPickedUpLayerInterfaceFactoryInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: CountedPickedUpLayerInterfaceFactoryInterface.getTotal'
  end function
end module CountedPickedUpLayerInterfaceFactoryInterface_m

