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
module ArtificialIntelligenceLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: ArtificialIntelligenceLayerManager
  end type


contains

  function ArtificialIntelligenceLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceLayerManager)
      jresult => object
    end select
  end function

  recursive function ArtificialIntelligenceLayerManager_jnew_0() result(this)
    class(ArtificialIntelligenceLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceLayerManager'
        continue ! super()
  end function
end module ArtificialIntelligenceLayerManager_m

function ArtificialIntelligenceLayerManager_jnew_0_jext() result(this)
  use ArtificialIntelligenceLayerManager_m, only: JObject, ArtificialIntelligenceLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ArtificialIntelligenceLayerManager_jnew_0()
end function

