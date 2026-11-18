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
! package org.allbinary.game
module GameAdState_m
  use JR_m
  use GameAdStateBase_m
  use AdConfiguration_m
  use VirtualKeyboardEvent_m
  use VirtualKeyboardEventHandler_m
  use VirtualKeyboardEventListenerInterface_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(GameAdStateBase) :: GameAdState
  contains
    procedure :: jm_onVirtualKeyboardEvent_1 => GameAdState_jm_onVirtualKeyboardEvent_1
    procedure :: jm_onEvent_1 => GameAdState_jm_onEvent_1
  end type

  ! GameAdState used as a VirtualKeyboardEventListenerInterface
  type, extends(VirtualKeyboardEventListenerInterface) :: GameAdState_jas_VirtualKeyboardEventListenerInterface
    class(GameAdState), pointer :: jtarget => null()
  contains
    procedure :: jm_onVirtualKeyboardEvent_1 => GameAdState_jas_VirtualKeyboardEventListenerInterface_jm_onVirtualKeyboardEvent_1
  end type


contains

  function GameAdState_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameAdState), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameAdState)
      jresult => object
    end select
  end function

  function GameAdState_jas_VirtualKeyboardEventListenerInterface_jnew(object) result(jresult)
    class(GameAdState), target :: object
    class(GameAdState_jas_VirtualKeyboardEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GameAdState'
    jresult%jtarget => object
  end function

  recursive subroutine GameAdState_jas_VirtualKeyboardEventListenerInterface_jm_onVirtualKeyboardEvent_1(this, j_virtualKeyboardEvent)
    class(GameAdState_jas_VirtualKeyboardEventListenerInterface), target :: this
    class(VirtualKeyboardEvent), target, optional :: j_virtualKeyboardEvent
    call this%jtarget%jm_onVirtualKeyboardEvent_1(j_virtualKeyboardEvent)
  end subroutine

  recursive function GameAdState_jnew_1(j_adConfiguration) result(this)
    class(AdConfiguration), target, optional :: j_adConfiguration
    class(GameAdState), pointer :: this
    class(VirtualKeyboardEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameAdState'
        continue ! super()
        jtemp1 => VirtualKeyboardEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListenerInterface_1(this)
  end function

  recursive subroutine GameAdState_jm_onVirtualKeyboardEvent_1(this, j_virtualKeyboardEvent)
    class(GameAdState), target :: this
    class(VirtualKeyboardEvent), target, optional :: j_virtualKeyboardEvent
    continue
  end subroutine

  recursive subroutine GameAdState_jm_onEvent_1(this, j_eventObject)
    class(GameAdState), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%GameAdStateBase%jm_onEvent_1(j_eventObject)
  end subroutine
end module GameAdState_m

