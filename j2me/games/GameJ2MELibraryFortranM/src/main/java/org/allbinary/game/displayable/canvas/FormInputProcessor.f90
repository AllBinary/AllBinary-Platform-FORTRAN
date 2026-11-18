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
! package org.allbinary.game.displayable.canvas
module FormInputProcessor_m
  use JR_m
  use GameKey_m
  use GameKeyEventSourceInterface_m
  use GameKeyFactory_m
  use Input_m
  use InputFactory_m
  use InputProcessor_m
  use PlatformKeyFactory_m
  use DownKeyEventHandler_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use UpGameKeyEventHandler_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(InputProcessor) :: FormInputProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    class(DownKeyEventHandler), pointer :: f_downKeyEventHandler => null()
    class(UpGameKeyEventHandler), pointer :: f_upGameKeyEventHandler => null()
    class(InputFactory), pointer :: f_inputFactory => null()
    class(PlatformKeyFactory), pointer :: f_platformKeyFactory => null()
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
  contains
    procedure :: jm_keyPressedByDevice_2 => FormInputProcessor_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_3 => FormInputProcessor_jm_keyReleasedByDevice_3
  end type


contains

  function FormInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormInputProcessor)
      jresult => object
    end select
  end function

  recursive function FormInputProcessor_jnew_1(j_allBinaryGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(FormInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'FormInputProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    this%f_downKeyEventHandler => DownKeyEventHandler_jm_getInstance_0()
    this%f_upGameKeyEventHandler => UpGameKeyEventHandler_jm_getInstance_0()
    this%f_inputFactory => InputFactory_jm_getInstance_0()
    this%f_platformKeyFactory => PlatformKeyFactory_jm_getInstance_0()
    
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
  end function

  recursive subroutine FormInputProcessor_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(FormInputProcessor), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(Input), pointer :: j_input
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(CommonSeps), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp6 => StringMaker_jnew_0()
            jtemp7 => CommonSeps_jm_getInstance_0()
            jtemp5 => jtemp6%jm_append_1(this%f_inputFactory%f_KEY_CODE_LABEL)
            jtemp4 => jtemp5%jm_appendint_1(j_keyCode)
            jtemp3 => jtemp4%jm_append_1(jtemp7%f_SPACE)
            jtemp2 => jtemp3%jm_append_1(this%f_inputFactory%f_DEVICE_ID_LABEL)
            jtemp1 => jtemp2%jm_appendint_1(j_deviceId)
            call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, this%f_gameInputStrings%f_KEY_PRESSED)
            j_input => this%f_inputFactory%jm_getInstanceById_1(j_keyCode)
            j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this%f_allBinaryGameCanvas, j_input)
            call this%f_downKeyEventHandler%jm_fireEventForGameKeyEvent_1(j_gameKeyEvent)
  end subroutine

  recursive subroutine FormInputProcessor_jm_keyReleasedByDevice_3(this, j_canvas, j_keyCode, j_deviceId)
    class(FormInputProcessor), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(Input), pointer :: j_input
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEventSourceInterface), pointer :: j_gameKeyEventSourceInterface
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(CommonSeps), pointer :: jtemp14
    class(GameKeyFactory), pointer :: jtemp15
    class(UpGameKeyEventHandlerBase), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_input => this%f_inputFactory%jm_getInstanceById_1(j_keyCode)
            if (this%f_platformKeyFactory%jm_isEnter_1(j_input)) then
                jtemp13 => StringMaker_jnew_0()
                jtemp14 => CommonSeps_jm_getInstance_0()
                jtemp12 => jtemp13%jm_append_1(this%f_inputFactory%f_KEY_CODE_LABEL)
                jtemp11 => jtemp12%jm_appendint_1(j_keyCode)
                jtemp10 => jtemp11%jm_append_1(jtemp14%f_SPACE)
                jtemp9 => jtemp10%jm_append_1(this%f_inputFactory%f_DEVICE_ID_LABEL)
                jtemp8 => jtemp9%jm_appendint_1(j_deviceId)
                call PreLogUtil_jm_put_3(jtemp8%jm_toString_0(), this, this%f_gameInputStrings%f_KEY_RELEASED)
                jtemp15 => GameKeyFactory_jm_getInstance_0()
                j_gameKey => jtemp15%f_KEY_NUM0
                j_gameKeyEventSourceInterface => GameKeyEventSourceInterface_jcast(j_canvas)
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(j_gameKeyEventSourceInterface, j_gameKey)
                call this%f_upGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp16 => this%f_upGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp16%jm_fireEvent_1(j_gameKeyEvent)
            end if
  end subroutine
end module FormInputProcessor_m

