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
! package org.allbinary.android.input.motion.event
module AnalogControllerConfigurationEventHandler_m
  use JR_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AnalogControllerConfigurationEventListenerInterface_m
  use AnalogControllerConfigurationEvent_m
  implicit none

  type, extends(BasicEventHandler) :: AnalogControllerConfigurationEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => AnalogControllerConfigurationEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => AnalogControllerConfigurationEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => AnalogControllerConfigurationEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => AnalogControllerConfigurationEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => AnalogControllerConfigurationEventHandler_jm_process_2
  end type

  class(AnalogControllerConfigurationEventHandler), pointer, save :: AnalogControllerConfigurationEventHandler_jcell_instance => null()
  logical, save :: AnalogControllerConfigurationEventHandler_jset_instance = .false.

contains

  function AnalogControllerConfigurationEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerConfigurationEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerConfigurationEventHandler)
      jresult => object
    end select
  end function

  function AnalogControllerConfigurationEventHandler_jstatic_instance() result(jresult)
    class(AnalogControllerConfigurationEventHandler), pointer :: jresult
    if (.not. AnalogControllerConfigurationEventHandler_jset_instance) then
      AnalogControllerConfigurationEventHandler_jset_instance = .true.
      AnalogControllerConfigurationEventHandler_jcell_instance => AnalogControllerConfigurationEventHandler_jnew_0()
    end if
    jresult => AnalogControllerConfigurationEventHandler_jcell_instance
  end function

  subroutine AnalogControllerConfigurationEventHandler_jsetstatic_instance(jvalue)
    class(AnalogControllerConfigurationEventHandler), target, optional :: jvalue
    AnalogControllerConfigurationEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      AnalogControllerConfigurationEventHandler_jcell_instance => jvalue
    else
      AnalogControllerConfigurationEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function AnalogControllerConfigurationEventHandler_jnew_0() result(this)
    class(AnalogControllerConfigurationEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'AnalogControllerConfigurationEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function AnalogControllerConfigurationEventHandler_jm_getInstance_0() result(jresult)
    class(AnalogControllerConfigurationEventHandler), pointer :: jresult
        jresult => AnalogControllerConfigurationEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine AnalogControllerConfigurationEventHandler_jm_addListener_1(this, j_analogControllerConfigurationEventListenerInterface)
    class(AnalogControllerConfigurationEventHandler), target :: this
    class(AnalogControllerConfigurationEventListenerInterface), target, optional :: j_analogControllerConfigurationEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_analogControllerConfigurationEventListenerInterface))) then
            jdiscardBoolean = this%f_list%jm_add_1(j_analogControllerConfigurationEventListenerInterface)
        end if
  end subroutine

  recursive subroutine AnalogControllerConfigurationEventHandler_jm_removeAllListeners_0(this)
    class(AnalogControllerConfigurationEventHandler), target :: this
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

  recursive subroutine AnalogControllerConfigurationEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(AnalogControllerConfigurationEventHandler), target :: this
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

  recursive subroutine AnalogControllerConfigurationEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(AnalogControllerConfigurationEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(AnalogControllerConfigurationEventListenerInterface), pointer :: j_playerGameInput
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
                j_playerGameInput => AnalogControllerConfigurationEventListenerInterface_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
                call j_playerGameInput%jm_onAnalogControllerConfigurationEvent_1(AnalogControllerConfigurationEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine AnalogControllerConfigurationEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(AnalogControllerConfigurationEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(AnalogControllerConfigurationEventListenerInterface), pointer :: j_analogControllerConfigurationEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_analogControllerConfigurationEventListenerInterface => AnalogControllerConfigurationEventListenerInterface_jcast(j_eventListenerInterface)
        call j_analogControllerConfigurationEventListenerInterface%jm_onAnalogControllerConfigurationEvent_1(AnalogControllerConfigurationEvent_jcast(j_eventObject))
  end subroutine
end module AnalogControllerConfigurationEventHandler_m

function AnalogControllerConfigurationEventHandler_jnew_0_jext() result(this)
  use AnalogControllerConfigurationEventHandler_m, only: JObject, AnalogControllerConfigurationEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AnalogControllerConfigurationEventHandler_jnew_0()
end function

