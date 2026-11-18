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
module UpGameKeyEventHandler_m
  use JR_m
  use LocalPlayerInputIdFactory_m
  use EventListenerInterface_m
  use UpGameKeyEventHandlerBase_m
  implicit none

  type, extends(UpGameKeyEventHandlerBase) :: UpGameKeyEventHandler
    class(LocalPlayerInputIdFactory), pointer :: f_playerInputIdFactory => null()
  contains
    procedure :: jm_getInstanceForDevice_1 => UpGameKeyEventHandler_jm_getInstanceForDevice_1
    procedure :: jm_getInstanceForPlayer_1 => UpGameKeyEventHandler_jm_getInstanceForPlayer_1
    procedure :: jm_removeAllListeners_0 => UpGameKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => UpGameKeyEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => UpGameKeyEventHandler_jm_removeListener_1
  end type

  class(UpGameKeyEventHandler), pointer, save :: UpGameKeyEventHandler_jcell_instance => null()
  logical, save :: UpGameKeyEventHandler_jset_instance = .false.
  type(JRef), allocatable, save :: UpGameKeyEventHandler_jcell_instanceArray(:)
  logical, save :: UpGameKeyEventHandler_jset_instanceArray = .false.

contains

  function UpGameKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpGameKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpGameKeyEventHandler)
      jresult => object
    end select
  end function

  function UpGameKeyEventHandler_jstatic_instance() result(jresult)
    class(UpGameKeyEventHandler), pointer :: jresult
    if (.not. UpGameKeyEventHandler_jset_instance) then
      UpGameKeyEventHandler_jset_instance = .true.
      UpGameKeyEventHandler_jcell_instance => UpGameKeyEventHandler_jnew_0()
    end if
    jresult => UpGameKeyEventHandler_jcell_instance
  end function

  subroutine UpGameKeyEventHandler_jsetstatic_instance(jvalue)
    class(UpGameKeyEventHandler), target, optional :: jvalue
    UpGameKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      UpGameKeyEventHandler_jcell_instance => jvalue
    else
      UpGameKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function UpGameKeyEventHandler_jstatic_instanceArray() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. UpGameKeyEventHandler_jset_instanceArray) then
      UpGameKeyEventHandler_jset_instanceArray = .true.
      UpGameKeyEventHandler_jcell_instanceArray = [JRef :: JRef(UpGameKeyEventHandlerBase_jnew_0()), JRef(UpGameKeyEventHandlerBase_jnew_0()), JRef(UpGameKeyEventHandlerBase_jnew_0()), JRef(UpGameKeyEventHandlerBase_jnew_0()), JRef(UpGameKeyEventHandlerBase_jnew_0()), JRef(UpGameKeyEventHandlerBase_jnew_0())]
    end if
    jresult = UpGameKeyEventHandler_jcell_instanceArray
  end function

  subroutine UpGameKeyEventHandler_jsetstatic_instanceArray(jvalue)
    type(JRef) :: jvalue(:)
    UpGameKeyEventHandler_jset_instanceArray = .true.
    UpGameKeyEventHandler_jcell_instanceArray = jvalue
  end subroutine

  recursive function UpGameKeyEventHandler_jnew_0() result(this)
    class(UpGameKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'UpGameKeyEventHandler'
    this%f_playerInputIdFactory => LocalPlayerInputIdFactory_jm_getInstance_0()
        continue
  end function

  recursive function UpGameKeyEventHandler_jm_getInstance_0() result(jresult)
    class(UpGameKeyEventHandler), pointer :: jresult
        jresult => UpGameKeyEventHandler_jstatic_instance()
        return
  end function

  recursive function UpGameKeyEventHandler_jm_getInstanceForDevice_1(this, j_deviceId) result(jresult)
    class(UpGameKeyEventHandler), target :: this
    integer(4), value :: j_deviceId
    class(UpGameKeyEventHandlerBase), pointer :: jresult
    integer(4) :: j_playerInputId
        j_playerInputId = this%f_playerInputIdFactory%jm_getPlayerForDevice_1(j_deviceId)
        associate (jstaticref1 => UpGameKeyEventHandler_jstatic_instanceArray())
        jresult => UpGameKeyEventHandlerBase_jcast(jstaticref1((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive function UpGameKeyEventHandler_jm_getInstanceForPlayer_1(this, j_playerInputId) result(jresult)
    class(UpGameKeyEventHandler), target :: this
    integer(4), value :: j_playerInputId
    class(UpGameKeyEventHandlerBase), pointer :: jresult
        associate (jstaticref2 => UpGameKeyEventHandler_jstatic_instanceArray())
        jresult => UpGameKeyEventHandlerBase_jcast(jstaticref2((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive subroutine UpGameKeyEventHandler_jm_removeAllListeners_0(this)
    class(UpGameKeyEventHandler), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpGameKeyEventHandlerBase%jm_removeAllListeners_0()
        j_index = (size(UpGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref3 => UpGameKeyEventHandlerBase_jcast(UpGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref3%jm_removeAllListeners_0()
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine UpGameKeyEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(UpGameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpGameKeyEventHandlerBase%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        j_index = (size(UpGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref4 => UpGameKeyEventHandlerBase_jcast(UpGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref4%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine UpGameKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(UpGameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%UpGameKeyEventHandlerBase%jm_removeListener_1(j_eventListenerInterface)
        j_index = (size(UpGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref5 => UpGameKeyEventHandlerBase_jcast(UpGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref5%jm_removeListener_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine
end module UpGameKeyEventHandler_m

function UpGameKeyEventHandler_jnew_0_jext() result(this)
  use UpGameKeyEventHandler_m, only: JObject, UpGameKeyEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => UpGameKeyEventHandler_jnew_0()
end function

