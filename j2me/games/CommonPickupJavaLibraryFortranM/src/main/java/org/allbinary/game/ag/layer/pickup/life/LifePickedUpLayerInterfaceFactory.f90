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
! package org.allbinary.game.ag.layer.pickup.life
module LifePickedUpLayerInterfaceFactory_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use CountedPickedUpLayerInterfaceFactory_m
  use IconLayerFactory_m
  use PickedUpLayerInterfaceFactory_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerTypeFactory_m
  use PickupProcessorInterface_m
  use AllBinaryLayer_m
  use LifeLayerCircularStaticPool_m
  use LifeLayerFactory_m
  use LifeResources_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactory) :: LifePickedUpLayerInterfaceFactory
    class(LifeLayerCircularStaticPool), pointer :: f_pool => null()
  contains
    procedure :: jm_getTotal_0 => LifePickedUpLayerInterfaceFactory_jm_getTotal_0
    procedure :: jm_process_1 => LifePickedUpLayerInterfaceFactory_jm_process_1
  end type

  ! LifePickedUpLayerInterfaceFactory used as a PickupProcessorInterface
  type, extends(PickupProcessorInterface) :: LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface
    class(LifePickedUpLayerInterfaceFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_process_1 => LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1
  end type

  class(PickedUpLayerInterfaceFactoryInterface), pointer, save :: LifePickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
  logical, save :: LifePickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .false.

contains

  function LifePickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifePickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifePickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  function LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jnew(object) result(jresult)
    class(LifePickedUpLayerInterfaceFactory), target :: object
    class(LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LifePickedUpLayerInterfaceFactory'
    jresult%jtarget => object
  end function

  recursive subroutine LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1(this, j_sourceLayerInterface)
    class(LifePickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    call this%jtarget%jm_process_1(j_sourceLayerInterface)
  end subroutine

  function LifePickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    if (.not. LifePickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface) then
      LifePickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
      LifePickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    end if
    jresult => LifePickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface
  end function

  subroutine LifePickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(jvalue)
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: jvalue
    LifePickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
    if (present(jvalue)) then
      LifePickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => jvalue
    else
      LifePickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
    end if
  end subroutine

  recursive function LifePickedUpLayerInterfaceFactory_jnew_0() result(this)
    class(LifePickedUpLayerInterfaceFactory), pointer :: this
    class(PickedUpLayerTypeFactory), pointer :: jtemp1
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp2
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp3
    class(LifeResources), pointer :: jtemp4
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp5
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp6
    class(LifeResources), pointer :: jtemp7
    allocate(this)
    this%jclass = 'LifePickedUpLayerInterfaceFactory'
    this%f_pool => LifeLayerCircularStaticPool_jnew_2(LifeLayerFactory_jnew_0(), 1)
        jtemp4 => LifeResources_jm_getInstance_0()
        jtemp3 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp7 => LifeResources_jm_getInstance_0()
        jtemp2 => jtemp3%jm_get_1(jtemp4%f_RESOURCE)
        jtemp6 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => PickedUpLayerTypeFactory_jm_getInstance_0()
        jtemp5 => jtemp6%jm_get_1(jtemp7%f_RESOURCE)
        continue ! super()
  end function

  recursive subroutine LifePickedUpLayerInterfaceFactory_jm_init_0()
        call LifePickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(LifePickedUpLayerInterfaceFactory_jnew_0())
  end subroutine

  recursive function LifePickedUpLayerInterfaceFactory_jm_getTotal_0(this) result(jresult)
    class(LifePickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function

  recursive function LifePickedUpLayerInterfaceFactory_jm_getInstance_0() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => LifePickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface()
        return
  end function

  recursive subroutine LifePickedUpLayerInterfaceFactory_jm_process_1(this, j_sourceLayerInterface)
    class(LifePickedUpLayerInterfaceFactory), target :: this
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
end module LifePickedUpLayerInterfaceFactory_m

function LifePickedUpLayerInterfaceFactory_jnew_0_jext() result(this)
  use LifePickedUpLayerInterfaceFactory_m, only: JObject, LifePickedUpLayerInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LifePickedUpLayerInterfaceFactory_jnew_0()
end function

