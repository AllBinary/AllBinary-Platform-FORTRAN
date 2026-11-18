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
module MultiPlayerGameLayer_m
  use JR_m
  use Group_m
  use CollidableDestroyableDamageableLayer_m
  use Rectangle_m
  use ViewPositionBase_m
  use MultiPlayerGameLayerInterface_m
  use RemoteInfo_m
  use MultiplayerBehavior_m
  implicit none

  type, extends(CollidableDestroyableDamageableLayer) :: MultiPlayerGameLayer
  contains
    procedure :: jm_getMultiplayerBehavior_0 => MultiPlayerGameLayer_jm_getMultiplayerBehavior_0
    procedure :: jm_setPingInfo_1 => MultiPlayerGameLayer_jm_setPingInfo_1
    procedure :: jm_setFiring_1 => MultiPlayerGameLayer_jm_setFiring_1
    procedure :: jm_getFiring_0 => MultiPlayerGameLayer_jm_getFiring_0
  end type

  ! MultiPlayerGameLayer used as a MultiPlayerGameLayerInterface
  type, extends(MultiPlayerGameLayerInterface) :: MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface
    class(MultiPlayerGameLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_getMultiplayerBehavior_0 => MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface_jm_getMultiplayerBehavior_0
  end type


contains

  function MultiPlayerGameLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultiPlayerGameLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultiPlayerGameLayer)
      jresult => object
    end select
  end function

  function MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface_jnew(object) result(jresult)
    class(MultiPlayerGameLayer), target :: object
    class(MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'MultiPlayerGameLayer'
    jresult%jtarget => object
  end function

  recursive function MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface_jm_getMultiplayerBehavior_0(this) result(jresult)
    class(MultiPlayerGameLayer_jas_MultiPlayerGameLayerInterface), target :: this
    class(MultiplayerBehavior), pointer :: jresult
    jresult => this%jtarget%jm_getMultiplayerBehavior_0()
  end function

  recursive function MultiPlayerGameLayer_jnew_5(j_remoteInfo, j_groupInterface, j_name, j_layerInfo, j_viewPosition) result(this)
    class(RemoteInfo), target, optional :: j_remoteInfo
    type(JRef) :: j_groupInterface(:)
    character(len=*), intent(in) :: j_name
    class(Rectangle), target, optional :: j_layerInfo
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(MultiPlayerGameLayer), pointer :: this
    allocate(this)
    this%jclass = 'MultiPlayerGameLayer'
        continue ! super()
  end function

  recursive function MultiPlayerGameLayer_jm_getMultiplayerBehavior_0(this) result(jresult)
    class(MultiPlayerGameLayer), target :: this
    class(MultiplayerBehavior), pointer :: jresult
        jresult => MultiplayerBehavior_jstatic_NULL_MULTIPLAYER_BEHAVIOR()
        return
  end function

  recursive subroutine MultiPlayerGameLayer_jm_setPingInfo_1(this, j_show)
    class(MultiPlayerGameLayer), target :: this
    logical, value :: j_show
    continue
  end subroutine

  recursive subroutine MultiPlayerGameLayer_jm_setFiring_1(this, j_firing)
    class(MultiPlayerGameLayer), target :: this
    integer(4), value :: j_firing
    continue
  end subroutine

  recursive function MultiPlayerGameLayer_jm_getFiring_0(this) result(jresult)
    class(MultiPlayerGameLayer), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module MultiPlayerGameLayer_m

