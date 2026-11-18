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
! package org.allbinary.layer
module SingleLayerLayerProcessor_m
  use JR_m
  use LayerProcessor_m
  use SingleLayerLayerManager_m
  use ABLayerManager_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(LayerProcessor) :: SingleLayerLayerProcessor
  contains
    procedure :: jm_process_1 => SingleLayerLayerProcessor_jm_process_1
  end type


contains

  function SingleLayerLayerProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingleLayerLayerProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingleLayerLayerProcessor)
      jresult => object
    end select
  end function

  recursive function SingleLayerLayerProcessor_jnew_0() result(this)
    class(SingleLayerLayerProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SingleLayerLayerProcessor'
        continue ! super()
  end function

  recursive subroutine SingleLayerLayerProcessor_jm_process_1(this, j_allBinaryLayerManager)
    class(SingleLayerLayerProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(ABLayerManager), pointer :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerManager => this%jm_getLayerManager_0()
        call this%jm_processAt_3(j_allBinaryLayerManager, AllBinaryLayer_jcast(j_layerManager%jm_getLayerAt_1(0)), 0)
  end subroutine
end module SingleLayerLayerProcessor_m

function SingleLayerLayerProcessor_jnew_0_jext() result(this)
  use SingleLayerLayerProcessor_m, only: JObject, SingleLayerLayerProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SingleLayerLayerProcessor_jnew_0()
end function

