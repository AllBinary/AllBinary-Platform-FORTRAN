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
module PickupBehavior_m
  use JR_m
  use HealthInterfaceCompositeInterface_m
  use CollidableCompositeLayer_m
  use CollidableDestroyableDamageableLayer_m
  use CountedLayerInterfaceFactoryPart_m
  use PartInterface_m
  use NullUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use CommonStrings_m
  use PickupBehaviorInterface_m
  use PickupProcessorInterface_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerType_m
  use PickedUpLayerTypeFactory_m
  use CountedPickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerInterface_m
  use CountedPickedUpLayerInterfaceFactory_m
  implicit none

  type, extends(PickupBehaviorInterface) :: PickupBehavior
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_countedIndex = 0
    class(CollidableCompositeLayer), pointer :: f_ownerLayerInterface => null()
  contains
    procedure :: jm_doPickup_1 => PickupBehavior_jm_doPickup_1
    procedure :: jm_doPickupLayer_1 => PickupBehavior_jm_doPickupLayer_1
    procedure :: jm_add_1 => PickupBehavior_jm_add_1
    procedure :: jm_addAt_2 => PickupBehavior_jm_addAt_2
    procedure :: jm_getFirstAvailableCountedLayerInterfaceFactory_1 => PickupBehavior_jm_getFirstAvailableCountedLayerInterfaceFactory_1
    procedure :: jm_getCountedLayerInterfaceFactoryForSlot_1 => PickupBehavior_jm_getCountedLayerInterfaceFactoryForSlot_1
    procedure :: jm_getCountedIndex_0 => PickupBehavior_jm_getCountedIndex_0
  end type

  class(JObject), pointer, save :: PickupBehavior_jcell_NULL_PICKUP_BEHAVIOR => null()
  logical, save :: PickupBehavior_jset_NULL_PICKUP_BEHAVIOR = .false.

