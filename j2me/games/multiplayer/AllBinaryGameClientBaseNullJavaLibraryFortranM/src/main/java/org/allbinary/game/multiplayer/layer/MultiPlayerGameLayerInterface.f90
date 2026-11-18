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
! package org.allbinary.game.multiplayer.layer
module MultiPlayerGameLayerInterface_m
  use JR_m
  use MultiplayerBehavior_m
  implicit none

  type, extends(JObject) :: MultiPlayerGameLayerInterface
  contains
    procedure :: jm_getMultiplayerBehavior_0 => MultiPlayerGameLayerInterface_jm_getMultiplayerBehavior_0
  end type


contains

  function MultiPlayerGameLayerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultiPlayerGameLayerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultiPlayerGameLayerInterface)
      jresult => object
    end select
  end function

  function MultiPlayerGameLayerInterface_jnew_0() result(this)
    class(MultiPlayerGameLayerInterface), pointer :: this
    allocate(this)
    this%jclass = 'MultiPlayerGameLayerInterface'
  end function

  recursive function MultiPlayerGameLayerInterface_jm_getMultiplayerBehavior_0(this) result(jresult)
    class(MultiPlayerGameLayerInterface), target :: this
    class(MultiplayerBehavior), pointer :: jresult
    error stop 'AbstractMethodError: MultiPlayerGameLayerInterface.getMultiplayerBehavior'
  end function
end module MultiPlayerGameLayerInterface_m

