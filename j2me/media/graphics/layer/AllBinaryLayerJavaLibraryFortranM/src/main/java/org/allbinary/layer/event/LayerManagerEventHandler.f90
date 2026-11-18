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
module LayerManagerEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use LayerManagerEventListener_m
  use LayerManagerEvent_m
  use LayerManagerEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: LayerManagerEventHandler
    class(BasicArrayList), pointer :: f_list => null()
    character(len=:), allocatable :: f_CREATE
    character(len=:), allocatable :: f_DELETE
  contains
    procedure :: jm_addListener_1 => LayerManagerEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => LayerManagerEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => LayerManagerEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => LayerManagerEventHandler_jm_fireEvent_1
    procedure :: jm_fireDeleteEvent_1 => LayerManagerEventHandler_jm_fireDeleteEvent_1
    procedure :: jm_process_2 => LayerManagerEventHandler_jm_process_2
  end type

  class(LayerManagerEventHandler), pointer, save :: LayerManagerEventHandler_jcell_instance => null()
  logical, save :: LayerManagerEventHandler_jset_instance = .false.

contains

  function LayerManagerEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerEventHandler)
      jresult => object
    end select
  end function

  function LayerManagerEventHandler_jstatic_instance() result(jresult)
    class(LayerManagerEventHandler), pointer :: jresult
    if (.not. LayerManagerEventHandler_jset_instance) then
      LayerManagerEventHandler_jset_instance = .true.
      LayerManagerEventHandler_jcell_instance => LayerManagerEventHandler_jnew_0()
    end if
    jresult => LayerManagerEventHandler_jcell_instance
  end function

  subroutine LayerManagerEventHandler_jsetstatic_instance(jvalue)
    class(LayerManagerEventHandler), target, optional :: jvalue
    LayerManagerEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      LayerManagerEventHandler_jcell_instance => jvalue
    else
      LayerManagerEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function LayerManagerEventHandler_jnew_0() result(this)
    class(LayerManagerEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerEventHandler'
    this%f_CREATE = ''
    this%f_DELETE = ''
    this%f_list => BasicArrayListD_jnew_0()
    this%f_CREATE = 'Create'
    this%f_DELETE = 'Delete'
        continue
  end function

  recursive function LayerManagerEventHandler_jm_getInstance_0() result(jresult)
    class(LayerManagerEventHandler), pointer :: jresult
        jresult => LayerManagerEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine LayerManagerEventHandler_jm_addListener_1(this, j_layerManagerEventListener)
    class(LayerManagerEventHandler), target :: this
    class(LayerManagerEventListener), target, optional :: j_layerManagerEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_layerManagerEventListener))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_layerManagerEventListener)
        end if
  end subroutine

  recursive subroutine LayerManagerEventHandler_jm_removeAllListeners_0(this)
    class(LayerManagerEventHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
        call this%BasicEventHandler%jm_removeAllListeners_0()
  end subroutine

  recursive subroutine LayerManagerEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(LayerManagerEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_remove_1(j_eventListenerInterface)
        call this%BasicEventHandler%jm_removeListener_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine LayerManagerEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(LayerManagerEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(LayerManagerEventListener), pointer :: j_layerManagerEventListener
    integer(4) :: j_index
    class(EventStrings), pointer :: jtemp1
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = this%f_list%jm_size_0()
        do while ((jtemp2 >= 0))
            continue ! try
                j_layerManagerEventListener => LayerManagerEventListener_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_layerManagerEventListener%jm_onCreateLayerManagerEvent_1(LayerManagerEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine LayerManagerEventHandler_jm_fireDeleteEvent_1(this, j_eventObject)
    class(LayerManagerEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(LayerManagerEventListener), pointer :: j_layerManagerEventListener
    integer(4) :: j_index
    class(BasicArrayList), pointer :: j_eventListenerInterfaceList
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    class(LayerManagerEventListenerInterface), pointer :: j_layerManagerEventListenerInterface
    integer(4) :: j_listenerIndex
    class(EventStrings), pointer :: jtemp3
    integer(4) :: jtemp4
    class(EventStrings), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = this%f_list%jm_size_0()
        do while ((jtemp4 >= 0))
            continue ! try
                j_layerManagerEventListener => LayerManagerEventListener_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_layerManagerEventListener%jm_onDeleteLayerManagerEvent_1(LayerManagerEvent_jcast(j_eventObject))
        end do
        j_eventListenerInterfaceList => this%f_eventListenerInterfaceList
        continue
        continue
        j_listenerIndex = 0
        do while ((j_listenerIndex < j_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(j_eventListenerInterfaceList%f_objectArray((j_listenerIndex) + 1)%v)
                j_layerManagerEventListenerInterface => LayerManagerEventListenerInterface_jcast(j_eventListenerInterface)
                call j_layerManagerEventListenerInterface%jm_onDeleteLayerManagerEvent_1(LayerManagerEvent_jcast(j_eventObject))
            j_listenerIndex = j_listenerIndex + 1
        end do
  end subroutine

  recursive subroutine LayerManagerEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(LayerManagerEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(LayerManagerEventListenerInterface), pointer :: j_layerManagerEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerManagerEventListenerInterface => LayerManagerEventListenerInterface_jcast(j_eventListenerInterface)
        call j_layerManagerEventListenerInterface%jm_onCreateLayerManagerEvent_1(LayerManagerEvent_jcast(j_eventObject))
  end subroutine
end module LayerManagerEventHandler_m

function LayerManagerEventHandler_jnew_0_jext() result(this)
  use LayerManagerEventHandler_m, only: JObject, LayerManagerEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LayerManagerEventHandler_jnew_0()
end function

