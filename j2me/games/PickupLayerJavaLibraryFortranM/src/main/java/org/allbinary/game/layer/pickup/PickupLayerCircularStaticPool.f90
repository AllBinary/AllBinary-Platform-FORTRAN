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
! package org.allbinary.game.layer.pickup
module PickupLayerCircularStaticPool_m
  use JR_m
  use AllBinaryLayerCircularPool_m
  use PickupLayer_m
  use PickedUpLayerInterface_m
  use PickedUpLayerInterfaceFactoryInterface_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: PickupLayerCircularStaticPool
  contains
    procedure :: jm_getInstanceXYZ_4 => PickupLayerCircularStaticPool_jm_getInstanceXYZ_4
  end type

  class(PickupLayerCircularStaticPool), pointer, save :: PickupLayerCircularStaticPool_jcell_SINGLETON => null()
  logical, save :: PickupLayerCircularStaticPool_jset_SINGLETON = .false.

contains

  function PickupLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupLayerCircularStaticPool)
      jresult => object
    end select
  end function

  function PickupLayerCircularStaticPool_jstatic_SINGLETON() result(jresult)
    class(PickupLayerCircularStaticPool), pointer :: jresult
    if (.not. PickupLayerCircularStaticPool_jset_SINGLETON) then
      PickupLayerCircularStaticPool_jset_SINGLETON = .true.
      PickupLayerCircularStaticPool_jcell_SINGLETON => PickupLayerCircularStaticPool_jnew_0()
    end if
    jresult => PickupLayerCircularStaticPool_jcell_SINGLETON
  end function

  subroutine PickupLayerCircularStaticPool_jsetstatic_SINGLETON(jvalue)
    class(PickupLayerCircularStaticPool), target, optional :: jvalue
    PickupLayerCircularStaticPool_jset_SINGLETON = .true.
    if (present(jvalue)) then
      PickupLayerCircularStaticPool_jcell_SINGLETON => jvalue
    else
      PickupLayerCircularStaticPool_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function PickupLayerCircularStaticPool_jnew_0() result(this)
    class(PickupLayerCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'PickupLayerCircularStaticPool'
        continue
  end function

  recursive function PickupLayerCircularStaticPool_jm_getInstance_0() result(jresult)
    class(PickupLayerCircularStaticPool), pointer :: jresult
        jresult => PickupLayerCircularStaticPool_jstatic_SINGLETON()
        return
  end function

  recursive function PickupLayerCircularStaticPool_jm_getInstanceXYZ_4(this, j_pickedUpLayerInterfaceFactoryInterface, j_x, j_y, j_z) result(jresult)
    class(PickupLayerCircularStaticPool), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: j_pickedUpLayerInterfaceFactoryInterface
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(PickedUpLayerInterface), pointer :: jresult
    class(PickupLayer), pointer :: j_pickupLayer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_pickupLayer => PickupLayer_jcast(this%jm_getNextInstance_0())
        call j_pickupLayer%jm_initXYZ_3(j_x, j_y, j_z)
        call j_pickupLayer%jm_init_2(j_pickedUpLayerInterfaceFactoryInterface, j_pickedUpLayerInterfaceFactoryInterface%jm_getAnimationInterface_0())
        jresult => j_pickupLayer
        return
  end function
end module PickupLayerCircularStaticPool_m

function PickupLayerCircularStaticPool_jnew_0_jext() result(this)
  use PickupLayerCircularStaticPool_m, only: JObject, PickupLayerCircularStaticPool_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PickupLayerCircularStaticPool_jnew_0()
end function

