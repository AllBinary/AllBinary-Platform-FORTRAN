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
! package org.allbinary.layer
module SingleLayerLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: SingleLayerLayerManager
  end type


contains

  function SingleLayerLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingleLayerLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingleLayerLayerManager)
      jresult => object
    end select
  end function

  recursive function SingleLayerLayerManager_jnew_0() result(this)
    class(SingleLayerLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'SingleLayerLayerManager'
        continue ! super()
  end function
end module SingleLayerLayerManager_m

function SingleLayerLayerManager_jnew_0_jext() result(this)
  use SingleLayerLayerManager_m, only: JObject, SingleLayerLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SingleLayerLayerManager_jnew_0()
end function

