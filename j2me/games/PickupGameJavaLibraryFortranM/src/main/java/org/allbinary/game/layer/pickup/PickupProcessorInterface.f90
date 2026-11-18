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
module PickupProcessorInterface_m
  use JR_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: PickupProcessorInterface
  contains
    procedure :: jm_process_1 => PickupProcessorInterface_jm_process_1
  end type


contains

  function PickupProcessorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PickupProcessorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PickupProcessorInterface)
      jresult => object
    end select
  end function

  function PickupProcessorInterface_jnew_0() result(this)
    class(PickupProcessorInterface), pointer :: this
    allocate(this)
    this%jclass = 'PickupProcessorInterface'
  end function

  recursive subroutine PickupProcessorInterface_jm_process_1(this, j_sourceLayerInterface)
    class(PickupProcessorInterface), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    error stop 'AbstractMethodError: PickupProcessorInterface.process'
  end subroutine
end module PickupProcessorInterface_m

