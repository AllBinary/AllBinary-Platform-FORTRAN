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
! package org.allbinary.game.layer.weapon
module DamageWeaponLayer_m
  use JR_m
  use Animation_m
  use RemoteInfo_m
  use Rectangle_m
  use Movement_m
  use ViewPositionBase_m
  use WeaponLayer_m
  use CollidableDamageWeaponBehavior_m
  implicit none

  type, extends(WeaponLayer) :: DamageWeaponLayer
  end type


contains

  function DamageWeaponLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DamageWeaponLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DamageWeaponLayer)
      jresult => object
    end select
  end function

  recursive function DamageWeaponLayer_jnew_11(j_name, j_remoteInfo, j_movement, j_animationInterface, j_destroyedAnimationInterface, j_rectangle, j_viewPosition, j_username, j_actorSessionId, j_id, j_multiPlayerType) result(this)
    character(len=*), intent(in) :: j_name
    class(RemoteInfo), target, optional :: j_remoteInfo
    class(Movement), target, optional :: j_movement
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_destroyedAnimationInterface
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    character(len=*), intent(in) :: j_username
    integer(4), value :: j_actorSessionId
    integer(4), value :: j_id
    integer(4), value :: j_multiPlayerType
    class(DamageWeaponLayer), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DamageWeaponLayer'
        continue ! super()
        call this%jm_setCollidableInferface_1(CollidableDamageWeaponBehavior_jnew_1(.true.))
  end function
end module DamageWeaponLayer_m

