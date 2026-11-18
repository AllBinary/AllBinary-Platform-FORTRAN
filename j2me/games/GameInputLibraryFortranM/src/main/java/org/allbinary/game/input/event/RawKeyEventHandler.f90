! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module RawKeyEventHandler_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use EventStrings_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use RawKeyEventListener_m
  implicit none

  type, extends(JObject) :: RawKeyEventHandler
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_eventListenerInterfaceList => null()
  contains
    procedure :: jm_removeAllListeners_0 => RawKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_addListeners_1 => RawKeyEventHandler_jm_addListeners_1
    procedure :: jm_addListenerSingleThreaded_1 => RawKeyEventHandler_jm_addListenerSingleThreaded_1
    procedure :: jm_addListener_1 => RawKeyEventHandler_jm_addListener_1
    procedure :: jm_removeListenerSingleThreaded_1 => RawKeyEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => RawKeyEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_3 => RawKeyEventHandler_jm_fireEvent_3
    procedure :: jm_process_4 => RawKeyEventHandler_jm_process_4
    procedure :: jm_getEventListenerInterfaceListP_0 => RawKeyEventHandler_jm_getEventListenerInterfaceListP_0
    procedure :: jm_toString_0 => RawKeyEventHandler_jm_toString_0
  end type

  class(RawKeyEventHandler), pointer, save :: RawKeyEventHandler_jcell_instance => null()
  logical, save :: RawKeyEventHandler_jset_instance = .false.
  character(len=:), allocatable, save :: RawKeyEventHandler_jcell_TOTAL_LISTENERS
  logical, save :: RawKeyEventHandler_jset_TOTAL_LISTENERS = .false.
  character(len=:), allocatable, save :: RawKeyEventHandler_jcell_LISTENER_LABEL
  logical, save :: RawKeyEventHandler_jset_LISTENER_LABEL = .false.

contains

  function RawKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RawKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RawKeyEventHandler)
      jresult => object
    end select
  end function

  function RawKeyEventHandler_jstatic_instance() result(jresult)
    class(RawKeyEventHandler), pointer :: jresult
    if (.not. RawKeyEventHandler_jset_instance) then
      RawKeyEventHandler_jset_instance = .true.
      RawKeyEventHandler_jcell_instance => RawKeyEventHandler_jnew_0()
    end if
    jresult => RawKeyEventHandler_jcell_instance
  end function

  subroutine RawKeyEventHandler_jsetstatic_instance(jvalue)
    class(RawKeyEventHandler), target, optional :: jvalue
    RawKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      RawKeyEventHandler_jcell_instance => jvalue
    else
      RawKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function RawKeyEventHandler_jstatic_TOTAL_LISTENERS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. RawKeyEventHandler_jset_TOTAL_LISTENERS) then
      RawKeyEventHandler_jset_TOTAL_LISTENERS = .true.
      RawKeyEventHandler_jcell_TOTAL_LISTENERS = 'Total Listeners: '
    end if
    jresult = RawKeyEventHandler_jcell_TOTAL_LISTENERS
  end function

  subroutine RawKeyEventHandler_jsetstatic_TOTAL_LISTENERS(jvalue)
    character(len=*), intent(in) :: jvalue
    RawKeyEventHandler_jset_TOTAL_LISTENERS = .true.
    RawKeyEventHandler_jcell_TOTAL_LISTENERS = jvalue
  end subroutine

  function RawKeyEventHandler_jstatic_LISTENER_LABEL() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. RawKeyEventHandler_jset_LISTENER_LABEL) then
      RawKeyEventHandler_jset_LISTENER_LABEL = .true.
      RawKeyEventHandler_jcell_LISTENER_LABEL = ' Listener: '
    end if
    jresult = RawKeyEventHandler_jcell_LISTENER_LABEL
  end function

  subroutine RawKeyEventHandler_jsetstatic_LISTENER_LABEL(jvalue)
    character(len=*), intent(in) :: jvalue
    RawKeyEventHandler_jset_LISTENER_LABEL = .true.
    RawKeyEventHandler_jcell_LISTENER_LABEL = jvalue
  end subroutine

  recursive function RawKeyEventHandler_jnew_0() result(this)
    class(RawKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'RawKeyEventHandler'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end function

  recursive function RawKeyEventHandler_jm_getInstance_0() result(jresult)
    class(RawKeyEventHandler), pointer :: jresult
        jresult => RawKeyEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine RawKeyEventHandler_jm_removeAllListeners_0(this)
    class(RawKeyEventHandler), target :: this
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_addListeners_1(this, j_vector)
    class(RawKeyEventHandler), target :: this
    class(BasicArrayList), target, optional :: j_vector
    class(RawKeyEventListener), pointer :: j_eventListenerInterface
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
        j_size = j_vector%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_eventListenerInterface => RawKeyEventListener_jcast(j_vector%jm_get_1(j_index))
            call this%jm_addListener_1(j_eventListenerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_addListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(RawKeyEventHandler), target :: this
    class(RawKeyEventListener), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_eventListenerInterfaceList%jm_contains_1(j_eventListenerInterface))) then
            jdiscardBoolean = this%f_eventListenerInterfaceList%jm_add_1(j_eventListenerInterface)
        end if
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_addListener_1(this, j_eventListenerInterface)
    class(RawKeyEventHandler), target :: this
    class(RawKeyEventListener), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_eventListenerInterfaceList%jm_contains_1(j_eventListenerInterface))) then
            jdiscardBoolean = this%f_eventListenerInterfaceList%jm_add_1(j_eventListenerInterface)
        end if
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(RawKeyEventHandler), target :: this
    class(RawKeyEventListener), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_eventListenerInterfaceList%jm_remove_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(RawKeyEventHandler), target :: this
    class(RawKeyEventListener), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_eventListenerInterfaceList%jm_remove_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_fireEvent_3(this, j_keyCode, j_deviceId, j_repeated)
    class(RawKeyEventHandler), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(RawKeyEventListener), pointer :: j_eventListenerInterface
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        j_index = 0
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => RawKeyEventListener_jcast(this%f_eventListenerInterfaceList%jm_get_1(j_index))
                call this%jm_process_4(j_keyCode, j_deviceId, j_repeated, j_eventListenerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine RawKeyEventHandler_jm_process_4(this, j_keyCode, j_deviceId, j_repeated, j_eventListenerInterface)
    class(RawKeyEventHandler), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(RawKeyEventListener), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_eventListenerInterface%jm_onEventRaw_3(j_keyCode, j_deviceId, j_repeated)
  end subroutine

  recursive function RawKeyEventHandler_jm_getEventListenerInterfaceListP_0(this) result(jresult)
    class(RawKeyEventHandler), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_eventListenerInterfaceList
        return
  end function

  recursive function RawKeyEventHandler_jm_toString_0(this) result(jresult)
    class(RawKeyEventHandler), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(RawKeyEventListener), pointer :: j_eventListenerInterface
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(RawKeyEventHandler_jstatic_TOTAL_LISTENERS())
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_eventListenerInterfaceList%jm_size_0())
        continue
        j_index = 0
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => RawKeyEventListener_jcast(this%f_eventListenerInterfaceList%jm_get_1(j_index))
                jdiscardRef => j_stringBuffer%jm_append_1(RawKeyEventHandler_jstatic_LISTENER_LABEL())
                jdiscardRef => j_stringBuffer%jm_append_1(j_eventListenerInterface%jm_toString_0())
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module RawKeyEventHandler_m

