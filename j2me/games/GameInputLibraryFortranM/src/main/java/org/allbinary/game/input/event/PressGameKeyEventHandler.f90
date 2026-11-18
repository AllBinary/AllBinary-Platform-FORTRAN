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
module PressGameKeyEventHandler_m
  use JR_m
  use PlayerGameInput_m
  use AllBinaryEventObject_m
  use EventListenerInterface_m
  use EventStrings_m
  use BasicEventHandler_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameKeyEvent_m
  use PressGameKeyEventListenerInterface_m
  implicit none

  type, extends(BasicEventHandler) :: PressGameKeyEventHandler
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_addListener_1 => PressGameKeyEventHandler_jm_addListener_1
    procedure :: jm_removeAllListeners_0 => PressGameKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListener_1 => PressGameKeyEventHandler_jm_removeListener_1
    procedure :: jm_fireEvent_1 => PressGameKeyEventHandler_jm_fireEvent_1
    procedure :: jm_process_2 => PressGameKeyEventHandler_jm_process_2
  end type

  class(PressGameKeyEventHandler), pointer, save :: PressGameKeyEventHandler_jcell_instance => null()
  logical, save :: PressGameKeyEventHandler_jset_instance = .false.

contains

  function PressGameKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PressGameKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PressGameKeyEventHandler)
      jresult => object
    end select
  end function

  function PressGameKeyEventHandler_jstatic_instance() result(jresult)
    class(PressGameKeyEventHandler), pointer :: jresult
    if (.not. PressGameKeyEventHandler_jset_instance) then
      PressGameKeyEventHandler_jset_instance = .true.
      PressGameKeyEventHandler_jcell_instance => PressGameKeyEventHandler_jnew_0()
    end if
    jresult => PressGameKeyEventHandler_jcell_instance
  end function

  subroutine PressGameKeyEventHandler_jsetstatic_instance(jvalue)
    class(PressGameKeyEventHandler), target, optional :: jvalue
    PressGameKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      PressGameKeyEventHandler_jcell_instance => jvalue
    else
      PressGameKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  recursive function PressGameKeyEventHandler_jnew_0() result(this)
    class(PressGameKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'PressGameKeyEventHandler'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function PressGameKeyEventHandler_jm_getInstance_0() result(jresult)
    class(PressGameKeyEventHandler), pointer :: jresult
        jresult => PressGameKeyEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine PressGameKeyEventHandler_jm_addListener_1(this, j_playerGameInput)
    class(PressGameKeyEventHandler), target :: this
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

  recursive subroutine PressGameKeyEventHandler_jm_removeAllListeners_0(this)
    class(PressGameKeyEventHandler), target :: this
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

  recursive subroutine PressGameKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(PressGameKeyEventHandler), target :: this
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

  recursive subroutine PressGameKeyEventHandler_jm_fireEvent_1(this, j_eventObject)
    class(PressGameKeyEventHandler), target :: this
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
                call j_playerGameInput%jm_onPressGameKeyEvent_1(GameKeyEvent_jcast(j_eventObject))
        end do
        call this%BasicEventHandler%jm_fireEvent_1(j_eventObject)
  end subroutine

  recursive subroutine PressGameKeyEventHandler_jm_process_2(this, j_eventObject, j_eventListenerInterface)
    class(PressGameKeyEventHandler), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(PressGameKeyEventListenerInterface), pointer :: j_pressGameKeyEventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_pressGameKeyEventListenerInterface => PressGameKeyEventListenerInterface_jcast(j_eventListenerInterface)
        call j_pressGameKeyEventListenerInterface%jm_onPressGameKeyEvent_1(GameKeyEvent_jcast(j_eventObject))
  end subroutine
end module PressGameKeyEventHandler_m

function PressGameKeyEventHandler_jnew_0_jext() result(this)
  use PressGameKeyEventHandler_m, only: JObject, PressGameKeyEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PressGameKeyEventHandler_jnew_0()
end function

