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
module GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_m
  use JR_m
  use LayerPlacementInterfaceBasicArrayListFactoryInterface_m
  implicit none

  type, extends(JObject) :: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
  contains
    procedure :: jm_getInstance_1 => GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jm_getInstance_1
    procedure :: jm_size_0 => GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jm_size_0
  end type


contains

  function GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  function GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jnew_0() result(this)
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'
  end function

  recursive function GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jm_getInstance_1(this, j_level) result(jresult)
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), pointer :: jresult
    error stop 'AbstractMethodError: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance'
  end function

  recursive function GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_jm_size_0(this) result(jresult)
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.size'
  end function
end module GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_m

