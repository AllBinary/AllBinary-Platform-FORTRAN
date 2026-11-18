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
module AllBinaryLayerManager_m
  use JR_m
  use LayerManagerEvent_m
  use LayerManagerEventHandler_m
  use ABLayerManager_m
  use LayerProcessor_m
  use LayerManagerNoDebug_m
  use AllBinaryLayer_m
  implicit none

  type, extends(ABLayerManager) :: AllBinaryLayerManager
    class(LayerManagerEventHandler), pointer :: f_layerManagerEventHandler => null()
    class(LayerManagerEvent), pointer :: f_createLayerManagerEvent => null()
    class(LayerManagerEvent), pointer :: f_deleteLayerManagerEvent => null()
    type(JRef), allocatable :: f_basicLayerProcessorArray(:)
  contains
    procedure :: jm_getLayerProcessorArray_0 => AllBinaryLayerManager_jm_getLayerProcessorArray_0
    procedure :: jm_setLayerProcessorArray_1 => AllBinaryLayerManager_jm_setLayerProcessorArray_1
    procedure :: jm_log_0 => AllBinaryLayerManager_jm_log_0
    procedure :: jm_append_1 => AllBinaryLayerManager_jm_append_1
    procedure :: jm_appendAt_2 => AllBinaryLayerManager_jm_appendAt_2
    procedure :: jm_appendProcessors_1 => AllBinaryLayerManager_jm_appendProcessors_1
    procedure :: jm_remove_1 => AllBinaryLayerManager_jm_remove_1
    procedure :: jm_process_0 => AllBinaryLayerManager_jm_process_0
    procedure :: jm_cleanup_0 => AllBinaryLayerManager_jm_cleanup_0
  end type


contains

  function AllBinaryLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryLayerManager)
      jresult => object
    end select
  end function

  recursive function AllBinaryLayerManager_jnew_0() result(this)
    class(AllBinaryLayerManager), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryLayerManager'
    this%f_layerManagerEventHandler => LayerManagerEventHandler_jm_getInstance_0()
    this%f_createLayerManagerEvent => LayerManagerEvent_jnew_2(this, this%f_layerManagerEventHandler%f_CREATE)
    this%f_deleteLayerManagerEvent => LayerManagerEvent_jnew_2(this, this%f_layerManagerEventHandler%f_DELETE)
    this%f_basicLayerProcessorArray = JR_newRefArray(0)
        continue ! super()
  end function

  recursive function AllBinaryLayerManager_jm_getLayerProcessorArray_0(this) result(jresult)
    class(AllBinaryLayerManager), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_basicLayerProcessorArray
        return
  end function

  recursive subroutine AllBinaryLayerManager_jm_setLayerProcessorArray_1(this, j_layerProcessorArray)
    class(AllBinaryLayerManager), target :: this
    type(JRef) :: j_layerProcessorArray(:)
        this%f_basicLayerProcessorArray = j_layerProcessorArray
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_log_0(this)
    class(AllBinaryLayerManager), target :: this
    integer(4) :: j_size
    class(LayerProcessor), pointer :: j_layerProcessorInterface
    integer(4) :: j_index
        j_size = size(this%f_basicLayerProcessorArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_layerProcessorInterface => LayerProcessor_jcast(this%f_basicLayerProcessorArray((j_index) + 1)%v)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_append_1(this, j_layerInterface)
    class(AllBinaryLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%jm_contains_1(j_layerInterface))) then
            call this%jm_appendProcessors_1(j_layerInterface)
            call this%ABLayerManager%jm_append_1(j_layerInterface)
        end if
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_appendAt_2(this, j_layerInterface, j_index)
    class(AllBinaryLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%jm_contains_1(j_layerInterface))) then
            call this%jm_appendProcessors_1(j_layerInterface)
            call this%ABLayerManager%jm_appendAt_2(j_layerInterface, j_index)
        end if
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_appendProcessors_1(this, j_layerInterface)
    class(AllBinaryLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(LayerProcessor), pointer :: j_layerProcessorInterface
    integer(4) :: j_index
    class(LayerManager), pointer :: jtemp1
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_createLayerManagerEvent%jm_setLayerInterface_1(j_layerInterface)
        call this%f_layerManagerEventHandler%jm_fireEvent_1(this%f_createLayerManagerEvent)
        continue
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_basicLayerProcessorArray, 1)
        do while ((jtemp2 >= 0))
            j_layerProcessorInterface => LayerProcessor_jcast(this%f_basicLayerProcessorArray((j_index) + 1)%v)
            if (j_layerProcessorInterface%jm_isProcessorLayer_1(j_layerInterface)) then
                jtemp1 => j_layerProcessorInterface%jm_getLayerManager_0()
                call jtemp1%jm_append_1(j_layerInterface)
            end if
        end do
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_remove_1(this, j_layerInterface)
    class(AllBinaryLayerManager), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(LayerProcessor), pointer :: j_layerProcessorInterface
    integer(4) :: j_index
    class(LayerManager), pointer :: jtemp3
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_deleteLayerManagerEvent%jm_setLayerInterface_1(j_layerInterface)
        call this%f_layerManagerEventHandler%jm_fireDeleteEvent_1(this%f_deleteLayerManagerEvent)
        continue
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = size(this%f_basicLayerProcessorArray, 1)
        do while ((jtemp4 >= 0))
            j_layerProcessorInterface => LayerProcessor_jcast(this%f_basicLayerProcessorArray((j_index) + 1)%v)
            jtemp3 => j_layerProcessorInterface%jm_getLayerManager_0()
            call jtemp3%jm_remove_1(j_layerInterface)
        end do
        jdiscardRef => this%ABLayerManager%jm_remove_1(j_layerInterface)
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_process_0(this)
    class(AllBinaryLayerManager), target :: this
    class(LayerProcessor), pointer :: j_layerProcessorInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_size = size(this%f_basicLayerProcessorArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_layerProcessorInterface => LayerProcessor_jcast(this%f_basicLayerProcessorArray((j_index) + 1)%v)
            call j_layerProcessorInterface%jm_process_1(this)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine AllBinaryLayerManager_jm_cleanup_0(this)
    class(AllBinaryLayerManager), target :: this
    class(LayerProcessor), pointer :: j_layerProcessorInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(LayerManager), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_size = size(this%f_basicLayerProcessorArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_layerProcessorInterface => LayerProcessor_jcast(this%f_basicLayerProcessorArray((j_index) + 1)%v)
            jtemp5 => j_layerProcessorInterface%jm_getLayerManager_0()
            call jtemp5%jm_cleanup_0()
            j_index = j_index + 1
        end do
        call this%ABLayerManager%jm_cleanup_0()
  end subroutine
end module AllBinaryLayerManager_m

function AllBinaryLayerManager_jnew_0_jext() result(this)
  use AllBinaryLayerManager_m, only: JObject, AllBinaryLayerManager_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryLayerManager_jnew_0()
end function

