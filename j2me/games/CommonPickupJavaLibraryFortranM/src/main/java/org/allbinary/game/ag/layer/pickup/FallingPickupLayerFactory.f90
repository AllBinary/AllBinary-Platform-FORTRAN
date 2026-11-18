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
! package org.allbinary.game.ag.layer.pickup
module FallingPickupLayerFactory_m
  use JR_m
  use RemoteInfo_m
  use AllBinaryLayer_m
  use AllBinaryLayerFactoryInterface_m
  use FallingPickupLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: FallingPickupLayerFactory
  contains
    procedure :: jm_getInstance_0 => FallingPickupLayerFactory_jm_getInstance_0
  end type


contains

  function FallingPickupLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FallingPickupLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FallingPickupLayerFactory)
      jresult => object
    end select
  end function

  function FallingPickupLayerFactory_jnew_0() result(this)
    class(FallingPickupLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'FallingPickupLayerFactory'
  end function

  recursive function FallingPickupLayerFactory_jm_getInstance_0(this) result(jresult)
    class(FallingPickupLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => FallingPickupLayer_jnew_1(RemoteInfo_jstatic_REMOTE_INFO())
        return
  end function
end module FallingPickupLayerFactory_m

