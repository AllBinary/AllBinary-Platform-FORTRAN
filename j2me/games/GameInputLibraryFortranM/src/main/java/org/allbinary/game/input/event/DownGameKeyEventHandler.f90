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
module DownGameKeyEventHandler_m
  use JR_m
  use LocalPlayerInputIdFactory_m
  use EventListenerInterface_m
  use DownGameKeyEventHandlerBase_m
  implicit none

  type, extends(DownGameKeyEventHandlerBase) :: DownGameKeyEventHandler
    class(LocalPlayerInputIdFactory), pointer :: f_playerInputIdFactory => null()
  contains
    procedure :: jm_getInstanceForDevice_1 => DownGameKeyEventHandler_jm_getInstanceForDevice_1
    procedure :: jm_getInstanceForPlayer_1 => DownGameKeyEventHandler_jm_getInstanceForPlayer_1
    procedure :: jm_removeAllListeners_0 => DownGameKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_removeListenerSingleThreaded_1 => DownGameKeyEventHandler_jm_removeListenerSingleThreaded_1
    procedure :: jm_removeListener_1 => DownGameKeyEventHandler_jm_removeListener_1
  end type

  class(DownGameKeyEventHandler), pointer, save :: DownGameKeyEventHandler_jcell_instance => null()
  logical, save :: DownGameKeyEventHandler_jset_instance = .false.
  type(JRef), allocatable, save :: DownGameKeyEventHandler_jcell_instanceArray(:)
  logical, save :: DownGameKeyEventHandler_jset_instanceArray = .false.

contains

  function DownGameKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DownGameKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DownGameKeyEventHandler)
      jresult => object
    end select
  end function

  function DownGameKeyEventHandler_jstatic_instance() result(jresult)
    class(DownGameKeyEventHandler), pointer :: jresult
    if (.not. DownGameKeyEventHandler_jset_instance) then
      DownGameKeyEventHandler_jset_instance = .true.
      DownGameKeyEventHandler_jcell_instance => DownGameKeyEventHandler_jnew_0()
    end if
    jresult => DownGameKeyEventHandler_jcell_instance
  end function

  subroutine DownGameKeyEventHandler_jsetstatic_instance(jvalue)
    class(DownGameKeyEventHandler), target, optional :: jvalue
    DownGameKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      DownGameKeyEventHandler_jcell_instance => jvalue
    else
      DownGameKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function DownGameKeyEventHandler_jstatic_instanceArray() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. DownGameKeyEventHandler_jset_instanceArray) then
      DownGameKeyEventHandler_jset_instanceArray = .true.
      DownGameKeyEventHandler_jcell_instanceArray = [JRef :: JRef(DownGameKeyEventHandlerBase_jnew_0()), JRef(DownGameKeyEventHandlerBase_jnew_0()), JRef(DownGameKeyEventHandlerBase_jnew_0()), JRef(DownGameKeyEventHandlerBase_jnew_0()), JRef(DownGameKeyEventHandlerBase_jnew_0()), JRef(DownGameKeyEventHandlerBase_jnew_0())]
    end if
    jresult = DownGameKeyEventHandler_jcell_instanceArray
  end function

  subroutine DownGameKeyEventHandler_jsetstatic_instanceArray(jvalue)
    type(JRef) :: jvalue(:)
    DownGameKeyEventHandler_jset_instanceArray = .true.
    DownGameKeyEventHandler_jcell_instanceArray = jvalue
  end subroutine

  recursive function DownGameKeyEventHandler_jnew_0() result(this)
    class(DownGameKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'DownGameKeyEventHandler'
    this%f_playerInputIdFactory => LocalPlayerInputIdFactory_jm_getInstance_0()
        continue
  end function

  recursive function DownGameKeyEventHandler_jm_getInstance_0() result(jresult)
    class(DownGameKeyEventHandler), pointer :: jresult
        jresult => DownGameKeyEventHandler_jstatic_instance()
        return
  end function

  recursive function DownGameKeyEventHandler_jm_getInstanceForDevice_1(this, j_deviceId) result(jresult)
    class(DownGameKeyEventHandler), target :: this
    integer(4), value :: j_deviceId
    class(DownGameKeyEventHandlerBase), pointer :: jresult
    integer(4) :: j_playerInputId
        j_playerInputId = this%f_playerInputIdFactory%jm_getPlayerForDevice_1(j_deviceId)
        associate (jstaticref1 => DownGameKeyEventHandler_jstatic_instanceArray())
        jresult => DownGameKeyEventHandlerBase_jcast(jstaticref1((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive function DownGameKeyEventHandler_jm_getInstanceForPlayer_1(this, j_playerInputId) result(jresult)
    class(DownGameKeyEventHandler), target :: this
    integer(4), value :: j_playerInputId
    class(DownGameKeyEventHandlerBase), pointer :: jresult
        associate (jstaticref2 => DownGameKeyEventHandler_jstatic_instanceArray())
        jresult => DownGameKeyEventHandlerBase_jcast(jstaticref2((j_playerInputId) + 1)%v)
        end associate
        return
  end function

  recursive subroutine DownGameKeyEventHandler_jm_removeAllListeners_0(this)
    class(DownGameKeyEventHandler), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownGameKeyEventHandlerBase%jm_removeAllListeners_0()
        j_index = (size(DownGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref3 => DownGameKeyEventHandlerBase_jcast(DownGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref3%jm_removeAllListeners_0()
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine DownGameKeyEventHandler_jm_removeListenerSingleThreaded_1(this, j_eventListenerInterface)
    class(DownGameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownGameKeyEventHandlerBase%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        j_index = (size(DownGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref4 => DownGameKeyEventHandlerBase_jcast(DownGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref4%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine DownGameKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(DownGameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%DownGameKeyEventHandlerBase%jm_removeListener_1(j_eventListenerInterface)
        j_index = (size(DownGameKeyEventHandler_jstatic_instanceArray(), 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref5 => DownGameKeyEventHandlerBase_jcast(DownGameKeyEventHandler_jstatic_instanceArray()((j_index) + 1)%v))
            call jstaticref5%jm_removeListener_1(j_eventListenerInterface)
            end associate
            j_index = j_index - 1
        end do
  end subroutine
end module DownGameKeyEventHandler_m

function DownGameKeyEventHandler_jnew_0_jext() result(this)
  use DownGameKeyEventHandler_m, only: JObject, DownGameKeyEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => DownGameKeyEventHandler_jnew_0()
end function

