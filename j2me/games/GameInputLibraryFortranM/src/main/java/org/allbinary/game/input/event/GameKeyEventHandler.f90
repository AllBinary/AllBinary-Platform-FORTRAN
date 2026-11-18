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
module GameKeyEventHandler_m
  use JR_m
  use LogUtil_m
  use EventListenerInterface_m
  use CommonStrings_m
  use PressGameKeyEventHandler_m
  use UpGameKeyEventHandler_m
  use DownGameKeyEventHandler_m
  implicit none

  type, extends(JObject) :: GameKeyEventHandler
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(PressGameKeyEventHandler), pointer :: f_pressGameKeyEventHandler => null()
    class(UpGameKeyEventHandler), pointer :: f_upGameKeyEventHandler => null()
    class(DownGameKeyEventHandler), pointer :: f_downGameKeyEventHandler => null()
  contains
    procedure :: jm_removeAllListeners_0 => GameKeyEventHandler_jm_removeAllListeners_0
    procedure :: jm_addListenerForPlayer_2 => GameKeyEventHandler_jm_addListenerForPlayer_2
    procedure :: jm_addListener_1 => GameKeyEventHandler_jm_addListener_1
    procedure :: jm_removeListener_1 => GameKeyEventHandler_jm_removeListener_1
  end type

  class(GameKeyEventHandler), pointer, save :: GameKeyEventHandler_jcell_instance => null()
  logical, save :: GameKeyEventHandler_jset_instance = .false.

contains

  function GameKeyEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEventHandler)
      jresult => object
    end select
  end function

  function GameKeyEventHandler_jstatic_instance() result(jresult)
    class(GameKeyEventHandler), pointer :: jresult
    if (.not. GameKeyEventHandler_jset_instance) then
      GameKeyEventHandler_jset_instance = .true.
      GameKeyEventHandler_jcell_instance => GameKeyEventHandler_jnew_0()
    end if
    jresult => GameKeyEventHandler_jcell_instance
  end function

  subroutine GameKeyEventHandler_jsetstatic_instance(jvalue)
    class(GameKeyEventHandler), target, optional :: jvalue
    GameKeyEventHandler_jset_instance = .true.
    if (present(jvalue)) then
      GameKeyEventHandler_jcell_instance => jvalue
    else
      GameKeyEventHandler_jcell_instance => null()
    end if
  end subroutine

  function GameKeyEventHandler_jnew_0() result(this)
    class(GameKeyEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyEventHandler'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_pressGameKeyEventHandler => PressGameKeyEventHandler_jm_getInstance_0()
    this%f_upGameKeyEventHandler => UpGameKeyEventHandler_jm_getInstance_0()
    this%f_downGameKeyEventHandler => DownGameKeyEventHandler_jm_getInstance_0()
  end function

  recursive function GameKeyEventHandler_jm_getInstance_0() result(jresult)
    class(GameKeyEventHandler), pointer :: jresult
        jresult => GameKeyEventHandler_jstatic_instance()
        return
  end function

  recursive subroutine GameKeyEventHandler_jm_removeAllListeners_0(this)
    class(GameKeyEventHandler), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_pressGameKeyEventHandler%jm_removeAllListeners_0()
        call this%f_upGameKeyEventHandler%jm_removeAllListeners_0()
        call this%f_downGameKeyEventHandler%jm_removeAllListeners_0()
  end subroutine

  recursive subroutine GameKeyEventHandler_jm_addListenerForPlayer_2(this, j_eventListenerInterface, j_playerInputId)
    class(GameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    integer(4), value :: j_playerInputId
    class(UpGameKeyEventHandlerBase), pointer :: jtemp1
    class(DownGameKeyEventHandlerBase), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(j_eventListenerInterface%jm_toString_0(), this, this%f_commonStrings%f_ADD_LISTENER)
        call this%f_pressGameKeyEventHandler%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
        jtemp1 => this%f_upGameKeyEventHandler%jm_getInstanceForPlayer_1(j_playerInputId)
        call jtemp1%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
        jtemp2 => this%f_downGameKeyEventHandler%jm_getInstanceForPlayer_1(j_playerInputId)
        call jtemp2%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine GameKeyEventHandler_jm_addListener_1(this, j_eventListenerInterface)
    class(GameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(j_eventListenerInterface%jm_toString_0(), this, this%f_commonStrings%f_ADD_LISTENER)
        call this%f_pressGameKeyEventHandler%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
        call this%f_upGameKeyEventHandler%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
        call this%f_downGameKeyEventHandler%jm_addListenerSingleThreaded_1(j_eventListenerInterface)
  end subroutine

  recursive subroutine GameKeyEventHandler_jm_removeListener_1(this, j_eventListenerInterface)
    class(GameKeyEventHandler), target :: this
    class(EventListenerInterface), target, optional :: j_eventListenerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(j_eventListenerInterface%jm_toString_0(), this, this%f_commonStrings%f_REMOVE_LISTENER)
        call this%f_pressGameKeyEventHandler%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        call this%f_upGameKeyEventHandler%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
        call this%f_downGameKeyEventHandler%jm_removeListenerSingleThreaded_1(j_eventListenerInterface)
  end subroutine
end module GameKeyEventHandler_m

