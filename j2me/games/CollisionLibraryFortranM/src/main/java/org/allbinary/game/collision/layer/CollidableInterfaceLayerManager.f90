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
! package org.allbinary.game.collision.layer
module CollidableInterfaceLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: CollidableInterfaceLayerManager
  end type


contains

  function CollidableInterfaceLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableInterfaceLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableInterfaceLayerManager)
      jresult => object
    end select
  end function

  recursive function CollidableInterfaceLayerManager_jnew_0() result(this)
    class(CollidableInterfaceLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'CollidableInterfaceLayerManager'
        continue ! super()
  end function
end module CollidableInterfaceLayerManager_m

function CollidableInterfaceLayerManager_jnew_0_jext() result(this)
  use CollidableInterfaceLayerManager_m, only: JObject, CollidableInterfaceLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollidableInterfaceLayerManager_jnew_0()
end function

