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
! package org.allbinary.game.input
module GameInputLayerProcessor_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use GameInputLayerManager_m
  use GameInputInterface_m
  implicit none

  type, extends(LayerProcessor) :: GameInputLayerProcessor
  contains
    procedure :: jm_processAt_3 => GameInputLayerProcessor_jm_processAt_3
    procedure :: jm_isProcessorLayer_1 => GameInputLayerProcessor_jm_isProcessorLayer_1
  end type


contains

  function GameInputLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputLayerProcessor)
      jresult => object
    end select
  end function

  recursive function GameInputLayerProcessor_jnew_0() result(this)
    class(GameInputLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'GameInputLayerProcessor'
        continue ! super()
  end function

  recursive subroutine GameInputLayerProcessor_jm_processAt_3(this, j_allBinaryLayerManager, j_layerInterface, j_index)
    class(GameInputLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(GameInputInterface), pointer :: j_gameInputInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameInputInterface => GameInputInterface_jcast(j_layerInterface)
        call j_gameInputInterface%jm_processInput_1(j_allBinaryLayerManager)
  end subroutine

  recursive function GameInputLayerProcessor_jm_isProcessorLayer_1(this, j_layerInterface) result(jresult)
    class(GameInputLayerProcessor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical :: jresult
        if (j_layerInterface%jm_implmentsGameInputInterface_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module GameInputLayerProcessor_m

function GameInputLayerProcessor_jnew_0_jext() result(this)
  use GameInputLayerProcessor_m, only: JObject, GameInputLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameInputLayerProcessor_jnew_0()
end function

