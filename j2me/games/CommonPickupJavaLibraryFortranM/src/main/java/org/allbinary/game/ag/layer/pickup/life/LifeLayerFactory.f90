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
! package org.allbinary.game.ag.layer.pickup.life
module LifeLayerFactory_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerFactoryInterface_m
  use LifeLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: LifeLayerFactory
  contains
    procedure :: jm_getInstance_0 => LifeLayerFactory_jm_getInstance_0
  end type


contains

  function LifeLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeLayerFactory)
      jresult => object
    end select
  end function

  function LifeLayerFactory_jnew_0() result(this)
    class(LifeLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'LifeLayerFactory'
  end function

  recursive function LifeLayerFactory_jm_getInstance_0(this) result(jresult)
    class(LifeLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => LifeLayer_jnew_0()
        return
  end function
end module LifeLayerFactory_m

