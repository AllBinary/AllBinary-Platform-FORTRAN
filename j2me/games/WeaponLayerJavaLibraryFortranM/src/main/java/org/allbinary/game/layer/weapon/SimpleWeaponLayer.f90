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
module SimpleWeaponLayer_m
  use JR_m
  use Animation_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use NullIndexedAnimationFactory_m
  use ExplosionResources_m
  use RemoteInfo_m
  use Rectangle_m
  use Movement_m
  use ViewPositionBase_m
  use WeaponLayer_m
  use CollidableWeaponBehavior_m
  implicit none

  type, extends(WeaponLayer) :: SimpleWeaponLayer
  end type


contains

  function SimpleWeaponLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleWeaponLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleWeaponLayer)
      jresult => object
    end select
  end function

  recursive function SimpleWeaponLayer_jnew_8(j_name, j_remoteInfo, j_multiPlayerType, j_movement, j_animationInterface, j_destroyedAnimationInterface, j_rectangle, j_viewPosition) result(this)
    character(len=*), intent(in) :: j_name
    class(RemoteInfo), target, optional :: j_remoteInfo
    integer(4), value :: j_multiPlayerType
    class(Movement), target, optional :: j_movement
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_destroyedAnimationInterface
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(SimpleWeaponLayer), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'SimpleWeaponLayer'
        continue ! super()
        call this%jm_setCollidableInferface_1(CollidableWeaponBehavior_jnew_1(.true.))
  end function

  recursive function SimpleWeaponLayer_jm_createDestroyed_0() result(jresult)
    class(Animation), pointer :: jresult
    class(ProceduralAnimationInterfaceFactoryInterface), pointer :: jtemp1
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp2
    class(ExplosionResources), pointer :: jtemp3
    class(NullIndexedAnimationFactory), pointer :: jtemp4
        jtemp3 => ExplosionResources_jm_getInstance_0()
        jtemp4 => NullIndexedAnimationFactory_jm_getFactoryInstance_0()
        jtemp2 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => jtemp2%jm_getProcedural_1(jtemp3%f_THIRD_EXPLOSION_RESOURCE)
        jresult => jtemp1%jm_getInstanceAnimation_1(jtemp4%jm_getInstance_1(0))
        return
  end function
end module SimpleWeaponLayer_m

