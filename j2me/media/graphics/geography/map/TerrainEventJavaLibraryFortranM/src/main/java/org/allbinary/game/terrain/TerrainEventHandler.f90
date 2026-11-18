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
! package org.allbinary.game.terrain
module TerrainEventHandler_m
  use JR_m
  use StdUtil_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use TerrainEventListener_m
  use TerrainEvent_m
  use TerrainEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: TerrainEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => TerrainEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => TerrainEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => TerrainEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => TerrainEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => TerrainEventHandler_jm_process_2
  end type

  class(ABHashtable), pointer, save :: TerrainEventHandler_jcell_hashtable => null()
  logical, save :: TerrainEventHandler_jset_hashtable = .false.

contains

  function TerrainEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEventHandler)
      jresult => object
    end select
  end function

  function TerrainEventHandler_jstatic_hashtable() result(jresult)
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp1
    if (.not. TerrainEventHandler_jset_hashtable) then
      TerrainEventHandler_jset_hashtable = .true.
      jtemp1 => StdUtil_jm_getInstance_0()
    TerrainEventHandler_jcell_hashtable => jtemp1%f_NULL_TABLE
    end if
    jresult => TerrainEventHandler_jcell_hashtable
  end function

  subroutine TerrainEventHandler_jsetstatic_hashtable(jvalue)
    class(ABHashtable), target, optional :: jvalue
    TerrainEventHandler_jset_hashtable = .true.
    if (present(jvalue)) then
      TerrainEventHandler_jcell_hashtable => jvalue
    else
      TerrainEventHandler_jcell_hashtable => null()
    end if
  end subroutine

  recursive function TerrainEventHandler_jnew_0() result(this)
    class(TerrainEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'TerrainEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive subroutine TerrainEventHandler_jm_init_0()
    class(StdUtil), pointer :: jtemp2
        jtemp2 => StdUtil_jm_getInstance_0()
        call TerrainEventHandler_jsetstatic_hashtable(jtemp2%jm_createHashtable_0())
  end subroutine

  recursive function TerrainEventHandler_jm_getInstance_1(j_anyType) result(jresult)
    class(JObject), target, optional :: j_anyType
    class(TerrainEventHandler), pointer :: jresult
    class(JObject), pointer :: j_eventHandlerCanBeNull
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => TerrainEventHandler_jstatic_hashtable())
        j_eventHandlerCanBeNull => jstaticref1%jm_get_1(j_anyType)
        end associate
        if ((.not. associated(j_eventHandlerCanBeNull))) then
            j_eventHandlerCanBeNull => TerrainEventHandler_jnew_0()
            associate (jstaticref2 => TerrainEventHandler_jstatic_hashtable())
            jdiscardRef => jstaticref2%jm_put_2(j_anyType, j_eventHandlerCanBeNull)
            end associate
        end if
        jresult => TerrainEventHandler_jcast(j_eventHandlerCanBeNull)
        return
  end function

  recursive subroutine TerrainEventHandler_jm_addListener_1(this, j_terrainEventListener)
    class(TerrainEventHandler), target :: this
    class(TerrainEventListener), target, optional :: j_terrainEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_terrainEventListener))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_terrainEventListener)
        end if
  end subroutine

  recursive subroutine TerrainEventHandler_jm_removeAllListeners_0(this)
    class(TerrainEventHandler), target :: this
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

  recursive subroutine TerrainEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(TerrainEventHandler), target :: this
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

  recursive subroutine TerrainEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(TerrainEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(TerrainEventListener), pointer :: j_terrainEventListener
    integer(4) :: j_index
    class(EventStrings), pointer :: jtemp3
    integer(4) :: jtemp4
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
                j_terrainEventListener => TerrainEventListener_jcast(this%f_list%jm_get_1(j_index))
                call j_terrainEventListener%jm_onTerrainEvent_1(TerrainEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine TerrainEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(TerrainEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(TerrainEventListenerInterface), pointer :: j_terrainEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_terrainEventListenerInterface => TerrainEventListenerInterface_jcast(j_eventListenerInterface)
        call j_terrainEventListenerInterface%jm_onTerrainEvent_1(TerrainEvent_jcast(j_eventObject))
  end subroutine
end module TerrainEventHandler_m

function TerrainEventHandler_jnew_0_jext() result(this)
  use TerrainEventHandler_m, only: JObject, TerrainEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TerrainEventHandler_jnew_0()
end function

