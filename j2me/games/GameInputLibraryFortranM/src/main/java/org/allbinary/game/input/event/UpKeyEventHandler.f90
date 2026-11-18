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
module UpKeyEventHandler_m
  use JR_m
  use LocalPlayerInputIdFactory_m
  use EventListenerInterface_m
  use UpKeyEventHandlerBase_m
  implicit none

  type, extends(UpKeyEventHandlerBase) :: UpKeyEventHandler
    class(LocalPlayerInputIdFactory), pointer :: f_playerInputIdFactory => null()
  contains
    procedure :: jm_getInstanceForDevice_1 => UpKeyEventHandler_jm_getInstanceForDevice_1
    procedure :: jm_getInstanceForPlayer_1 => UpKeyEventHandler_jm_getInstanceForPlayer_1
    procedure :: jm_removeAllListeners_0 => UpKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => UpKeyEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => UpKeyEventHandler_jm_removeListener_1
  end type

  class(UpKeyEventHandler), pointer, save :: UpKeyEventHandler_jcell_instance => null()
  logical, save :: UpKeyEventHandler_jset_instance = .false.
  type(JRef), allocatable, save :: UpKeyEventHandler_jcell_instanceArray(:)
  logical, save :: UpKeyEventHandler_jset_instanceArray = .false.

contains

  function UpKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpKeyEventHandler)
      jresult => object
    end select
  end function

  function UpKeyEventHandler_jstatic_instance() result(jresult)
    class(UpKeyEventHandler), pointer :: jresult
    if (.not. UpKeyEventHandler_jset_instance) then
      UpKeyEventHandler_jset_instance = .true.
      UpKeyEventHandler_jcell_instance => UpKeyEventHandler_jnew_0()
    end if
    jresult => UpKeyEventHandler_jcell_instance
  end function

  subroutine UpKeyEventHandler_jsetstatic_instance(jvalue)
    class(UpKeyEventHandler), target, optional :: jvalue
    UpKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      UpKeyEventHandler_jcell_instance => jvalue
    else
      UpKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function UpKeyEventHandler_jstatic_instanceArray() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. UpKeyEventHandler_jset_instanceArray) then
      UpKeyEventHandler_jset_instanceArray = .true.
      UpKeyEventHandler_jcell_instanceArray = [JRef :: JRef(UpKeyEventHandlerBase_jnew_0()), JRef(UpKeyEventHandlerBase_jnew_0()), JRef(UpKeyEventHandlerBase_jnew_0()), JRef(UpKeyEventHandlerBase_jnew_0()), JRef(UpKeyEventHandlerBase_jnew_0()), JRef(UpKeyEventHandlerBase_jnew_0())]
    end if
    jresult = UpKeyEventHandler_jcell_instanceArray
  end function

  subroutine UpKeyEventHandler_jsetstatic_instanceArray(jvalue)
    type(JRef) :: jvalue(:)
    UpKeyEventHandler_jset_instanceArray = .true.
    UpKeyEventHandler_jcell_instanceArray = jvalue
  end subroutine

  recursive function UpKeyEventHandler_jnew_0() result(this)
    class(UpKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'UpKeyEventHandler'
    this%f_playerInputIdFactory => LocalPlayerInputIdFactory_jm_getInstance_0()
        continue
  end function

  recursive function UpKeyEventHandler_jm_getInstance_0() result(jresult)
    class(UpKeyEventHandler), pointer :: jresult
        jresult => UpKeyEventHandler_jstatic_instance()
        return
  end function

  recursive function UpKeyEventHandler_jm_getInstanceForDevice_1(this, j_deviceId) result(jresult)
    class(UpKeyEventHandler), target :: this
    integer(4), value :: j_deviceId
    class(UpKeyEventHandlerBase), pointer :: jresult
    integer(4) :: j_playerInputId
        j_playerInputId = this%f_playerInputIdFactory%jm_getPlayerForDevice_1(j_deviceId)
        associate (jstaticref1 => UpKeyEventHandler_jstatic_instanceArray())
        jresult => UpKeyEventHandlerBase_jcast(jstaticref1((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive function UpKeyEventHandler_jm_getInstanceForPlayer_1(this, j_playerInputId) result(jresult)
    class(UpKeyEventHandler), target :: this
    integer(4), value :: j_playerInputId
    class(UpKeyEventHandlerBase), pointer :: jresult
        associate (jstaticref2 => UpKeyEventHandler_jstatic_instanceArray())
        jresult => UpKeyEventHandlerBase_jcast(jstaticref2((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive subroutine UpKeyEventHandler_jm_removeAllListeners_0(this)
    class(UpKeyEventHandler), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpKeyEventHandlerBase%jm_removeAllListeners_0()
        j_index = (size(UpKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref3 => UpKeyEventHandlerBase_jcast(UpKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref3%jm_removeAllListeners_0()
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine UpKeyEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(UpKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpKeyEventHandlerBase%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        j_index = (size(UpKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref4 => UpKeyEventHandlerBase_jcast(UpKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref4%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine UpKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(UpKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpKeyEventHandlerBase%jm_removeListener_1(j_eventListenerInterface)
        j_index = (size(UpKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref5 => UpKeyEventHandlerBase_jcast(UpKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref5%jm_removeListener_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine
end module UpKeyEventHandler_m

function UpKeyEventHandler_jnew_0_jext() result(this)
  use UpKeyEventHandler_m, only: JObject, UpKeyEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpKeyEventHandler_jnew_0()
end function

