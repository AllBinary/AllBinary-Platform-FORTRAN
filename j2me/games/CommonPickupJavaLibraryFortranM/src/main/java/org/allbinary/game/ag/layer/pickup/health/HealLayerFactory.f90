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
! package org.allbinary.game.ag.layer.pickup.health
module HealLayerFactory_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerFactoryInterface_m
  use HealLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: HealLayerFactory
  contains
    procedure :: jm_getInstance_0 => HealLayerFactory_jm_getInstance_0
  end type


contains

  function HealLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealLayerFactory)
      jresult => object
    end select
  end function

  function HealLayerFactory_jnew_0() result(this)
    class(HealLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'HealLayerFactory'
  end function

  recursive function HealLayerFactory_jm_getInstance_0(this) result(jresult)
    class(HealLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => HealLayer_jnew_0()
        return
  end function
end module HealLayerFactory_m

