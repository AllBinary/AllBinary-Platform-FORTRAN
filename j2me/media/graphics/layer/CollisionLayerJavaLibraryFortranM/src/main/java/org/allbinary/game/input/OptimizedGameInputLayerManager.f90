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
! package org.allbinary.game.input
module OptimizedGameInputLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: OptimizedGameInputLayerManager
  end type


contains

  function OptimizedGameInputLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedGameInputLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedGameInputLayerManager)
      jresult => object
    end select
  end function

  recursive function OptimizedGameInputLayerManager_jnew_0() result(this)
    class(OptimizedGameInputLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedGameInputLayerManager'
        continue ! super()
  end function
end module OptimizedGameInputLayerManager_m

function OptimizedGameInputLayerManager_jnew_0_jext() result(this)
  use OptimizedGameInputLayerManager_m, only: JObject, OptimizedGameInputLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedGameInputLayerManager_jnew_0()
end function