contains

  function PickupBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupBehavior)
      jresult => object
    end select
  end function

  function PickupBehavior_jstatic_NULL_PICKUP_BEHAVIOR() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. PickupBehavior_jset_NULL_PICKUP_BEHAVIOR) then
      PickupBehavior_jset_NULL_PICKUP_BEHAVIOR = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    PickupBehavior_jcell_NULL_PICKUP_BEHAVIOR => jtemp1%f_NULL_OBJECT
    end if
    jresult => PickupBehavior_jcell_NULL_PICKUP_BEHAVIOR
  end function

  subroutine PickupBehavior_jsetstatic_NULL_PICKUP_BEHAVIOR(jvalue)
    class(JObject), target, optional :: jvalue
    PickupBehavior_jset_NULL_PICKUP_BEHAVIOR = .true.
    if (present(jvalue)) then
      PickupBehavior_jcell_NULL_PICKUP_BEHAVIOR => jvalue
    else
      PickupBehavior_jcell_NULL_PICKUP_BEHAVIOR => null()
    end if
  end subroutine

  recursive function PickupBehavior_jnew_2(j_ownerLayerInterface, j_countedIndex) result(this)
    class(CollidableCompositeLayer), target, optional :: j_ownerLayerInterface
    integer(4), value :: j_countedIndex
    class(PickupBehavior), pointer :: this
    allocate(this)
    this%jclass = 'PickupBehavior'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
        this%f_ownerLayerInterface => j_ownerLayerInterface
        this%f_countedIndex = j_countedIndex
  end function

  recursive function PickupBehavior_jm_getNullInstance_0() result(jresult)
    class(PickupBehavior), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(PickupBehavior_jstatic_NULL_PICKUP_BEHAVIOR(), jtemp2%f_NULL_OBJECT)) then
            call PickupBehavior_jsetstatic_NULL_PICKUP_BEHAVIOR(PickupBehavior_jnew_2(CollidableCompositeLayer_jm_getNullInstance_0(), 0))
        end if
        jresult => PickupBehavior_jcast(PickupBehavior_jstatic_NULL_PICKUP_BEHAVIOR())
        return
  end function

  recursive subroutine PickupBehavior_jm_doPickup_1(this, j_pickupProcessorInterface)
    class(PickupBehavior), target :: this
    class(PickupProcessorInterface), target, optional :: j_pickupProcessorInterface
    class(HealthInterfaceCompositeInterface), pointer :: j_healthInterfaceCompositeInterface
    class(CommonStrings), pointer :: j_commonStrings
    class(Health), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_healthInterfaceCompositeInterface => HealthInterfaceCompositeInterface_jcast(this%f_ownerLayerInterface)
            jtemp3 => j_healthInterfaceCompositeInterface%jm_getHealthInterface_0()
            if (jtemp3%jm_isAlive_0()) then
                call j_pickupProcessorInterface%jm_process_1(this%f_ownerLayerInterface)
            end if
  end subroutine

  recursive subroutine PickupBehavior_jm_doPickupLayer_1(this, j_pickupLayerInterface)
    class(PickupBehavior), target :: this
    class(PickedUpLayerInterface), target, optional :: j_pickupLayerInterface
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: j_pickedUpLayerInterfaceFactoryInterface
    class(PickedUpLayerType), pointer :: j_pickedUpLayerType
    class(PickedUpLayerTypeFactory), pointer :: j_pickedUpLayerTypeFactory
    class(PickupProcessorInterface), pointer :: j_pickupProcessorInterface
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_pickedUpLayerInterfaceFactoryInterface => j_pickupLayerInterface%jm_getPickedUpLayerInterfaceFactoryInterface_0()
            j_pickedUpLayerType => j_pickedUpLayerInterfaceFactoryInterface%jm_getPickedUpLayerType_0()
            j_pickedUpLayerTypeFactory => PickedUpLayerTypeFactory_jm_getInstance_0()
            if ((((JR_same(j_pickedUpLayerType, j_pickedUpLayerTypeFactory%f_BEAM) .or. JR_same(j_pickedUpLayerType, j_pickedUpLayerTypeFactory%f_MINE)) .or. JR_same(j_pickedUpLayerType, j_pickedUpLayerTypeFactory%f_PROJECTILE)) .or. JR_same(j_pickedUpLayerType, j_pickedUpLayerTypeFactory%f_ENHANCEMENT))) then
                call this%jm_add_1(CountedPickedUpLayerInterfaceFactoryInterface_jcast(j_pickedUpLayerInterfaceFactoryInterface))
            else if ((j_pickedUpLayerInterfaceFactoryInterface%jm_getPickedUpLayerType_0() == j_pickedUpLayerTypeFactory%f_PART)) then
                j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(this%f_ownerLayerInterface)
                call j_collidableDestroyableDamageableLayer%jm_addPart_1(j_pickedUpLayerInterfaceFactoryInterface)
            else if (JR_same(j_pickedUpLayerType, j_pickedUpLayerTypeFactory%f_NONE)) then
                continue
            else
                j_pickupProcessorInterface => PickupProcessorInterface_jcast(j_pickedUpLayerInterfaceFactoryInterface)
                call this%jm_doPickup_1(j_pickupProcessorInterface)
            end if
            call j_pickupLayerInterface%jm_setPickedUp_0()
  end subroutine

  recursive subroutine PickupBehavior_jm_add_1(this, j_countedPickedUpLayerInterfaceFactoryInterface)
    class(PickupBehavior), target :: this
    class(CountedPickedUpLayerInterfaceFactoryInterface), target, optional :: j_countedPickedUpLayerInterfaceFactoryInterface
    integer(4) :: j_partIndex
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_partIndex = (j_countedPickedUpLayerInterfaceFactoryInterface%jm_getId_0() + this%f_countedIndex)
        call this%jm_addAt_2(j_countedPickedUpLayerInterfaceFactoryInterface, j_partIndex)
  end subroutine

  recursive subroutine PickupBehavior_jm_addAt_2(this, j_countedPickedUpLayerInterfaceFactoryInterface, j_partIndex)
    class(PickupBehavior), target :: this
    class(CountedPickedUpLayerInterfaceFactoryInterface), target, optional :: j_countedPickedUpLayerInterfaceFactoryInterface
    integer(4), value :: j_partIndex
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    class(CountedLayerInterfaceFactoryPart), pointer :: j_countedLayerInterfaceFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(this%f_ownerLayerInterface)
        j_countedLayerInterfaceFactory => CountedLayerInterfaceFactoryPart_jcast(j_collidableDestroyableDamageableLayer%jm_getPartInterfaceArray_0()((j_partIndex) + 1))
        call j_countedLayerInterfaceFactory%jm_setTotal_1((j_countedLayerInterfaceFactory%jm_getTotal_0() + j_countedPickedUpLayerInterfaceFactoryInterface%jm_getTotal_0()))
  end subroutine

  recursive function PickupBehavior_jm_getFirstAvailableCountedLayerInterfaceFactory_1(this, j_pickedUpLayerTypeArray) result(jresult)
    class(PickupBehavior), target :: this
    type(JRef) :: j_pickedUpLayerTypeArray(:)
    class(CountedLayerInterfaceFactoryPart), pointer :: jresult
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    type(JRef), allocatable :: j_partInterfaceArray(:)
    integer(4) :: j_size
    class(CountedLayerInterfaceFactoryPart), pointer :: j_nextCountedLayerInterfaceFactory
    class(CountedPickedUpLayerInterfaceFactory), pointer :: j_countedPickedUpLayerInterfaceFactory
    integer(4) :: j_index2
    integer(4) :: j_index
    integer(4) :: jtemp4
        j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(this%f_ownerLayerInterface)
        j_partInterfaceArray = j_collidableDestroyableDamageableLayer%jm_getPartInterfaceArray_0()
        j_size = size(j_partInterfaceArray, 1)
        continue
        continue
        j_index = this%f_countedIndex
        do while ((j_index < j_size))
            j_nextCountedLayerInterfaceFactory => CountedLayerInterfaceFactoryPart_jcast(j_collidableDestroyableDamageableLayer%jm_getPartInterfaceArray_0()((j_index) + 1))
            j_countedPickedUpLayerInterfaceFactory => j_nextCountedLayerInterfaceFactory%jm_getCountedPickedUpLayerInterfaceFactory_0()
            j_index2 = j_index2 - 1
            jtemp4 = j_index2
            j_index2 = size(j_pickedUpLayerTypeArray, 1)
            do while ((jtemp4 >= 0))
                if (JR_same(j_countedPickedUpLayerInterfaceFactory%jm_getPickedUpLayerType_0(), PickedUpLayerType_jcast(j_pickedUpLayerTypeArray((j_index2) + 1)%v))) then
                    if ((j_nextCountedLayerInterfaceFactory%jm_getTotal_0() > 0)) then
                        jresult => j_nextCountedLayerInterfaceFactory
                        return
                    end if
                end if
            end do
            j_index = j_index + 1
        end do
        jresult => CountedLayerInterfaceFactoryPart_jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY()
        return
  end function

  recursive function PickupBehavior_jm_getCountedLayerInterfaceFactoryForSlot_1(this, j_slotIndex) result(jresult)
    class(PickupBehavior), target :: this
    integer(4), value :: j_slotIndex
    class(CountedLayerInterfaceFactoryPart), pointer :: jresult
    integer(4) :: j_currentSlot
    class(CollidableDestroyableDamageableLayer), pointer :: j_collidableDestroyableDamageableLayer
    type(JRef), allocatable :: j_partInterfaceArray(:)
    integer(4) :: j_size
    class(CountedLayerInterfaceFactoryPart), pointer :: j_nextCountedLayerInterfaceFactory
    integer(4) :: j_index
        j_currentSlot = 0
        j_collidableDestroyableDamageableLayer => CollidableDestroyableDamageableLayer_jcast(this%f_ownerLayerInterface)
        j_partInterfaceArray = j_collidableDestroyableDamageableLayer%jm_getPartInterfaceArray_0()
        j_size = size(j_partInterfaceArray, 1)
        continue
        j_index = this%f_countedIndex
        do while ((j_index < j_size))
            j_nextCountedLayerInterfaceFactory => CountedLayerInterfaceFactoryPart_jcast(j_collidableDestroyableDamageableLayer%jm_getPartInterfaceArray_0()((j_index) + 1))
            if ((j_nextCountedLayerInterfaceFactory%jm_getTotal_0() > 0)) then
                if ((j_currentSlot == j_slotIndex)) then
                    jresult => j_nextCountedLayerInterfaceFactory
                    return
                else
                    j_currentSlot = j_currentSlot + 1
                end if
            end if
            j_index = j_index + 1
        end do
        jresult => CountedLayerInterfaceFactoryPart_jstatic_NULL_COUNTED_LAYER_INTERFACE_FACTORY()
        return
  end function

  recursive function PickupBehavior_jm_getCountedIndex_0(this) result(jresult)
    class(PickupBehavior), target :: this
    integer(4) :: jresult
        jresult = this%f_countedIndex
        return
  end function
end module PickupBehavior_m

