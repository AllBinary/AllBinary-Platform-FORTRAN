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
! package org.allbinary.ai
module OptimizedArtificialIntelligenceLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: OptimizedArtificialIntelligenceLayerManager
  end type


contains

  function OptimizedArtificialIntelligenceLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedArtificialIntelligenceLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedArtificialIntelligenceLayerManager)
      jresult => object
    end select
  end function

  recursive function OptimizedArtificialIntelligenceLayerManager_jnew_0() result(this)
    class(OptimizedArtificialIntelligenceLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedArtificialIntelligenceLayerManager'
        continue ! super()
  end function
end module OptimizedArtificialIntelligenceLayerManager_m

function OptimizedArtificialIntelligenceLayerManager_jnew_0_jext() result(this)
  use OptimizedArtificialIntelligenceLayerManager_m, only: JObject, OptimizedArtificialIntelligenceLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedArtificialIntelligenceLayerManager_jnew_0()
end function

