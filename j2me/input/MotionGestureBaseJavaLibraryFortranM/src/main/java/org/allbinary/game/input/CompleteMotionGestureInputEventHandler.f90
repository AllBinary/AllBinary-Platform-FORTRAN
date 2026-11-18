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
module CompleteMotionGestureInputEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use CompleteMotionGestureInputEventListener_m
  use CompleteMotionGestureInputEvent_m
  use CompleteMotionGestureInputEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: CompleteMotionGestureInputEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => CompleteMotionGestureInputEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => CompleteMotionGestureInputEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => CompleteMotionGestureInputEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => CompleteMotionGestureInputEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => CompleteMotionGestureInputEventHandler_jm_process_2
  end type

  class(CompleteMotionGestureInputEventHandler), pointer, save :: CompleteMotionGestureInputEventHandler_jcell_SINGLETON => null()
  logical, save :: CompleteMotionGestureInputEventHandler_jset_SINGLETON = .false.

contains

  function CompleteMotionGestureInputEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputEventHandler)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputEventHandler_jstatic_SINGLETON() result(jresult)
    class(CompleteMotionGestureInputEventHandler), pointer :: jresult
    if (.not. CompleteMotionGestureInputEventHandler_jset_SINGLETON) then
      CompleteMotionGestureInputEventHandler_jset_SINGLETON = .true.
      CompleteMotionGestureInputEventHandler_jcell_SINGLETON => CompleteMotionGestureInputEventHandler_jnew_0()
    end if
    jresult => CompleteMotionGestureInputEventHandler_jcell_SINGLETON
  end function

  subroutine CompleteMotionGestureInputEventHandler_jsetstatic_SINGLETON(jvalue)
    class(CompleteMotionGestureInputEventHandler), target, optional :: jvalue
    CompleteMotionGestureInputEventHandler_jset_SINGLETON = .true.
    if (present(jvalue)) then
      CompleteMotionGestureInputEventHandler_jcell_SINGLETON => jvalue
    else
      CompleteMotionGestureInputEventHandler_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function CompleteMotionGestureInputEventHandler_jnew_0() result(this)
    class(CompleteMotionGestureInputEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function CompleteMotionGestureInputEventHandler_jm_getInstance_0() result(jresult)
    class(CompleteMotionGestureInputEventHandler), pointer :: jresult
        jresult => CompleteMotionGestureInputEventHandler_jstatic_SINGLETON()
        return
  end function

  recursive subroutine CompleteMotionGestureInputEventHandler_jm_addListener_1(this, j_completeMotionGestureInputEventListener)
    class(CompleteMotionGestureInputEventHandler), target :: this
    class(CompleteMotionGestureInputEventListener), target, optional :: j_completeMotionGestureInputEventListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_completeMotionGestureInputEventListener))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_completeMotionGestureInputEventListener)
        end if
  end subroutine

  recursive subroutine CompleteMotionGestureInputEventHandler_jm_removeAllListeners_0(this)
    class(CompleteMotionGestureInputEventHandler), target :: this
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

  recursive subroutine CompleteMotionGestureInputEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(CompleteMotionGestureInputEventHandler), target :: this
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

  recursive subroutine CompleteMotionGestureInputEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(CompleteMotionGestureInputEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(CompleteMotionGestureInputEventListener), pointer :: j_completeMotionGestureInputEventListener
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
                j_completeMotionGestureInputEventListener => CompleteMotionGestureInputEventListener_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_completeMotionGestureInputEventListener%jm_onCompleteMotionGestureInputEvent_1(CompleteMotionGestureInputEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine CompleteMotionGestureInputEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(CompleteMotionGestureInputEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(CompleteMotionGestureInputEventListenerInterface), pointer :: j_completeMotionGestureInputEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_completeMotionGestureInputEventListenerInterface => CompleteMotionGestureInputEventListenerInterface_jcast(j_eventListenerInterface)
        call j_completeMotionGestureInputEventListenerInterface%jm_onCompleteMotionGestureInputEvent_1(CompleteMotionGestureInputEvent_jcast(j_eventObject))
  end subroutine
end module CompleteMotionGestureInputEventHandler_m

function CompleteMotionGestureInputEventHandler_jnew_0_jext() result(this)
  use CompleteMotionGestureInputEventHandler_m, only: JObject, CompleteMotionGestureInputEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CompleteMotionGestureInputEventHandler_jnew_0()
end function

