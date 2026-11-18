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
module LayerManagerLoggingBase_m
  use JR_m
  use AllBinaryLayer_m
  use ABLayerManager_m
  implicit none

  type, extends(JObject) :: LayerManagerLoggingBase
  contains
    procedure :: jm_append_1 => LayerManagerLoggingBase_jm_append_1
    procedure :: jm_appendAt_2 => LayerManagerLoggingBase_jm_appendAt_2
    procedure :: jm_remove_1 => LayerManagerLoggingBase_jm_remove_1
    procedure :: jm_removeResult_3 => LayerManagerLoggingBase_jm_removeResult_3
    procedure :: jm_clear_0 => LayerManagerLoggingBase_jm_clear_0
  end type


contains

  function LayerManagerLoggingBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerLoggingBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerLoggingBase)
      jresult => object
    end select
  end function

  function LayerManagerLoggingBase_jnew_0() result(this)
    class(LayerManagerLoggingBase), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerLoggingBase'
  end function

  recursive subroutine LayerManagerLoggingBase_jm_append_1(this, j_layerInterface)
    class(LayerManagerLoggingBase), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    continue
  end subroutine

  recursive subroutine LayerManagerLoggingBase_jm_appendAt_2(this, j_layerInterface, j_index)
    class(LayerManagerLoggingBase), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    continue
  end subroutine

  recursive subroutine LayerManagerLoggingBase_jm_remove_1(this, j_layerInterface)
    class(LayerManagerLoggingBase), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    continue
  end subroutine

  recursive subroutine LayerManagerLoggingBase_jm_removeResult_3(this, j_layerManager, j_layerInterface, j_result)
    class(LayerManagerLoggingBase), target :: this
    class(ABLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), target, optional :: j_layerInterface
    logical, value :: j_result
    continue
  end subroutine

  recursive subroutine LayerManagerLoggingBase_jm_clear_0(this)
    class(LayerManagerLoggingBase), target :: this
    continue
  end subroutine
end module LayerManagerLoggingBase_m

