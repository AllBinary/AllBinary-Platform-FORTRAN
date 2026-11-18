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
module GameInputLayerManager_m
  use JR_m
  use ABLayerManager_m
  use LayerManagerNoDebug_m
  implicit none

  type, extends(ABLayerManager) :: GameInputLayerManager
  end type


contains

  function GameInputLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputLayerManager)
      jresult => object
    end select
  end function

  recursive function GameInputLayerManager_jnew_0() result(this)
    class(GameInputLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'GameInputLayerManager'
        continue ! super()
  end function
end module GameInputLayerManager_m

function GameInputLayerManager_jnew_0_jext() result(this)
  use GameInputLayerManager_m, only: JObject, GameInputLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameInputLayerManager_jnew_0()
end function

