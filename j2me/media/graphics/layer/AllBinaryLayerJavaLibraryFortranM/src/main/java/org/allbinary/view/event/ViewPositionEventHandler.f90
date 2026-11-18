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
! package org.allbinary.view.event
module ViewPositionEventHandler_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ViewPositionEvent_m
  use ViewPositionEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: ViewPositionEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => ViewPositionEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => ViewPositionEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => ViewPositionEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => ViewPositionEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => ViewPositionEventHandler_jm_process_2
  end type

  class(ViewPositionEventHandler), pointer, save :: ViewPositionEventHandler_jcell_SINGLETON => null()
  logical, save :: ViewPositionEventHandler_jset_SINGLETON = .false.

contains

  function ViewPositionEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ViewPositionEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ViewPositionEventHandler)
      jresult => object
    end select
  end function

  function ViewPositionEventHandler_jstatic_SINGLETON() result(jresult)
    class(ViewPositionEventHandler), pointer :: jresult
    if (.not. ViewPositionEventHandler_jset_SINGLETON) then
      ViewPositionEventHandler_jset_SINGLETON = .true.
      ViewPositionEventHandler_jcell_SINGLETON => ViewPositionEventHandler_jnew_0()
    end if
    jresult => ViewPositionEventHandler_jcell_SINGLETON
  end function

  subroutine ViewPositionEventHandler_jsetstatic_SINGLETON(jvalue)
    class(ViewPositionEventHandler), target, optional :: jvalue
    ViewPositionEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ViewPositionEventHandler_jcell_SINGLETON => jvalue
    else
      ViewPositionEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function ViewPositionEventHandler_jnew_0() result(this)
    class(ViewPositionEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'ViewPositionEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function ViewPositionEventHandler_jm_getInstance_0() result(jresult)
    class(ViewPositionEventHandler), pointer :: jresult
        jresult => ViewPositionEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine ViewPositionEventHandler_jm_addListener_1(this, j_layerInterface)
    class(ViewPositionEventHandler), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_layerInterface))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_layerInterface)
        end if
  end subroutine

  recursive subroutine ViewPositionEventHandler_jm_removeAllListeners_0(this)
    class(ViewPositionEventHandler), target :: this
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

  recursive subroutine ViewPositionEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(ViewPositionEventHandler), target :: this
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

  recursive subroutine ViewPositionEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(ViewPositionEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(AllBinaryLayer), pointer :: j_layerInterface
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
                j_layerInterface => AllBinaryLayer_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_layerInterface%jm_onChangeEvent_1(ViewPositionEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine ViewPositionEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(ViewPositionEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(ViewPositionEventListenerInterface), pointer :: j_viewPositionEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPositionEventListenerInterface => ViewPositionEventListenerInterface_jcast(j_eventListenerInterface)
        call j_viewPositionEventListenerInterface%jm_onChangeEvent_1(ViewPositionEvent_jcast(j_eventObject))
  end subroutine
end module ViewPositionEventHandler_m

function ViewPositionEventHandler_jnew_0_jext() result(this)
  use ViewPositionEventHandler_m, only: JObject, ViewPositionEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ViewPositionEventHandler_jnew_0()
end function

