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
module DownKeyEventHandler_m
  use JR_m
  use LocalPlayerInputIdFactory_m
  use EventListenerInterface_m
  use DownKeyEventHandlerBase_m
  implicit none

  type, extends(DownKeyEventHandlerBase) :: DownKeyEventHandler
    class(LocalPlayerInputIdFactory), pointer :: f_playerInputIdFactory => null()
  contains
    procedure :: jm_getInstanceForDevice_1 => DownKeyEventHandler_jm_getInstanceForDevice_1
    procedure :: jm_getInstanceForPlayer_1 => DownKeyEventHandler_jm_getInstanceForPlayer_1
    procedure :: jm_removeAllListeners_0 => DownKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => DownKeyEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => DownKeyEventHandler_jm_removeListener_1
  end type

  class(DownKeyEventHandler), pointer, save :: DownKeyEventHandler_jcell_instance => null()
  logical, save :: DownKeyEventHandler_jset_instance = .false.
  type(JRef), allocatable, save :: DownKeyEventHandler_jcell_instanceArray(:)
  logical, save :: DownKeyEventHandler_jset_instanceArray = .false.

contains

  function DownKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownKeyEventHandler)
      jresult => object
    end select
  end function

  function DownKeyEventHandler_jstatic_instance() result(jresult)
    class(DownKeyEventHandler), pointer :: jresult
    if (.not. DownKeyEventHandler_jset_instance) then
      DownKeyEventHandler_jset_instance = .true.
      DownKeyEventHandler_jcell_instance => DownKeyEventHandler_jnew_0()
    end if
    jresult => DownKeyEventHandler_jcell_instance
  end function

  subroutine DownKeyEventHandler_jsetstatic_instance(jvalue)
    class(DownKeyEventHandler), target, optional :: jvalue
    DownKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      DownKeyEventHandler_jcell_instance => jvalue
    else
      DownKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function DownKeyEventHandler_jstatic_instanceArray() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. DownKeyEventHandler_jset_instanceArray) then
      DownKeyEventHandler_jset_instanceArray = .true.
      DownKeyEventHandler_jcell_instanceArray = [JRef :: JRef(DownKeyEventHandlerBase_jnew_0()), JRef(DownKeyEventHandlerBase_jnew_0()), JRef(DownKeyEventHandlerBase_jnew_0()), JRef(DownKeyEventHandlerBase_jnew_0()), JRef(DownKeyEventHandlerBase_jnew_0()), JRef(DownKeyEventHandlerBase_jnew_0())]
    end if
    jresult = DownKeyEventHandler_jcell_instanceArray
  end function

  subroutine DownKeyEventHandler_jsetstatic_instanceArray(jvalue)
    type(JRef) :: jvalue(:)
    DownKeyEventHandler_jset_instanceArray = .true.
    DownKeyEventHandler_jcell_instanceArray = jvalue
  end subroutine

  recursive function DownKeyEventHandler_jnew_0() result(this)
    class(DownKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'DownKeyEventHandler'
    this%f_playerInputIdFactory => LocalPlayerInputIdFactory_jm_getInstance_0()
        continue
  end function

  recursive function DownKeyEventHandler_jm_getInstance_0() result(jresult)
    class(DownKeyEventHandler), pointer :: jresult
        jresult => DownKeyEventHandler_jstatic_instance()
        return
  end function

  recursive function DownKeyEventHandler_jm_getInstanceForDevice_1(this, j_deviceId) result(jresult)
    class(DownKeyEventHandler), target :: this
    integer(4), value :: j_deviceId
    class(DownKeyEventHandlerBase), pointer :: jresult
    integer(4) :: j_playerInputId
        j_playerInputId = this%f_playerInputIdFactory%jm_getPlayerForDevice_1(j_deviceId)
        associate (jstaticref1 => DownKeyEventHandler_jstatic_instanceArray())
        jresult => DownKeyEventHandlerBase_jcast(jstaticref1((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive function DownKeyEventHandler_jm_getInstanceForPlayer_1(this, j_playerInputId) result(jresult)
    class(DownKeyEventHandler), target :: this
    integer(4), value :: j_playerInputId
    class(DownKeyEventHandlerBase), pointer :: jresult
        associate (jstaticref2 => DownKeyEventHandler_jstatic_instanceArray())
        jresult => DownKeyEventHandlerBase_jcast(jstaticref2((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive subroutine DownKeyEventHandler_jm_removeAllListeners_0(this)
    class(DownKeyEventHandler), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownKeyEventHandlerBase%jm_removeAllListeners_0()
        j_index = (size(DownKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref3 => DownKeyEventHandlerBase_jcast(DownKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref3%jm_removeAllListeners_0()
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine DownKeyEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(DownKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownKeyEventHandlerBase%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        j_index = (size(DownKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref4 => DownKeyEventHandlerBase_jcast(DownKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref4%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine DownKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(DownKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownKeyEventHandlerBase%jm_removeListener_1(j_eventListenerInterface)
        j_index = (size(DownKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref5 => DownKeyEventHandlerBase_jcast(DownKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref5%jm_removeListener_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine
end module DownKeyEventHandler_m

function DownKeyEventHandler_jnew_0_jext() result(this)
  use DownKeyEventHandler_m, only: JObject, DownKeyEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DownKeyEventHandler_jnew_0()
end function

