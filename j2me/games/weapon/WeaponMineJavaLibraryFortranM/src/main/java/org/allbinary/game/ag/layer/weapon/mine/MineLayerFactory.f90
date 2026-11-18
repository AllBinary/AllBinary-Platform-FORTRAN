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
! package org.allbinary.game.ag.layer.weapon.mine
module MineLayerFactory_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerFactoryInterface_m
  use ViewPositionFactoryInterface_m
  use MineLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: MineLayerFactory
    class(ViewPositionFactoryInterface), pointer :: f_viewPositionFactoryInterface => null()
  contains
    procedure :: jm_getInstance_0 => MineLayerFactory_jm_getInstance_0
  end type


contains

  function MineLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineLayerFactory)
      jresult => object
    end select
  end function

  recursive function MineLayerFactory_jnew_1(j_viewPositionFactoryInterface) result(this)
    class(ViewPositionFactoryInterface), target, optional :: j_viewPositionFactoryInterface
    class(MineLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'MineLayerFactory'
    
        this%f_viewPositionFactoryInterface => j_viewPositionFactoryInterface
  end function

  recursive function MineLayerFactory_jm_getInstance_0(this) result(jresult)
    class(MineLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => MineLayer_jnew_1(this%f_viewPositionFactoryInterface%jm_getInstance_0())
        return
  end function
end module MineLayerFactory_m

