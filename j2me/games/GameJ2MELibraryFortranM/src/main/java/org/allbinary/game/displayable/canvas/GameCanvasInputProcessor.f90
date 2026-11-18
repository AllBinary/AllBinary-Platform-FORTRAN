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
module GameCanvasInputProcessor_m
  use JR_m
  use GameKey_m
  use GameKeyEventSourceInterface_m
  use GameKeyFactory_m
  use InputProcessor_m
  use PlatformInputMappingFactory_m
  use DownGameKeyEventHandler_m
  use DownKeyEventHandler_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use UpGameKeyEventHandler_m
  use InputToGameKeyMapping_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use Integer_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(InputProcessor) :: GameCanvasInputProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
    class(DownGameKeyEventHandler), pointer :: f_downGameKeyEventHandler => null()
    class(UpGameKeyEventHandler), pointer :: f_upGameKeyEventHandler => null()
    class(DownKeyEventHandler), pointer :: f_downKeyEventHandler => null()
    class(SmallIntegerSingletonFactory), pointer :: f_smallIntegerSingletonFactory => null()
    class(InputToGameKeyMapping), pointer :: f_inputToGameKeyMapping => null()
    class(GameKey), pointer :: f_NONE => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
  contains
    procedure :: jm_keyPressedByDevice_2 => GameCanvasInputProcessor_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_3 => GameCanvasInputProcessor_jm_keyReleasedByDevice_3
    procedure :: jm_removeGameKeyEvent_4 => GameCanvasInputProcessor_jm_removeGameKeyEvent_4
  end type


contains

  function GameCanvasInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasInputProcessor)
      jresult => object
    end select
  end function

  recursive function GameCanvasInputProcessor_jnew_1(j_allBinaryGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(GameCanvasInputProcessor), pointer :: this
    class(PersistentInputMapping), pointer :: jtemp1
    class(PlatformInputMappingFactory), pointer :: jtemp2
    class(GameKeyFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameCanvasInputProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_downGameKeyEventHandler => DownGameKeyEventHandler_jm_getInstance_0()
    this%f_upGameKeyEventHandler => UpGameKeyEventHandler_jm_getInstance_0()
    this%f_downKeyEventHandler => DownKeyEventHandler_jm_getInstance_0()
    this%f_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
    jtemp2 => PlatformInputMappingFactory_jm_getInstance_0()
    jtemp1 => jtemp2%jm_getPersistentInputMappingInstance_0()
    this%f_inputToGameKeyMapping => jtemp1%jm_getInputMapping_0()
    jtemp3 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp3%f_NONE
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
        call this%f_inputToGameKeyMapping%jm_init_1(this%f_allBinaryGameCanvas)
  end function

  recursive subroutine GameCanvasInputProcessor_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(GameCanvasInputProcessor), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_keyCodeAsInteger
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(DownGameKeyEventHandlerBase), pointer :: jtemp7
    class(DownKeyEventHandlerBase), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(this%f_allBinaryGameCanvas, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_NONE))) then
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(this%f_allBinaryGameCanvas, j_gameKey)
                call this%f_downGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp7 => this%f_downGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp7%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp6 => StringMaker_jnew_0()
                jtemp5 => jtemp6%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp4 => jtemp5%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, this%f_gameInputStrings%f_ADD_KEY_EVENT)
            end if
            j_keyCodeAsInteger = this%f_smallIntegerSingletonFactory%jm_getAtNoThrow_1(j_keyCode)
            call this%f_downKeyEventHandler%jm_fireEventI_1(j_keyCodeAsInteger)
            jtemp8 => this%f_downKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
            call jtemp8%jm_fireEventI_1(j_keyCodeAsInteger)
  end subroutine

  recursive subroutine GameCanvasInputProcessor_jm_keyReleasedByDevice_3(this, j_canvas, j_keyCode, j_deviceId)
    class(GameCanvasInputProcessor), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeGameKeyEvent_4(j_canvas, j_keyCode, j_deviceId, .false.)
  end subroutine

  recursive subroutine GameCanvasInputProcessor_jm_removeGameKeyEvent_4(this, j_canvas, j_keyCode, j_deviceId, j_repeated)
    class(GameCanvasInputProcessor), target :: this
    class(Canvas), target, optional :: j_canvas
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(GameKey), pointer :: j_gameKey
    class(GameKeyEventSourceInterface), pointer :: j_gameKeyEventSourceInterface
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(UpGameKeyEventHandlerBase), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameKey => this%f_inputToGameKeyMapping%jm_getInstanceForCanvas_2(j_canvas, j_keyCode)
            if ((.not. JR_same(j_gameKey, this%f_NONE))) then
                j_gameKeyEventSourceInterface => GameKeyEventSourceInterface_jcast(j_canvas)
                j_gameKeyEvent => this%f_gameKeyEventFactory%jm_getInstanceForInput_2(j_gameKeyEventSourceInterface, j_gameKey)
                call this%f_upGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp12 => this%f_upGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp12%jm_fireEvent_1(j_gameKeyEvent)
            else
                jtemp11 => StringMaker_jnew_0()
                jtemp10 => jtemp11%jm_append_1(this%f_gameInputStrings%f_NO_KEY)
                jtemp9 => jtemp10%jm_appendint_1(j_keyCode)
                call this%f_logUtil%jm_putF_3(jtemp9%jm_toString_0(), this, this%f_gameInputStrings%f_REMOVE_KEY_EVENT)
            end if
  end subroutine
end module GameCanvasInputProcessor_m

