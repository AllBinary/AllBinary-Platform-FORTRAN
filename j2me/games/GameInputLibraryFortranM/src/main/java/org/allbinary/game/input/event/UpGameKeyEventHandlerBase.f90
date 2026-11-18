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
module UpGameKeyEventHandlerBase_m
  use JR_m
  use PlayerGameInput_m
  use StringMaker_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameKeyEvent_m
  use UpGameKeyEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: UpGameKeyEventHandlerBase
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => UpGameKeyEventHandlerBase_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => UpGameKeyEventHandlerBase_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => UpGameKeyEventHandlerBase_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => UpGameKeyEventHandlerBase_jm_removeListener_1
    procedure :: jm_fireEvent_1 => UpGameKeyEventHandlerBase_jm_fireEvent_1
    procedure :: jm_process_2 => UpGameKeyEventHandlerBase_jm_process_2
    procedure :: jm_toString_0 => UpGameKeyEventHandlerBase_jm_toString_0
  end type

  character(len=:), allocatable, save :: UpGameKeyEventHandlerBase_jcell_TOTAL_LISTENERS
  logical, save :: UpGameKeyEventHandlerBase_jset_TOTAL_LISTENERS = .false.
  character(len=:), allocatable, save :: UpGameKeyEventHandlerBase_jcell_LISTENER_LABEL
  logical, save :: UpGameKeyEventHandlerBase_jset_LISTENER_LABEL = .false.

contains

  function UpGameKeyEventHandlerBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpGameKeyEventHandlerBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpGameKeyEventHandlerBase)
      jresult => object
    end select
  end function

  function UpGameKeyEventHandlerBase_jstatic_TOTAL_LISTENERS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. UpGameKeyEventHandlerBase_jset_TOTAL_LISTENERS) then
      UpGameKeyEventHandlerBase_jset_TOTAL_LISTENERS = .true.
      UpGameKeyEventHandlerBase_jcell_TOTAL_LISTENERS = ' Total PlayerGameInput Listeners: '
    end if
    jresult = UpGameKeyEventHandlerBase_jcell_TOTAL_LISTENERS
  end function

  subroutine UpGameKeyEventHandlerBase_jsetstatic_TOTAL_LISTENERS(jvalue)
    character(len=*), intent(in) :: jvalue
    UpGameKeyEventHandlerBase_jset_TOTAL_LISTENERS = .true.
    UpGameKeyEventHandlerBase_jcell_TOTAL_LISTENERS = jvalue
  end subroutine

  function UpGameKeyEventHandlerBase_jstatic_LISTENER_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. UpGameKeyEventHandlerBase_jset_LISTENER_LABEL) then
      UpGameKeyEventHandlerBase_jset_LISTENER_LABEL = .true.
      UpGameKeyEventHandlerBase_jcell_LISTENER_LABEL = ' PlayerGameInput Listener: '
    end if
    jresult = UpGameKeyEventHandlerBase_jcell_LISTENER_LABEL
  end function

  subroutine UpGameKeyEventHandlerBase_jsetstatic_LISTENER_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    UpGameKeyEventHandlerBase_jset_LISTENER_LABEL = .true.
    UpGameKeyEventHandlerBase_jcell_LISTENER_LABEL = jvalue
  end subroutine

  recursive function UpGameKeyEventHandlerBase_jnew_0() result(this)
    class(UpGameKeyEventHandlerBase), pointer :: this
    allocate(this)
    this%jclass = 'UpGameKeyEventHandlerBase'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive subroutine UpGameKeyEventHandlerBase_jm_addListener_1(this, j_playerGameInput)
    class(UpGameKeyEventHandlerBase), target :: this
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

  recursive subroutine UpGameKeyEventHandlerBase_jm_removeAllListeners_0(this)
    class(UpGameKeyEventHandlerBase), target :: this
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

  recursive subroutine UpGameKeyEventHandlerBase_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(UpGameKeyEventHandlerBase), target :: this
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

  recursive subroutine UpGameKeyEventHandlerBase_jm_removeListener_1(this, j_eventListenerInterface)
    class(UpGameKeyEventHandlerBase), target :: this
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

  recursive subroutine UpGameKeyEventHandlerBase_jm_fireEvent_1(this, j_eventObject)
    class(UpGameKeyEventHandlerBase), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(PlayerGameInput), pointer :: j_playerGameInput
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
                j_playerGameInput => PlayerGameInput_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_playerGameInput%jm_onUpGameKeyEvent_1(GameKeyEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine UpGameKeyEventHandlerBase_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(UpGameKeyEventHandlerBase), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(UpGameKeyEventListenerInterface), pointer :: j_upGameKeyEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_upGameKeyEventListenerInterface => UpGameKeyEventListenerInterface_jcast(j_eventListenerInterface)
        call j_upGameKeyEventListenerInterface%jm_onUpGameKeyEvent_1(GameKeyEvent_jcast(j_eventObject))
  end subroutine

  recursive function UpGameKeyEventHandlerBase_jm_toString_0(this) result(jresult)
    class(UpGameKeyEventHandlerBase), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_size
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
        j_size = this%f_list%jm_size_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%BasicEventHandler%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(UpGameKeyEventHandlerBase_jstatic_TOTAL_LISTENERS())
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_size)
        j_index = 0
        do while ((j_index < j_size))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_list%jm_get_1(j_index))
                jdiscardRef => j_stringBuffer%jm_append_1(UpGameKeyEventHandlerBase_jstatic_LISTENER_LABEL())
                jdiscardRef => j_stringBuffer%jm_append_1(j_eventListenerInterface%jm_toString_0())
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module UpGameKeyEventHandlerBase_m

function UpGameKeyEventHandlerBase_jnew_0_jext() result(this)
  use UpGameKeyEventHandlerBase_m, only: JObject, UpGameKeyEventHandlerBase_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpGameKeyEventHandlerBase_jnew_0()
end function

