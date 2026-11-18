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
module HealLayerCircularStaticPool_m
  use JR_m
  use HealthInterface_m
  use HealthInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerCircularPool_m
  use AllBinaryLayerFactoryInterface_m
  use HealLayer_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: HealLayerCircularStaticPool
  contains
    procedure :: jm_visit_1 => HealLayerCircularStaticPool_jm_visit_1
  end type


contains

  function HealLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealLayerCircularStaticPool)
      jresult => object
    end select
  end function

  recursive function HealLayerCircularStaticPool_jnew_2(j_allbinaryLayerFactoryInterface, j_total) result(this)
    class(AllBinaryLayerFactoryInterface), target, optional :: j_allbinaryLayerFactoryInterface
    integer(4), value :: j_total
    class(HealLayerCircularStaticPool), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HealLayerCircularStaticPool'
        call this%AllBinaryLayerCircularPool%jm_initAllBinaryLayerCircularPool_2(j_allbinaryLayerFactoryInterface, j_total)
  end function

  recursive subroutine HealLayerCircularStaticPool_jm_visit_1(this, j_sourceLayerInterface)
    class(HealLayerCircularStaticPool), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(HealLayer), pointer :: j_healLayer
    class(HealthInterfaceCompositeInterface), pointer :: j_healthInterfaceCompositeInterface
    class(HealthInterface), pointer :: j_healthInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_healLayer => HealLayer_jcast(this%jm_getNextInstance_0())
        j_healthInterfaceCompositeInterface => HealthInterfaceCompositeInterface_jcast(j_sourceLayerInterface)
        j_healthInterface => j_healthInterfaceCompositeInterface%jm_getHealthInterface_0()
        call j_healLayer%jm_visit_1(j_healthInterface)
  end subroutine
end module HealLayerCircularStaticPool_m

