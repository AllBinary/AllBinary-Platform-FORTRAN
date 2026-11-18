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
! package org.allbinary.game.ag.layer.pickup.points
module Points20kPickedUpLayerInterfaceFactory_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use GameConfigurationUtil_m
  use CountedPickedUpLayerInterfaceFactory_m
  use IconLayerFactory_m
  use PickedUpLayerInterfaceFactory_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerTypeFactory_m
  use PickupProcessorInterface_m
  use AllBinaryLayer_m
  use PointsLayerCircularStaticPool_m
  use PointsLayerFactory_m
  use PointsResources_m
  implicit none

  type, extends(PickedUpLayerInterfaceFactory) :: Points20kPickedUpLayerInterfaceFactory
    class(PointsLayerCircularStaticPool), pointer :: f_pool => null()
  contains
    procedure :: jm_getTotal_0 => Points20kPickedUpLayerInterfaceFactory_jm_getTotal_0
    procedure :: jm_process_1 => Points20kPickedUpLayerInterfaceFactory_jm_process_1
  end type

  ! Points20kPickedUpLayerInterfaceFactory used as a PickupProcessorInterface
  type, extends(PickupProcessorInterface) :: Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface
    class(Points20kPickedUpLayerInterfaceFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_process_1 => Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1
  end type

  class(PickedUpLayerInterfaceFactoryInterface), pointer, save :: Points20kPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
  logical, save :: Points20kPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .false.

contains

  function Points20kPickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Points20kPickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Points20kPickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  function Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jnew(object) result(jresult)
    class(Points20kPickedUpLayerInterfaceFactory), target :: object
    class(Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'Points20kPickedUpLayerInterfaceFactory'
    jresult%jtarget => object
  end function

  recursive subroutine Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface_jm_process_1(this, j_sourceLayerInterface)
    class(Points20kPickedUpLayerInterfaceFactory_jas_PickupProcessorInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    call this%jtarget%jm_process_1(j_sourceLayerInterface)
  end subroutine

  function Points20kPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    if (.not. Points20kPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface) then
      Points20kPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
      Points20kPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    end if
    jresult => Points20kPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface
  end function

  subroutine Points20kPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(jvalue)
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: jvalue
    Points20kPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
    if (present(jvalue)) then
      Points20kPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => jvalue
    else
      Points20kPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
    end if
  end subroutine

  recursive function Points20kPickedUpLayerInterfaceFactory_jnew_0() result(this)
    class(Points20kPickedUpLayerInterfaceFactory), pointer :: this
    class(PickedUpLayerTypeFactory), pointer :: jtemp2
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp3
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp4
    class(PointsResources), pointer :: jtemp5
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp6
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp7
    class(PointsResources), pointer :: jtemp8
    class(GameConfigurationUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'Points20kPickedUpLayerInterfaceFactory'
    jtemp1 => GameConfigurationUtil_jm_getInstance_0()
    this%f_pool => PointsLayerCircularStaticPool_jnew_2(PointsLayerFactory_jnew_1((jtemp1%jm_getCompetitionValue_0() * 20000)), 1)
        jtemp5 => PointsResources_jm_getInstance_0()
        jtemp4 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp8 => PointsResources_jm_getInstance_0()
        jtemp3 => jtemp4%jm_get_1(jtemp5%f_RESOURCE_2)
        jtemp7 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp2 => PickedUpLayerTypeFactory_jm_getInstance_0()
        jtemp6 => jtemp7%jm_get_1(jtemp8%f_RESOURCE_2)
        continue ! super()
  end function

  recursive subroutine Points20kPickedUpLayerInterfaceFactory_jm_init_0()
        call Points20kPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(Points20kPickedUpLayerInterfaceFactory_jnew_0())
  end subroutine

  recursive function Points20kPickedUpLayerInterfaceFactory_jm_getTotal_0(this) result(jresult)
    class(Points20kPickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function

  recursive function Points20kPickedUpLayerInterfaceFactory_jm_getInstance_0() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => Points20kPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface()
        return
  end function

  recursive subroutine Points20kPickedUpLayerInterfaceFactory_jm_process_1(this, j_sourceLayerInterface)
    class(Points20kPickedUpLayerInterfaceFactory), target :: this
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
end module Points20kPickedUpLayerInterfaceFactory_m

function Points20kPickedUpLayerInterfaceFactory_jnew_0_jext() result(this)
  use Points20kPickedUpLayerInterfaceFactory_m, only: JObject, Points20kPickedUpLayerInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => Points20kPickedUpLayerInterfaceFactory_jnew_0()
end function

