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
! package org.allbinary.game.layer.hud.event
module GameNotificationEvent_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use Integer_m
  use Boolean_m
  implicit none

  type, extends(AllBinaryEventObject) :: GameNotificationEvent
    character(len=:), allocatable :: f_string
    integer(4) :: f_seconds = 0
    class(BasicColor), pointer :: f_basicColor => null()
    logical :: f_removeable = .false.
  contains
    procedure :: jm_getString_0 => GameNotificationEvent_jm_getString_0
    procedure :: jm_getSeconds_0 => GameNotificationEvent_jm_getSeconds_0
    procedure :: jm_getBasicColorP_0 => GameNotificationEvent_jm_getBasicColorP_0
    procedure :: jm_getPermanent_0 => GameNotificationEvent_jm_getPermanent_0
    procedure :: jm_setString_1 => GameNotificationEvent_jm_setString_1
    procedure :: jm_setBasicColorP_1 => GameNotificationEvent_jm_setBasicColorP_1
  end type


contains

  function GameNotificationEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameNotificationEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameNotificationEvent)
      jresult => object
    end select
  end function

  recursive function GameNotificationEvent_jnew_5(j_anyType, j_string, j_seconds, j_basicColor, j_permanent) result(this)
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_seconds
    class(BasicColor), target, optional :: j_basicColor
    logical, value :: j_permanent
    class(GameNotificationEvent), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameNotificationEvent'
    this%f_string = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_string = jtemp1%f_EMPTY_STRING
    
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp2%f_BLACK
    
        continue ! super()
        call this%jm_setString_1(j_string)
        this%f_seconds = j_seconds
        call this%jm_setBasicColorP_1(j_basicColor)
        this%f_removeable = j_permanent
  end function

  recursive function GameNotificationEvent_jm_getString_0(this) result(jresult)
    class(GameNotificationEvent), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_string
        return
  end function

  recursive function GameNotificationEvent_jm_getSeconds_0(this) result(jresult)
    class(GameNotificationEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_seconds
        return
  end function

  recursive function GameNotificationEvent_jm_getBasicColorP_0(this) result(jresult)
    class(GameNotificationEvent), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive function GameNotificationEvent_jm_getPermanent_0(this) result(jresult)
    class(GameNotificationEvent), target :: this
    logical :: jresult
        jresult = this%f_removeable
        return
  end function

  recursive subroutine GameNotificationEvent_jm_setString_1(this, j_string)
    class(GameNotificationEvent), target :: this
    character(len=*), intent(in) :: j_string
        this%f_string = j_string
  end subroutine

  recursive subroutine GameNotificationEvent_jm_setBasicColorP_1(this, j_basicColor)
    class(GameNotificationEvent), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine
end module GameNotificationEvent_m

