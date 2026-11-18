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
module PointsLayerCircularStaticPool_m
  use JR_m
  use ScoreableInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerCircularPool_m
  use AllBinaryLayerFactoryInterface_m
  use PointsLayer_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: PointsLayerCircularStaticPool
  contains
    procedure :: jm_visit_1 => PointsLayerCircularStaticPool_jm_visit_1
  end type


contains

  function PointsLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointsLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointsLayerCircularStaticPool)
      jresult => object
    end select
  end function

  recursive function PointsLayerCircularStaticPool_jnew_2(j_allbinaryLayerFactoryInterface, j_total) result(this)
    class(AllBinaryLayerFactoryInterface), target, optional :: j_allbinaryLayerFactoryInterface
    integer(4), value :: j_total
    class(PointsLayerCircularStaticPool), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PointsLayerCircularStaticPool'
        call this%AllBinaryLayerCircularPool%jm_initAllBinaryLayerCircularPool_2(j_allbinaryLayerFactoryInterface, j_total)
  end function

  recursive subroutine PointsLayerCircularStaticPool_jm_visit_1(this, j_sourceLayerInterface)
    class(PointsLayerCircularStaticPool), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(PointsLayer), pointer :: j_pointsLayer
    class(ScoreableInterface), pointer :: j_scoreableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_pointsLayer => PointsLayer_jcast(this%jm_getNextInstance_0())
        j_scoreableInterface => ScoreableInterface_jcast(j_sourceLayerInterface)
        call j_pointsLayer%jm_visit_1(j_scoreableInterface)
  end subroutine
end module PointsLayerCircularStaticPool_m

