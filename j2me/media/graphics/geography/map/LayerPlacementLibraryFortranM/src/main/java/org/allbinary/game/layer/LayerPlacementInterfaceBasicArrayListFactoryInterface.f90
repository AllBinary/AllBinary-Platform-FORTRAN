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
! package org.allbinary.game.layer
module LayerPlacementInterfaceBasicArrayListFactoryInterface_m
  use JR_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: LayerPlacementInterfaceBasicArrayListFactoryInterface
  contains
    procedure :: jm_getInstance_0 => LayerPlacementInterfaceBasicArrayListFactoryInterface_jm_getInstance_0
    procedure :: jm_getOnDemandResources_0 => LayerPlacementInterfaceBasicArrayListFactoryInterface_jm_getOnDemandResources_0
  end type


contains

  function LayerPlacementInterfaceBasicArrayListFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerPlacementInterfaceBasicArrayListFactoryInterface)
      jresult => object
    end select
  end function

  function LayerPlacementInterfaceBasicArrayListFactoryInterface_jnew_0() result(this)
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerPlacementInterfaceBasicArrayListFactoryInterface'
  end function

  recursive function LayerPlacementInterfaceBasicArrayListFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), target :: this
    class(BasicArrayList), pointer :: jresult
    error stop 'AbstractMethodError: LayerPlacementInterfaceBasicArrayListFactoryInterface.getInstance'
  end function

  recursive function LayerPlacementInterfaceBasicArrayListFactoryInterface_jm_getOnDemandResources_0(this) result(jresult)
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), target :: this
    integer(4), allocatable :: jresult(:)
    error stop 'AbstractMethodError: LayerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources'
  end function
end module LayerPlacementInterfaceBasicArrayListFactoryInterface_m

