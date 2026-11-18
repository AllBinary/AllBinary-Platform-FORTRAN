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
! package org.allbinary.game.tick
module TickableLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: TickableLayerManager
  end type


contains

  function TickableLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TickableLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TickableLayerManager)
      jresult => object
    end select
  end function

  recursive function TickableLayerManager_jnew_0() result(this)
    class(TickableLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'TickableLayerManager'
        continue ! super()
  end function
end module TickableLayerManager_m

function TickableLayerManager_jnew_0_jext() result(this)
  use TickableLayerManager_m, only: JObject, TickableLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TickableLayerManager_jnew_0()
end function

