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
module LayerManagerEventListenerInterface_m
  use JR_m
  use EventListenerInterface_m
  use LayerManagerEvent_m
  implicit none

  type, extends(EventListenerInterface) :: LayerManagerEventListenerInterface
  contains
    procedure :: jm_onCreateLayerManagerEvent_1 => LayerManagerEventListenerInterface_jm_onCreateLayerManagerEvent_1
    procedure :: jm_onDeleteLayerManagerEvent_1 => LayerManagerEventListenerInterface_jm_onDeleteLayerManagerEvent_1
  end type


contains

  function LayerManagerEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerEventListenerInterface)
      jresult => object
    end select
  end function

  function LayerManagerEventListenerInterface_jnew_0() result(this)
    class(LayerManagerEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerEventListenerInterface'
  end function

  recursive subroutine LayerManagerEventListenerInterface_jm_onCreateLayerManagerEvent_1(this, j_layerManagerEvent)
    class(LayerManagerEventListenerInterface), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    error stop 'AbstractMethodError: LayerManagerEventListenerInterface.onCreateLayerManagerEvent'
  end subroutine

  recursive subroutine LayerManagerEventListenerInterface_jm_onDeleteLayerManagerEvent_1(this, j_layerManagerEvent)
    class(LayerManagerEventListenerInterface), target :: this
    class(LayerManagerEvent), target, optional :: j_layerManagerEvent
    error stop 'AbstractMethodError: LayerManagerEventListenerInterface.onDeleteLayerManagerEvent'
  end subroutine
end module LayerManagerEventListenerInterface_m

