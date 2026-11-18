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
! package org.allbinary.game.ag.layer.hud.basic.notification
module GameNotification_m
  use JR_m
  use GameNotificationEvent_m
  use BasicColor_m
  use BasicColorFactory_m
  use NullUtil_m
  use BooleanFactory_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  implicit none

  type, extends(JObject) :: GameNotification
    class(BasicArrayList), pointer :: f_stringList => null()
    class(BasicArrayList), pointer :: f_timeList => null()
    class(BasicArrayList), pointer :: f_colorList => null()
  contains
    procedure :: jm_add_3 => GameNotification_jm_add_3
    procedure :: jm_clear_0 => GameNotification_jm_clear_0
    procedure :: jm_getSize_0 => GameNotification_jm_getSize_0
  end type

  class(GameNotificationEvent), pointer, save :: GameNotification_jcell_NULL_GAME_NOTIFICATION_EVENT => null()
  logical, save :: GameNotification_jset_NULL_GAME_NOTIFICATION_EVENT = .false.

contains

  function GameNotification_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameNotification), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameNotification)
      jresult => object
    end select
  end function

  function GameNotification_jstatic_NULL_GAME_NOTIFICATION_EVENT() result(jresult)
    class(GameNotificationEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    class(BooleanFactory), pointer :: jtemp4
    if (.not. GameNotification_jset_NULL_GAME_NOTIFICATION_EVENT) then
      GameNotification_jset_NULL_GAME_NOTIFICATION_EVENT = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    jtemp2 => StringUtil_jm_getInstance_0()
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    jtemp4 => BooleanFactory_jm_getInstance_0()
    GameNotification_jcell_NULL_GAME_NOTIFICATION_EVENT => GameNotificationEvent_jnew_5(jtemp1%f_NULL_OBJECT, jtemp2%f_EMPTY_STRING, 0, jtemp3%f_RED, jtemp4%f_FALSE)
    end if
    jresult => GameNotification_jcell_NULL_GAME_NOTIFICATION_EVENT
  end function

  subroutine GameNotification_jsetstatic_NULL_GAME_NOTIFICATION_EVENT(jvalue)
    class(GameNotificationEvent), target, optional :: jvalue
    GameNotification_jset_NULL_GAME_NOTIFICATION_EVENT = .true.
    if (present(jvalue)) then
      GameNotification_jcell_NULL_GAME_NOTIFICATION_EVENT => jvalue
    else
      GameNotification_jcell_NULL_GAME_NOTIFICATION_EVENT => null()
    end if
  end subroutine

  function GameNotification_jnew_0() result(this)
    class(GameNotification), pointer :: this
    allocate(this)
    this%jclass = 'GameNotification'
    this%f_stringList => BasicArrayListD_jnew_0()
    this%f_timeList => BasicArrayListD_jnew_0()
    this%f_colorList => BasicArrayListD_jnew_0()
  end function

  recursive subroutine GameNotification_jm_add_3(this, j_string, j_seconds, j_basicColor)
    class(GameNotification), target :: this
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_seconds
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_stringList%jm_contains_1(JR_boxString(j_string)))) then
            jdiscardBoolean = this%f_stringList%jm_add_1(JR_boxString(j_string))
            jdiscardBoolean = this%f_timeList%jm_add_1(j_seconds)
            jdiscardBoolean = this%f_colorList%jm_add_1(j_basicColor)
        end if
  end subroutine

  recursive subroutine GameNotification_jm_clear_0(this)
    class(GameNotification), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_stringList%jm_clear_0()
        call this%f_timeList%jm_clear_0()
        call this%f_colorList%jm_clear_0()
  end subroutine

  recursive function GameNotification_jm_getSize_0(this) result(jresult)
    class(GameNotification), target :: this
    integer(4) :: jresult
        jresult = this%f_stringList%jm_size_0()
        return
  end function
end module GameNotification_m

