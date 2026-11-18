! Generated Code Do Not Modify
! package org.allbinary.game.terrain
module TerrainEventListener_m
  use JR_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use TerrainEventListenerInterface_m
  use TerrainEvent_m
  implicit none

  type, extends(TerrainEventListenerInterface) :: TerrainEventListener
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_onEvent_1 => TerrainEventListener_jm_onEvent_1
    procedure :: jm_onTerrainEvent_1 => TerrainEventListener_jm_onTerrainEvent_1
    procedure :: jm_getList_0 => TerrainEventListener_jm_getList_0
  end type


contains

  function TerrainEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEventListener)
      jresult => object
    end select
  end function

  function TerrainEventListener_jnew_0() result(this)
    class(TerrainEventListener), pointer :: this
    allocate(this)
    this%jclass = 'TerrainEventListener'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive subroutine TerrainEventListener_jm_onEvent_1(this, j_eventObject)
    class(TerrainEventListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine TerrainEventListener_jm_onTerrainEvent_1(this, j_trackingEvent)
    class(TerrainEventListener), target :: this
    class(TerrainEvent), target, optional :: j_trackingEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
        jdiscardBoolean = this%f_list%jm_add_1(j_trackingEvent)
  end subroutine

  recursive function TerrainEventListener_jm_getList_0(this) result(jresult)
    class(TerrainEventListener), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module TerrainEventListener_m

