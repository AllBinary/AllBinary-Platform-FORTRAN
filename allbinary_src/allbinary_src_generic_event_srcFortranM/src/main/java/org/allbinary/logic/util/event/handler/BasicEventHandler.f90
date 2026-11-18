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
! package org.allbinary.logic.util.event.handler
module BasicEventHandler_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicEventHandlerInterface_m
  implicit none

  type, extends(BasicEventHandlerInterface) :: BasicEventHandler
    class(LogUtil), pointer :: f_logUtil => null()
    class(BasicArrayList), pointer :: f_eventListenerInterfaceList => null()
  contains
    procedure :: jm_toString_0 => BasicEventHandler_jm_toString_0
    procedure :: jm_removeAllListeners_0 => BasicEventHandler_jm_removeAllListeners_0
    procedure :: jm_addListenerSingleThreaded_1 => BasicEventHandler_jm_addListenerSingleThreaded_1
    procedure :: jm_addListenerInterface_1 => BasicEventHandler_jm_addListenerInterface_1
    procedure :: jm_removeListenerSingleThreaded_1 => BasicEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => BasicEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => BasicEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => BasicEventHandler_jm_process_2
    procedure :: jm_getEventListenerInterfaceListP_0 => BasicEventHandler_jm_getEventListenerInterfaceListP_0
  end type

  character(len=:), allocatable, save :: BasicEventHandler_jcell_PERFORMANCE_MESSAGE
  logical, save :: BasicEventHandler_jset_PERFORMANCE_MESSAGE = .false.

contains

  function BasicEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicEventHandler)
      jresult => object
    end select
  end function

  function BasicEventHandler_jstatic_PERFORMANCE_MESSAGE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BasicEventHandler_jset_PERFORMANCE_MESSAGE) then
      BasicEventHandler_jset_PERFORMANCE_MESSAGE = .true.
      BasicEventHandler_jcell_PERFORMANCE_MESSAGE = 'Use Custom onEvent Methods for needed optimization'
    end if
    jresult = BasicEventHandler_jcell_PERFORMANCE_MESSAGE
  end function

  subroutine BasicEventHandler_jsetstatic_PERFORMANCE_MESSAGE(jvalue)
    character(len=*), intent(in) :: jvalue
    BasicEventHandler_jset_PERFORMANCE_MESSAGE = .true.
    BasicEventHandler_jcell_PERFORMANCE_MESSAGE = jvalue
  end subroutine

  recursive function BasicEventHandler_jnew_0() result(this)
    class(BasicEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'BasicEventHandler'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end function

  recursive function BasicEventHandler_jm_toString_0(this) result(jresult)
    class(BasicEventHandler), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_LISTENER
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_LISTENER = ' Listener: '
        jdiscardRef => j_stringBuffer%jm_append_1('Total Listeners: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_eventListenerInterfaceList%jm_size_0())
        continue
        j_index = 0
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_eventListenerInterfaceList%f_objectArray((j_index) + 1)%v)
                jdiscardRef => j_stringBuffer%jm_append_1(j_LISTENER)
                jtemp1 => StringUtil_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_1(j_eventListenerInterface))
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive subroutine BasicEventHandler_jm_removeAllListeners_0(this)
    class(BasicEventHandler), target :: this
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end subroutine

  recursive subroutine BasicEventHandler_jm_addListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(BasicEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
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

  recursive subroutine BasicEventHandler_jm_addListenerInterface_1(this, j_eventListenerInterface)
    class(BasicEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
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

  recursive subroutine BasicEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(BasicEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_eventListenerInterfaceList%jm_remove_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine BasicEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(BasicEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_eventListenerInterfaceList%jm_remove_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine BasicEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(BasicEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    integer(4) :: j_index
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    class(CommonStrings), pointer :: j_commonStrings
    class(EventStrings), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        continue
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_eventListenerInterfaceList%f_objectArray((j_index) + 1)%v)
                call this%jm_process_2(j_eventObject, j_eventListenerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine BasicEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(BasicEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_eventListenerInterface%jm_onEvent_1(j_eventObject)
  end subroutine

  recursive function BasicEventHandler_jm_getEventListenerInterfaceListP_0(this) result(jresult)
    class(BasicEventHandler), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_eventListenerInterfaceList
        return
  end function
end module BasicEventHandler_m

