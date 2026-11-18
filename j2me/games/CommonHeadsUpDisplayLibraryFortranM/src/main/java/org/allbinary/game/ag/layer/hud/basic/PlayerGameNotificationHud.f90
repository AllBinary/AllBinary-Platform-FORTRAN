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
! package org.allbinary.game.ag.layer.hud.basic
module PlayerGameNotificationHud_m
  use JR_m
  use GameAdStateFactory_m
  use Processor_m
  use GameAdState_m
  use GameNotification_m
  use GameNotificationHud_m
  use GameNotificationEventHandler_m
  use CustomGPoint_m
  use GPoint_m
  use BasicColor_m
  use DisplayInfoSingleton_m
  use UpdateMyFontInterface_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use CircularIndexUtil_m
  use Integer_m
  use Boolean_m
  use SetAndRemoveProcessor_m
  use NextUnremoveableProcessor_m
  implicit none

  type, extends(GameNotificationHud) :: PlayerGameNotificationHud
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
    character(len=:), allocatable :: f_EMPTY_STRING
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    class(GameNotification), pointer :: f_gameNotification => null()
    class(GameNotification), pointer :: f_permanentGameNotification => null()
    class(Processor), pointer :: f_setAndRemoveProcessor => null()
    class(Processor), pointer :: f_nextUnremoveableProcessor => null()
    class(Processor), pointer :: f_processor => null()
    character(len=:), allocatable :: f_PERMANENT_GAME_NOTIFICATION
    character(len=:), allocatable :: f_lastString
    character(len=:), allocatable :: f_string
    class(CustomGPoint), pointer :: f_point => null()
    integer(4) :: f_width = 0
  contains
    procedure :: jm_updateMeasurement_1 => PlayerGameNotificationHud_jm_updateMeasurement_1
    procedure :: jm_getPoint_2 => PlayerGameNotificationHud_jm_getPoint_2
    procedure :: jm_add_4 => PlayerGameNotificationHud_jm_add_4
    procedure :: jm_processTick_0 => PlayerGameNotificationHud_jm_processTick_0
    procedure :: jm_setAndRemove_0 => PlayerGameNotificationHud_jm_setAndRemove_0
    procedure :: jm_setAndRemoveProcess_0 => PlayerGameNotificationHud_jm_setAndRemoveProcess_0
    procedure :: jm_setNextUnremoveable_0 => PlayerGameNotificationHud_jm_setNextUnremoveable_0
    procedure :: jm_setNextUnremoveableProcess_0 => PlayerGameNotificationHud_jm_setNextUnremoveableProcess_0
    procedure :: jm_clear_0 => PlayerGameNotificationHud_jm_clear_0
    procedure :: jm_paint_1 => PlayerGameNotificationHud_jm_paint_1
  end type

  ! PlayerGameNotificationHud used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: PlayerGameNotificationHud_jas_UpdateMyFontInterface
    class(PlayerGameNotificationHud), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => PlayerGameNotificationHud_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function PlayerGameNotificationHud_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerGameNotificationHud), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerGameNotificationHud)
      jresult => object
    end select
  end function

  function PlayerGameNotificationHud_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(PlayerGameNotificationHud), target :: object
    class(PlayerGameNotificationHud_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PlayerGameNotificationHud'
    jresult%jtarget => object
  end function

  recursive subroutine PlayerGameNotificationHud_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(PlayerGameNotificationHud_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function PlayerGameNotificationHud_jnew_4(j_location, j_direction, j_bufferZone, j_basicColor) result(this)
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(PlayerGameNotificationHud), pointer :: this
    class(GameNotificationEventHandler), pointer :: j_gameNotificationEventHandler
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PlayerGameNotificationHud'
    this%f_EMPTY_STRING = ''
    this%f_PERMANENT_GAME_NOTIFICATION = ''
    this%f_lastString = ''
    this%f_string = ''
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp1%f_EMPTY_STRING
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(0)
    
    this%f_gameNotification => GameNotification_jnew_0()
    this%f_permanentGameNotification => GameNotification_jnew_0()
    this%f_setAndRemoveProcessor => SetAndRemoveProcessor_jnew_1(this)
    this%f_nextUnremoveableProcessor => NextUnremoveableProcessor_jnew_1(this)
    this%f_processor => Processor_jm_getInstance_0()
    this%f_PERMANENT_GAME_NOTIFICATION = 'Permanent Game Notification: '
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_lastString = jtemp2%f_EMPTY_STRING
    this%f_string = this%f_EMPTY_STRING
    this%f_point => CustomGPoint_jstatic_NULL_CUSTOM_POINT()
    
        continue ! super()
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(0)
        j_gameNotificationEventHandler => GameNotificationEventHandler_jm_getInstance_0()
        call j_gameNotificationEventHandler%jm_removeAllListeners_0()
        call j_gameNotificationEventHandler%jm_addListenerInterface_1(this)
  end function

  recursive subroutine PlayerGameNotificationHud_jm_updateMeasurement_1(this, j_graphics)
    class(PlayerGameNotificationHud), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%GameNotificationHud%jm_updateMeasurement_1(j_graphics)
            j_font => j_graphics%jm_getFont_0()
            this%f_width = j_font%jm_stringWidth_1(this%f_string)
            call this%f_processor%jm_process_0()
            this%f_processor => Processor_jm_getInstance_0()
  end subroutine

  recursive function PlayerGameNotificationHud_jm_getPoint_2(this, j_x, j_y) result(jresult)
    class(PlayerGameNotificationHud), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(GPoint), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_point => CustomGPoint_jm_getInstance3_2(0, 0)
        call this%f_point%jm_setX_1(j_x)
        call this%f_point%jm_setY_1(j_y)
        jresult => this%f_point
        return
  end function

  recursive subroutine PlayerGameNotificationHud_jm_add_4(this, j_string, j_seconds, j_basicColor, j_permanent)
    class(PlayerGameNotificationHud), target :: this
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_seconds
    class(BasicColor), target, optional :: j_basicColor
    logical, value :: j_permanent
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_permanent) then
            if ((.not. JR_strEquals(this%f_lastString, j_string))) then
                this%f_lastString = j_string
                jtemp5 => StringMaker_jnew_0()
                jtemp4 => jtemp5%jm_append_1(this%f_PERMANENT_GAME_NOTIFICATION)
                jtemp3 => jtemp4%jm_append_1(j_string)
                call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_ADD)
            end if
            call this%f_permanentGameNotification%jm_add_3(j_string, j_seconds, j_basicColor)
            call this%f_circularIndexUtil%jm_setSize_1(this%f_permanentGameNotification%jm_getSize_0())
        else
            call this%f_gameNotification%jm_add_3(j_string, j_seconds, j_basicColor)
        end if
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_processTick_0(this)
    class(PlayerGameNotificationHud), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(GameAdStateFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_timeDelayHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
            jtemp6 => GameAdStateFactory_jm_getInstance_0()
            j_gameAdState => jtemp6%jm_getCurrentInstance_0()
            if (j_gameAdState%jm_isShowingAtLocation_1(this%jm_getLocation_0())) then
                this%f_offsetY = (-54)
            else
                this%f_offsetY = 0
            end if
            if ((this%f_gameNotification%jm_getSize_0() > 0)) then
                call this%jm_setAndRemove_0()
            else if ((this%f_permanentGameNotification%jm_getSize_0() > 0)) then
                call this%jm_setNextUnremoveable_0()
            else
                this%f_string = this%f_EMPTY_STRING
            end if
        end if
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_setAndRemove_0(this)
    class(PlayerGameNotificationHud), target :: this
        this%f_string = this%f_gameNotification%f_stringList%jm_removeAt_1(0)
        this%f_processor => this%f_setAndRemoveProcessor
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_setAndRemoveProcess_0(this)
    class(PlayerGameNotificationHud), target :: this
    integer(4) :: j_time
    integer(4) :: j_iTime
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setX_1(shifta(((this%f_displayInfo%jm_getLastWidth_0() - this%f_width)), iand(1, 31)))
        call this%f_point%jm_setX_1(this%jm_getX_0())
        call this%f_point%jm_setY_1(this%jm_getY_0())
        j_time = JR_unboxInt(this%f_gameNotification%f_timeList%jm_removeAt_1(0))
        j_iTime = (int(j_time, 4) * 1000)
        if ((j_iTime == 0)) then
            j_iTime = 500
        end if
        this%f_timeDelayHelper%f_delay = j_iTime
        call this%jm_setBasicColorP_1(BasicColor_jcast(this%f_gameNotification%f_colorList%jm_removeAt_1(0)))
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_setNextUnremoveable_0(this)
    class(PlayerGameNotificationHud), target :: this
    integer(4) :: j_index
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        this%f_string = this%f_permanentGameNotification%f_stringList%f_objectArray((j_index) + 1)%v
        this%f_processor => this%f_nextUnremoveableProcessor
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_setNextUnremoveableProcess_0(this)
    class(PlayerGameNotificationHud), target :: this
    integer(4) :: j_index
    integer(4) :: j_time
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = this%f_circularIndexUtil%jm_getIndex_0()
        call this%jm_setX_1(shifta(((this%f_displayInfo%jm_getLastWidth_0() - this%f_width)), iand(1, 31)))
        call this%f_point%jm_setX_1(this%jm_getX_0())
        call this%f_point%jm_setY_1(this%jm_getY_0())
        j_time = JR_unboxInt(this%f_permanentGameNotification%f_timeList%f_objectArray((j_index) + 1)%v)
        this%f_timeDelayHelper%f_delay = (int(j_time, 4) * 1000)
        call this%jm_setBasicColorP_1(BasicColor_jcast(this%f_permanentGameNotification%f_colorList%f_objectArray((j_index) + 1)%v))
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_clear_0(this)
    class(PlayerGameNotificationHud), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameNotification%jm_clear_0()
        call this%f_permanentGameNotification%jm_clear_0()
  end subroutine

  recursive subroutine PlayerGameNotificationHud_jm_paint_1(this, j_graphics)
    class(PlayerGameNotificationHud), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%GameNotificationHud%jm_paintString_2(j_graphics, this%f_string)
  end subroutine
end module PlayerGameNotificationHud_m

