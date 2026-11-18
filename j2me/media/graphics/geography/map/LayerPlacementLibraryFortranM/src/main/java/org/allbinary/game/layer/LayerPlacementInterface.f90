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
module LayerPlacementInterface_m
  use JR_m
  use ABHashtable_m
  use LayerPlacementType_m
  implicit none

  type, extends(JObject) :: LayerPlacementInterface
  contains
    procedure :: jm_getWidth_0 => LayerPlacementInterface_jm_getWidth_0
    procedure :: jm_getHeight_0 => LayerPlacementInterface_jm_getHeight_0
    procedure :: jm_getLayerType_0 => LayerPlacementInterface_jm_getLayerType_0
    procedure :: jm_getInstance_0 => LayerPlacementInterface_jm_getInstance_0
  end type


contains

  function LayerPlacementInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerPlacementInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerPlacementInterface)
      jresult => object
    end select
  end function

  function LayerPlacementInterface_jnew_0() result(this)
    class(LayerPlacementInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerPlacementInterface'
  end function

  recursive function LayerPlacementInterface_jm_getWidth_0(this) result(jresult)
    class(LayerPlacementInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerPlacementInterface.getWidth'
  end function

  recursive function LayerPlacementInterface_jm_getHeight_0(this) result(jresult)
    class(LayerPlacementInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerPlacementInterface.getHeight'
  end function

  recursive function LayerPlacementInterface_jm_getLayerType_0(this) result(jresult)
    class(LayerPlacementInterface), target :: this
    class(LayerPlacementType), pointer :: jresult
    error stop 'AbstractMethodError: LayerPlacementInterface.getLayerType'
  end function

  recursive function LayerPlacementInterface_jm_getInstance_0(this) result(jresult)
    class(LayerPlacementInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: LayerPlacementInterface.getInstance'
  end function
end module LayerPlacementInterface_m

