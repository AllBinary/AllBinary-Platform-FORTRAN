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
! package org.allbinary.layer.event
module LayerManagerEventListener_m
  use JR_m
  use AllBinaryEventObject_m
  use LayerManagerEventListenerInterface_m
  use LayerManagerEvent_m
  implicit none

  type, extends(LayerManagerEventListenerInterface) :: LayerManagerEventListener
  contains
    procedure :: jm_onEvent_1 => LayerManagerEventListener_jm_onEvent_1
    procedure :: jm_onCreateLayerManagerEvent_1 => LayerManagerEventListener_jm_onCreateLayerManagerEvent_1
    procedure :: jm_onDeleteLayerManagerEvent_1 => LayerManagerEventListener_jm_onDeleteLayerManagerEvent_1
  end type


contains

  function LayerManagerEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerEventListener)
      jresult => object
    end select
  end function

  function LayerManagerEventListener_jnew_0() result(this)
    class(LayerManagerEventListener), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerEventListener'
  end function

  recursive subroutine LayerManagerEventListener_jm_onEvent_1(this, j_eventObject)
    class(LayerManagerEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    continue
  end subroutine

  recursive subroutine LayerManagerEventListener_jm_onCreateLayerManagerEvent_1(this, j_layerManagerEvent)
    class(LayerManagerEventListener), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    continue
  end subroutine

  recursive subroutine LayerManagerEventListener_jm_onDeleteLayerManagerEvent_1(this, j_layerManagerEvent)
    class(LayerManagerEventListener), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    continue
  end subroutine
end module LayerManagerEventListener_m

