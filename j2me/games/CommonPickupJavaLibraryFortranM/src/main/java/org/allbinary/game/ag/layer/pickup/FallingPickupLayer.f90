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
! package org.allbinary.game.ag.layer.pickup
module FallingPickupLayer_m
  use JR_m
  use NullAnimationFactory_m
  use CountedPickedUpLayerInterfaceFactory_m
  use PickupLayer_m
  use RemoteInfo_m
  use TickableInterface_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayerManager_m
  use ViewPosition_m
  implicit none

  type, extends(PickupLayer) :: FallingPickupLayer
  contains
    procedure :: jm_processTick_1 => FallingPickupLayer_jm_processTick_1
    procedure :: jm_implmentsTickableInterface_0 => FallingPickupLayer_jm_implmentsTickableInterface_0
  end type

  ! FallingPickupLayer used as a TickableInterface
  type, extends(TickableInterface) :: FallingPickupLayer_jas_TickableInterface
    class(FallingPickupLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_processTick_1 => FallingPickupLayer_jas_TickableInterface_jm_processTick_1
  end type

  character(len=:), allocatable, save :: FallingPickupLayer_jcell_NAME
  logical, save :: FallingPickupLayer_jset_NAME = .false.

contains

  function FallingPickupLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FallingPickupLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FallingPickupLayer)
      jresult => object
    end select
  end function

  function FallingPickupLayer_jas_TickableInterface_jnew(object) result(jresult)
    class(FallingPickupLayer), target :: object
    class(FallingPickupLayer_jas_TickableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'FallingPickupLayer'
    jresult%jtarget => object
  end function

  recursive subroutine FallingPickupLayer_jas_TickableInterface_jm_processTick_1(this, j_allBinaryLayerManager)
    class(FallingPickupLayer_jas_TickableInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    call this%jtarget%jm_processTick_1(j_allBinaryLayerManager)
  end subroutine

  function FallingPickupLayer_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. FallingPickupLayer_jset_NAME) then
      FallingPickupLayer_jset_NAME = .true.
      FallingPickupLayer_jcell_NAME = 'FallingPickupLayer'
    end if
    jresult = FallingPickupLayer_jcell_NAME
  end function

  subroutine FallingPickupLayer_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    FallingPickupLayer_jset_NAME = .true.
    FallingPickupLayer_jcell_NAME = jvalue
  end subroutine

  recursive function FallingPickupLayer_jnew_1(j_remoteInfo) result(this)
    class(RemoteInfo), target, optional :: j_remoteInfo
    class(FallingPickupLayer), pointer :: this
    class(NullAnimationFactory), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'FallingPickupLayer'
        jtemp2 => PointFactory_jm_getInstance_0()
        jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
        continue ! super()
  end function

  recursive subroutine FallingPickupLayer_jm_processTick_1(this, j_allBinaryLayerManager)
    class(FallingPickupLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPosition_3(this%f_x, (this%f_y + 1), this%f_z)
  end subroutine

  recursive function FallingPickupLayer_jm_implmentsTickableInterface_0(this) result(jresult)
    class(FallingPickupLayer), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module FallingPickupLayer_m

