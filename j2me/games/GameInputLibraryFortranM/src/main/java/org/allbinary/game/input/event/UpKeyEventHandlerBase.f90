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
! package org.allbinary.game.input.event
module UpKeyEventHandlerBase_m
  use JR_m
  use PlayerGameInput_m
  use StringMaker_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  use UpKeyEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: UpKeyEventHandlerBase
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => UpKeyEventHandlerBase_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => UpKeyEventHandlerBase_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => UpKeyEventHandlerBase_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => UpKeyEventHandlerBase_jm_removeListener_1
    procedure :: jm_fireEventForInteger_1 => UpKeyEventHandlerBase_jm_fireEventForInteger_1
    procedure :: jm_processForInteger_2 => UpKeyEventHandlerBase_jm_processForInteger_2
    procedure :: jm_toString_0 => UpKeyEventHandlerBase_jm_toString_0
  end type

  character(len=:), allocatable, save :: UpKeyEventHandlerBase_jcell_TOTAL_LISTENERS
  logical, save :: UpKeyEventHandlerBase_jset_TOTAL_LISTENERS = .false.
  character(len=:), allocatable, save :: UpKeyEventHandlerBase_jcell_LISTENER_LABEL
  logical, save :: UpKeyEventHandlerBase_jset_LISTENER_LABEL = .false.

contains

  function UpKeyEventHandlerBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpKeyEventHandlerBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpKeyEventHandlerBase)
      jresult => object
    end select
  end function

  function UpKeyEventHandlerBase_jstatic_TOTAL_LISTENERS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. UpKeyEventHandlerBase_jset_TOTAL_LISTENERS) then
      UpKeyEventHandlerBase_jset_TOTAL_LISTENERS = .true.
      UpKeyEventHandlerBase_jcell_TOTAL_LISTENERS = ' Total PlayerGameInput Listeners: '
    end if
    jresult = UpKeyEventHandlerBase_jcell_TOTAL_LISTENERS
  end function

  subroutine UpKeyEventHandlerBase_jsetstatic_TOTAL_LISTENERS(jvalue)
    character(len=*), intent(in) :: jvalue
    UpKeyEventHandlerBase_jset_TOTAL_LISTENERS = .true.
    UpKeyEventHandlerBase_jcell_TOTAL_LISTENERS = jvalue
  end subroutine

  function UpKeyEventHandlerBase_jstatic_LISTENER_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. UpKeyEventHandlerBase_jset_LISTENER_LABEL) then
      UpKeyEventHandlerBase_jset_LISTENER_LABEL = .true.
      UpKeyEventHandlerBase_jcell_LISTENER_LABEL = ' PlayerGameInput Listener: '
    end if
    jresult = UpKeyEventHandlerBase_jcell_LISTENER_LABEL
  end function

  subroutine UpKeyEventHandlerBase_jsetstatic_LISTENER_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    UpKeyEventHandlerBase_jset_LISTENER_LABEL = .true.
    UpKeyEventHandlerBase_jcell_LISTENER_LABEL = jvalue
  end subroutine

  recursive function UpKeyEventHandlerBase_jnew_0() result(this)
    class(UpKeyEventHandlerBase), pointer :: this
    allocate(this)
    this%jclass = 'UpKeyEventHandlerBase'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive subroutine UpKeyEventHandlerBase_jm_addListener_1(this, j_playerGameInput)
    class(UpKeyEventHandlerBase), target :: this
    class(PlayerGameInput), target, optional :: j_playerGameInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_playerGameInput))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_playerGameInput)
        end if
  end subroutine

  recursive subroutine UpKeyEventHandlerBase_jm_removeAllListeners_0(this)
    class(UpKeyEventHandlerBase), target :: this
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

  recursive subroutine UpKeyEventHandlerBase_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(UpKeyEventHandlerBase), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_remove_1(j_eventListenerInterface)
        call this%BasicEventHandler%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine UpKeyEventHandlerBase_jm_removeListener_1(this, j_eventListenerInterface)
    class(UpKeyEventHandlerBase), target :: this
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

  recursive subroutine UpKeyEventHandlerBase_jm_fireEventForInteger_1(this, j_eventObject)
    class(UpKeyEventHandlerBase), target :: this
    integer(4), value :: j_eventObject
    class(PlayerGameInput), pointer :: j_playerGameInput
    integer(4) :: j_index
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    class(EventStrings), pointer :: jtemp1
    integer(4) :: jtemp2
    class(EventStrings), pointer :: jtemp3
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
                j_playerGameInput => PlayerGameInput_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_playerGameInput%jm_onUpKeyEvent_1(j_eventObject)
        end do
        j_index = 0
        continue
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_eventListenerInterfaceList%jm_get_1(j_index))
                call this%jm_processForInteger_2(j_eventObject, j_eventListenerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine UpKeyEventHandlerBase_jm_processForInteger_2(this, j_eventObject, j_eventListenerInterface)
    class(UpKeyEventHandlerBase), target :: this
    integer(4), value :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(UpKeyEventListenerInterface), pointer :: j_upKeyEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_upKeyEventListenerInterface => UpKeyEventListenerInterface_jcast(j_eventListenerInterface)
        call j_upKeyEventListenerInterface%jm_onUpKeyEvent_1(j_eventObject)
  end subroutine

  recursive function UpKeyEventHandlerBase_jm_toString_0(this) result(jresult)
    class(UpKeyEventHandlerBase), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%BasicEventHandler%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(UpKeyEventHandlerBase_jstatic_TOTAL_LISTENERS())
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_list%jm_size_0())
        j_index = 0
        do while ((j_index < this%f_list%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_list%jm_get_1(j_index))
                jdiscardRef => j_stringBuffer%jm_append_1(UpKeyEventHandlerBase_jstatic_LISTENER_LABEL())
                jdiscardRef => j_stringBuffer%jm_append_1(j_eventListenerInterface%jm_toString_0())
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module UpKeyEventHandlerBase_m

function UpKeyEventHandlerBase_jnew_0_jext() result(this)
  use UpKeyEventHandlerBase_m, only: JObject, UpKeyEventHandlerBase_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpKeyEventHandlerBase_jnew_0()
end function

