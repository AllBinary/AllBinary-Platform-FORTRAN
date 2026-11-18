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
! package org.allbinary.game.ag.layer.pickup.health
module HealPickedUpLayerInterfaceFactory_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use CountedPickedUpLayerInterfaceFactory_m
  use IconLayerFactory_m
  use PickedUpLayerInterfaceFactory_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerTypeFactory_m
  use PickupProcessorInterface_m
  use AllBinaryLayer_m
  use HealLayerCircularStaticPool_m
  use HealLayerFactory_m
  use HealthResources_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactory) :: HealPickedUpLayerInterfaceFactory
    class(HealLayerCircularStaticPool), pointer :: f_pool => null()
  contains
    procedure :: jm_getTotal_0 => HealPickedUpLayerInterfaceFactory_jm_getTotal_0
    procedure :: jm_process_1 => HealPickedUpLayerInterfaceFactory_jm_process_1
  end type

  ! HealPickedUpLayerInterfaceFactory used as a PickupProcessorInterface
  type, extends(PickupProcessorInterface) :: HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface
    class(HealPickedUpLayerInterfaceFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_process_1 => HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1
  end type

  class(PickedUpLayerInterfaceFactoryInterface), pointer, save :: HealPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
  logical, save :: HealPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .false.

contains

  function HealPickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealPickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealPickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  function HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jnew(object) result(jresult)
    class(HealPickedUpLayerInterfaceFactory), target :: object
    class(HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HealPickedUpLayerInterfaceFactory'
    jresult%jtarget => object
  end function

  recursive subroutine HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1(this, j_sourceLayerInterface)
    class(HealPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    call this%jtarget%jm_process_1(j_sourceLayerInterface)
  end subroutine

  function HealPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    if (.not. HealPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface) then
      HealPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
      HealPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    end if
    jresult => HealPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface
  end function

  subroutine HealPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(jvalue)
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: jvalue
    HealPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
    if (present(jvalue)) then
      HealPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => jvalue
    else
      HealPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
    end if
  end subroutine

  recursive function HealPickedUpLayerInterfaceFactory_jnew_0() result(this)
    class(HealPickedUpLayerInterfaceFactory), pointer :: this
    class(PickedUpLayerTypeFactory), pointer :: jtemp1
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp2
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp3
    class(HealthResources), pointer :: jtemp4
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp5
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp6
    class(HealthResources), pointer :: jtemp7
    allocate(this)
    this%jclass = 'HealPickedUpLayerInterfaceFactory'
    this%f_pool => HealLayerCircularStaticPool_jnew_2(HealLayerFactory_jnew_0(), 1)
        jtemp4 => HealthResources_jm_getInstance_0()
        jtemp3 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp7 => HealthResources_jm_getInstance_0()
        jtemp2 => jtemp3%jm_get_1(jtemp4%f_RESOURCE)
        jtemp6 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => PickedUpLayerTypeFactory_jm_getInstance_0()
        jtemp5 => jtemp6%jm_get_1(jtemp7%f_RESOURCE)
        continue ! super()
  end function

  recursive subroutine HealPickedUpLayerInterfaceFactory_jm_init_0()
        call HealPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(HealPickedUpLayerInterfaceFactory_jnew_0())
  end subroutine

  recursive function HealPickedUpLayerInterfaceFactory_jm_getTotal_0(this) result(jresult)
    class(HealPickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function

  recursive function HealPickedUpLayerInterfaceFactory_jm_getInstance_0() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => HealPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface()
        return
  end function

  recursive subroutine HealPickedUpLayerInterfaceFactory_jm_process_1(this, j_sourceLayerInterface)
    class(HealPickedUpLayerInterfaceFactory), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_pool%jm_visit_1(j_sourceLayerInterface)
  end subroutine
end module HealPickedUpLayerInterfaceFactory_m

function HealPickedUpLayerInterfaceFactory_jnew_0_jext() result(this)
  use HealPickedUpLayerInterfaceFactory_m, only: JObject, HealPickedUpLayerInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HealPickedUpLayerInterfaceFactory_jnew_0()
end function

