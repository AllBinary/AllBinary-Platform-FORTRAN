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
module OptimizedTickableLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: OptimizedTickableLayerManager
  end type


contains

  function OptimizedTickableLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedTickableLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedTickableLayerManager)
      jresult => object
    end select
  end function

  recursive function OptimizedTickableLayerManager_jnew_0() result(this)
    class(OptimizedTickableLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedTickableLayerManager'
        continue ! super()
  end function
end module OptimizedTickableLayerManager_m

function OptimizedTickableLayerManager_jnew_0_jext() result(this)
  use OptimizedTickableLayerManager_m, only: JObject, OptimizedTickableLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedTickableLayerManager_jnew_0()
end function

