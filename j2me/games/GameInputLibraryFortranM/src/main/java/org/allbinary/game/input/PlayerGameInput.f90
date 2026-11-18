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
! package org.allbinary.game.input
module PlayerGameInput_m
  use JR_m
  use GameKeyEvent_m
  use GameKeyEventListenerInterface_m
  use ForcedLogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonLabels_m
  use BasicArrayList_m
  use Integer_m
  use GameInput_m
  use GameInputStrings_m
  implicit none

  type, extends(GameInput) :: PlayerGameInput
    class(GameInputStrings), pointer :: f_gameInputStrings => null()
    integer(4) :: f_playerInputId = 0
  contains
    procedure :: jm_onPressGameKeyEvent_1 => PlayerGameInput_jm_onPressGameKeyEvent_1
    procedure :: jm_onDownGameKeyEvent_1 => PlayerGameInput_jm_onDownGameKeyEvent_1
    procedure :: jm_onDownKeyEvent_1 => PlayerGameInput_jm_onDownKeyEvent_1
    procedure :: jm_onDownKey_1 => PlayerGameInput_jm_onDownKey_1
    procedure :: jm_onUpGameKeyEvent_1 => PlayerGameInput_jm_onUpGameKeyEvent_1
    procedure :: jm_onUpKeyEvent_1 => PlayerGameInput_jm_onUpKeyEvent_1
    procedure :: jm_onEvent_1 => PlayerGameInput_jm_onEvent_1
    procedure :: jm_getPlayerInputId_0 => PlayerGameInput_jm_getPlayerInputId_0
  end type

  ! PlayerGameInput used as a GameKeyEventListenerInterface
  type, extends(GameKeyEventListenerInterface) :: PlayerGameInput_jas_GameKeyEventListenerInterface
    class(PlayerGameInput), pointer :: jtarget => null()
  end type


contains

  function PlayerGameInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerGameInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerGameInput)
      jresult => object
    end select
  end function

  function PlayerGameInput_jas_GameKeyEventListenerInterface_jnew(object) result(jresult)
    class(PlayerGameInput), target :: object
    class(PlayerGameInput_jas_GameKeyEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PlayerGameInput'
    jresult%jtarget => object
  end function

  recursive function PlayerGameInput_jnew_3(j_gameKeyEventList, j_removalGameKeyEventList, j_playerInputId) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    class(BasicArrayList), target, optional :: j_removalGameKeyEventList
    integer(4), value :: j_playerInputId
    class(PlayerGameInput), pointer :: this
    allocate(this)
    this%jclass = 'PlayerGameInput'
    this%f_gameInputStrings => GameInputStrings_jm_getInstance_0()
    
        continue ! super()
        this%f_playerInputId = j_playerInputId
  end function

  recursive subroutine PlayerGameInput_jm_onPressGameKeyEvent_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_add_1(j_gameKeyEvent)
        call this%jm_addForRemoval_1(j_gameKeyEvent)
  end subroutine

  recursive subroutine PlayerGameInput_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_add_1(j_gameKeyEvent)
  end subroutine

  recursive subroutine PlayerGameInput_jm_onDownKeyEvent_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_add_1(j_gameKeyEvent)
        call this%jm_addForRemoval_1(j_gameKeyEvent)
  end subroutine

  recursive subroutine PlayerGameInput_jm_onDownKey_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    integer(4), value :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(CommonLabels), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => CommonLabels_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(jtemp4%f_START_LABEL)
        jtemp1 => jtemp2%jm_append_1(JR_toString(j_gameKeyEvent))
        call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, this%f_gameInputStrings%f_ON_DOWN_GAME_KEY)
  end subroutine

  recursive subroutine PlayerGameInput_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_addForRemoval_1(j_gameKeyEvent)
  end subroutine

  recursive subroutine PlayerGameInput_jm_onUpKeyEvent_1(this, j_gameKeyEvent)
    class(PlayerGameInput), target :: this
    integer(4), value :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine PlayerGameInput_jm_onEvent_1(this, j_eventObject)
    class(PlayerGameInput), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp5 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp5%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive function PlayerGameInput_jm_getPlayerInputId_0(this) result(jresult)
    class(PlayerGameInput), target :: this
    integer(4) :: jresult
        jresult = this%f_playerInputId
        return
  end function
end module PlayerGameInput_m

