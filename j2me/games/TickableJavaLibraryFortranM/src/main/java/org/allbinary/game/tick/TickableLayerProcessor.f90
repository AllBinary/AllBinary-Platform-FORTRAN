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
! package org.allbinary.game.tick
module TickableLayerProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use TickableLayerManager_m
  use TickableInterface_m
  implicit none

  type, extends(LayerProcessor) :: TickableLayerProcessor
  contains
    procedure :: jm_processAt_3 => TickableLayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => TickableLayerProcessor_jm_isProcessorLayer_1
  end type


contains

  function TickableLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TickableLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TickableLayerProcessor)
      jresult => object
    end select
  end function

  recursive function TickableLayerProcessor_jnew_0() result(this)
    class(TickableLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'TickableLayerProcessor'
        continue ! super()
  end function

  recursive subroutine TickableLayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(TickableLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(TickableInterface), pointer :: j_tickableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_tickableInterface => TickableInterface_jcast(j_layerInterface)
        call j_tickableInterface%jm_processTick_1(j_allBinaryLayerManager)
  end subroutine

  recursive function TickableLayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(TickableLayerProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        if (j_layerInterface%jm_implmentsTickableInterface_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module TickableLayerProcessor_m

function TickableLayerProcessor_jnew_0_jext() result(this)
  use TickableLayerProcessor_m, only: JObject, TickableLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TickableLayerProcessor_jnew_0()
end function

