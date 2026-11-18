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
module OptimizedTickableLayerProcessor_m
  use JR_m
  use AllBinaryGameLayer_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use OptimizedTickableLayerManager_m
  implicit none

  type, extends(LayerProcessor) :: OptimizedTickableLayerProcessor
  contains
    procedure :: jm_processAt_3 => OptimizedTickableLayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => OptimizedTickableLayerProcessor_jm_isProcessorLayer_1
  end type


contains

  function OptimizedTickableLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OptimizedTickableLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OptimizedTickableLayerProcessor)
      jresult => object
    end select
  end function

  recursive function OptimizedTickableLayerProcessor_jnew_0() result(this)
    class(OptimizedTickableLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'OptimizedTickableLayerProcessor'
        continue ! super()
  end function

  recursive subroutine OptimizedTickableLayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(OptimizedTickableLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(AllBinaryGameLayer), pointer :: j_tickableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_tickableInterface => AllBinaryGameLayer_jcast(j_layerInterface)
        call j_tickableInterface%jm_processTick_1(j_allBinaryLayerManager)
  end subroutine

  recursive function OptimizedTickableLayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(OptimizedTickableLayerProcessor), target :: this
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
end module OptimizedTickableLayerProcessor_m

function OptimizedTickableLayerProcessor_jnew_0_jext() result(this)
  use OptimizedTickableLayerProcessor_m, only: JObject, OptimizedTickableLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OptimizedTickableLayerProcessor_jnew_0()
end function

