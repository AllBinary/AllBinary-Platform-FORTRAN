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
! package org.allbinary.game.layer.drop
module DropLayerInterface_m
  use JR_m
  use PickedUpLayerInterface_m
  use LayerInterface_m
  implicit none

  type, extends(LayerInterface) :: DropLayerInterface
  contains
    procedure :: jm_getDroppedLayer_0 => DropLayerInterface_jm_getDroppedLayer_0
  end type


contains

  function DropLayerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DropLayerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DropLayerInterface)
      jresult => object
    end select
  end function

  function DropLayerInterface_jnew_0() result(this)
    class(DropLayerInterface), pointer :: this
    allocate(this)
    this%jclass = 'DropLayerInterface'
  end function

  recursive function DropLayerInterface_jm_getDroppedLayer_0(this) result(jresult)
    class(DropLayerInterface), target :: this
    class(PickedUpLayerInterface), pointer :: jresult
    error stop 'AbstractMethodError: DropLayerInterface.getDroppedLayer'
  end function
end module DropLayerInterface_m

