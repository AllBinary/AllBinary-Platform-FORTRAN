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
module LifeLayerCircularStaticPool_m
  use JR_m
  use Life_m
  use LifeInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerCircularPool_m
  use AllBinaryLayerFactoryInterface_m
  use LifeLayer_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: LifeLayerCircularStaticPool
  contains
    procedure :: jm_visit_1 => LifeLayerCircularStaticPool_jm_visit_1
  end type


contains

  function LifeLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeLayerCircularStaticPool)
      jresult => object
    end select
  end function

  recursive function LifeLayerCircularStaticPool_jnew_2(j_allbinaryLayerFactoryInterface, j_total) result(this)
    class(AllBinaryLayerFactoryInterface), target, optional :: j_allbinaryLayerFactoryInterface
    integer(4), value :: j_total
    class(LifeLayerCircularStaticPool), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LifeLayerCircularStaticPool'
        call this%AllBinaryLayerCircularPool%jm_initAllBinaryLayerCircularPool_2(j_allbinaryLayerFactoryInterface, j_total)
  end function

  recursive subroutine LifeLayerCircularStaticPool_jm_visit_1(this, j_sourceLayerInterface)
    class(LifeLayerCircularStaticPool), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(LifeLayer), pointer :: j_lifeLayer
    class(LifeInterfaceCompositeInterface), pointer :: j_lifeInterfaceCompositeInterface
    class(Life), pointer :: j_lifeInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_lifeLayer => LifeLayer_jcast(this%jm_getNextInstance_0())
        j_lifeInterfaceCompositeInterface => LifeInterfaceCompositeInterface_jcast(j_sourceLayerInterface)
        j_lifeInterface => j_lifeInterfaceCompositeInterface%jm_getLifeInterface_0()
        call j_lifeLayer%jm_visit_1(j_lifeInterface)
  end subroutine
end module LifeLayerCircularStaticPool_m

