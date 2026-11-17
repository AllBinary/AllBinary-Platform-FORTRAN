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
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(EventStrings), pointer :: f_eventStrings => null()
    class(BasicArrayList), pointer :: f_eventListenerInterfaceList => null()
  contains
    procedure :: jm_removeAllListeners_0 => BasicEventHandler_jm_removeAllListeners_0
    procedure :: jm_addListeners_1 => BasicEventHandler_jm_addListeners_1
    procedure :: jm_removeListeners_1 => BasicEventHandler_jm_removeListeners_1
    procedure :: jm_addListenerSingleThreaded_1 => BasicEventHandler_jm_addListenerSingleThreaded_1
    procedure :: jm_addListenerInterface_1 => BasicEventHandler_jm_addListenerInterface_1
    procedure :: jm_removeListenerSingleThreaded_1 => BasicEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => BasicEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => BasicEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => BasicEventHandler_jm_process_2
    procedure :: jm_getEventListenerInterfaceListP_0 => BasicEventHandler_jm_getEventListenerInterfaceListP_0
    procedure :: jm_toString_0 => BasicEventHandler_jm_toString_0
  end type


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

  recursive function BasicEventHandler_jnew_0() result(this)
    class(BasicEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'BasicEventHandler'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_eventStrings => EventStrings_jm_getInstance_0()
    
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end function

  recursive subroutine BasicEventHandler_jm_removeAllListeners_0(this)
    class(BasicEventHandler), target :: this
        this%f_eventListenerInterfaceList => BasicArrayListD_jnew_0()
  end subroutine

  recursive subroutine BasicEventHandler_jm_addListeners_1(this, j_basicArrayList)
    class(BasicEventHandler), target :: this
    class(BasicArrayList), target, optional :: j_basicArrayList
    class(EventListenerInterface), pointer :: j_eventListenerInterface
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
        j_size = j_basicArrayList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_eventListenerInterface => EventListenerInterface_jcast(j_basicArrayList%jm_get_1(j_index))
            call this%jm_addListenerInterface_1(j_eventListenerInterface)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine BasicEventHandler_jm_removeListeners_1(this, j_vector)
    class(BasicEventHandler), target :: this
    class(BasicArrayList), target, optional :: j_vector
    class(EventListenerInterface), pointer :: j_eventListenerInterface
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
            j_eventListenerInterface => EventListenerInterface_jcast(j_vector%jm_get_1(j_index))
            call this%jm_removeListener_1(j_eventListenerInterface)
            j_index = j_index + 1
        end do
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
    class(EventListenerInterface), pointer :: j_eventListenerInterface
    integer(4) :: j_index
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
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_eventListenerInterfaceList%jm_get_1(j_index))
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

  recursive function BasicEventHandler_jm_toString_0(this) result(jresult)
    class(BasicEventHandler), target :: this
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
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_eventStrings%f_TOTAL_LISTENERS)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_eventListenerInterfaceList%jm_size_0())
        continue
        j_index = 0
        do while ((j_index < this%f_eventListenerInterfaceList%jm_size_0()))
            continue ! try
                j_eventListenerInterface => EventListenerInterface_jcast(this%f_eventListenerInterfaceList%jm_get_1(j_index))
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_eventStrings%f_LISTENER_LABEL)
                jdiscardRef => j_stringBuffer%jm_append_1(j_eventListenerInterface%jm_toString_0())
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BasicEventHandler_m

