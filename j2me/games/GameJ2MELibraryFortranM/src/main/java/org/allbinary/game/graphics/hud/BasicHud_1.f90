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
! package org.allbinary.game.graphics.hud
module BasicHud_1_m
  use JR_m
  use Anchor_m
  use GPoint_m
  use PointFactory_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use CanvasStrings_m
  use DisplayInfoSingleton_m
  use DisplayChangeEvent_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use ForcedLogUtil_m
  use LogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonStrings_m
  use HudGraphicsPosition_m
  use BasicHudFactory_m
  implicit none

  type, extends(UpdateMyFontInterface) :: BasicHud_1
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CanvasStrings), pointer :: f_canvasStrings => null()
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(DisplayInfoSingleton), pointer :: f_displayInfo => null()
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_location = 0
    integer(4) :: f_direction = 0
    integer(4) :: f_bufferZone = 0
    class(HudGraphicsPosition), pointer :: f_hudGraphicsPosition => null()
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_color = 0
    integer(4) :: f_updateMaxWidth = 0
    integer(4) :: f_updateMaxHeight = 0
    integer(4) :: f_offsetY = 0
  contains
    procedure :: jm_updateMeasurement_1 => BasicHud_1_jm_updateMeasurement_1
    procedure :: jm_getLocation_0 => BasicHud_1_jm_getLocation_0
    procedure :: jm_getDirection_0 => BasicHud_1_jm_getDirection_0
    procedure :: jm_getHudGraphicsPositionWH_4 => BasicHud_1_jm_getHudGraphicsPositionWH_4
    procedure :: jm_onEvent_1 => BasicHud_1_jm_onEvent_1
    procedure :: jm_onDisplayChangeEvent_1 => BasicHud_1_jm_onDisplayChangeEvent_1
    procedure :: jm_getPoint_2 => BasicHud_1_jm_getPoint_2
    procedure :: jm_getBufferZone_0 => BasicHud_1_jm_getBufferZone_0
    procedure :: jm_setBufferZone_1 => BasicHud_1_jm_setBufferZone_1
    procedure :: jm_setLocation_1 => BasicHud_1_jm_setLocation_1
    procedure :: jm_setDirection_1 => BasicHud_1_jm_setDirection_1
    procedure :: jm_getHudGraphicsPosition_0 => BasicHud_1_jm_getHudGraphicsPosition_0
    procedure :: jm_getColor_0 => BasicHud_1_jm_getColor_0
    procedure :: jm_getX_0 => BasicHud_1_jm_getX_0
    procedure :: jm_setX_1 => BasicHud_1_jm_setX_1
    procedure :: jm_setBasicColorP_1 => BasicHud_1_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => BasicHud_1_jm_getBasicColorP_0
    procedure :: jm_setY_1 => BasicHud_1_jm_setY_1
    procedure :: jm_getY_0 => BasicHud_1_jm_getY_0
    procedure :: jm_paintSSO_4 => BasicHud_1_jm_paintSSO_4
    procedure :: jm_paintSSOO_5 => BasicHud_1_jm_paintSSOO_5
    procedure :: jm_paintDXY_9 => BasicHud_1_jm_paintDXY_9
    procedure :: jm_paintDX_8 => BasicHud_1_jm_paintDX_8
    procedure :: jm_paintOffsetAndLength_4 => BasicHud_1_jm_paintOffsetAndLength_4
    procedure :: jm_paintString_2 => BasicHud_1_jm_paintString_2
  end type


contains

  function BasicHud_1_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicHud_1), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicHud_1)
      jresult => object
    end select
  end function

  recursive function BasicHud_1_jnew_4(j_location, j_direction, j_bufferZone, j_basicColor) result(this)
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(BasicHud_1), pointer :: this
    class(DisplayInfoSingleton), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicHud_1'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_canvasStrings => CanvasStrings_jm_getInstance_0()
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    
    
    
    this%f_hudGraphicsPosition => HudGraphicsPosition_jstatic_NULL_HUD_GRAPHICS_POSITION()
    
    
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_BLACK
    
    
    
    
        call this%jm_setLocation_1(j_location)
        call this%jm_setDirection_1(j_direction)
        call this%jm_setBufferZone_1(j_bufferZone)
        jtemp2 => DisplayInfoSingleton_jm_getInstance_0()
        call this%jm_onDisplayChangeEvent_1(jtemp2%f_displayChangeEvent)
        call this%jm_setBasicColorP_1(j_basicColor)
        this%f_color = j_basicColor%jm_intValue_0()
  end function

  recursive subroutine BasicHud_1_jm_updateMeasurement_1(this, j_graphics)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    class(CommonStrings), pointer :: j_commonStrings
    class(GPoint), pointer :: jtemp3
    class(GPoint), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            this%f_hudGraphicsPosition => this%jm_getHudGraphicsPositionWH_4(this%f_displayInfo%jm_getLastWidth_0(), this%f_displayInfo%jm_getLastHeight_0(), this%f_updateMaxWidth, this%f_updateMaxHeight)
            jtemp3 => this%f_hudGraphicsPosition%jm_getPoint_0()
            this%f_x = jtemp3%jm_getX_0()
            jtemp4 => this%f_hudGraphicsPosition%jm_getPoint_0()
            call this%jm_setY_1(jtemp4%jm_getY_0())
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive function BasicHud_1_jm_getLocation_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_location
        return
  end function

  recursive function BasicHud_1_jm_getDirection_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_direction
        return
  end function

  recursive function BasicHud_1_jm_getHudGraphicsPositionWH_4(this, j_width, j_height, j_maxWidth, j_maxHeight) result(jresult)
    class(BasicHud_1), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_maxWidth
    integer(4), value :: j_maxHeight
    class(HudGraphicsPosition), pointer :: jresult
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_anchor
    class(BasicHudFactory), pointer :: j_basicHudFactory
        j_x = 0
        j_y = 0
        j_anchor = 0
        j_basicHudFactory => BasicHudFactory_jm_getInstance_0()
        if ((j_basicHudFactory%f_BOTTOMLEFT == this%jm_getLocation_0())) then
            j_x = (this%f_bufferZone + 2)
            j_y = ((j_height - j_maxHeight) - this%f_bufferZone)
            j_anchor = iand(Graphics_jstatic_BOTTOM(), Graphics_jstatic_LEFT())
        else if ((j_basicHudFactory%f_BOTTOMRIGHT == this%jm_getLocation_0())) then
            j_x = (j_width - j_maxWidth)
            j_y = ((j_height - j_maxHeight) - this%f_bufferZone)
            j_anchor = iand(Graphics_jstatic_BOTTOM(), Graphics_jstatic_RIGHT())
        else if ((j_basicHudFactory%f_TOPLEFT == this%jm_getLocation_0())) then
            j_x = (this%f_bufferZone + 2)
            j_y = (this%f_bufferZone + 5)
            j_anchor = Anchor_jstatic_TOP_LEFT()
        else if ((j_basicHudFactory%f_TOPRIGHT == this%jm_getLocation_0())) then
            j_x = (j_width - j_maxWidth)
            j_y = (this%f_bufferZone + 5)
            j_anchor = iand(Graphics_jstatic_TOP(), Graphics_jstatic_RIGHT())
        else if ((j_basicHudFactory%f_TOPCENTER == this%jm_getLocation_0())) then
            j_x = ((((j_width - j_maxWidth)) / 2))
            j_y = (this%f_bufferZone + 5)
            j_anchor = iand(Graphics_jstatic_TOP(), Graphics_jstatic_HCENTER())
        else if ((j_basicHudFactory%f_BOTTOMCENTER == this%jm_getLocation_0())) then
            j_x = ((((j_width - j_maxWidth)) / 2))
            j_y = ((j_height - j_maxHeight) - this%f_bufferZone)
            j_anchor = iand(Graphics_jstatic_BOTTOM(), Graphics_jstatic_HCENTER())
        else if ((j_basicHudFactory%f_ABSOLUTE == this%jm_getLocation_0())) then
            j_x = j_maxHeight
            j_y = j_maxWidth
            j_anchor = 0
        end if
        jresult => HudGraphicsPosition_jnew_2(this%jm_getPoint_2(j_x, j_y), j_anchor)
        return
  end function

  recursive subroutine BasicHud_1_jm_onEvent_1(this, j_eventObject)
    class(BasicHud_1), target :: this
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

  recursive subroutine BasicHud_1_jm_onDisplayChangeEvent_1(this, j_displayChangeEvent)
    class(BasicHud_1), target :: this
    class(DisplayChangeEvent), target, optional :: j_displayChangeEvent
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive function BasicHud_1_jm_getPoint_2(this, j_x, j_y) result(jresult)
    class(BasicHud_1), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(GPoint), pointer :: jresult
    class(PointFactory), pointer :: jtemp6
        jtemp6 => PointFactory_jm_getInstance_0()
        jresult => jtemp6%jm_createXY_2(j_x, j_y)
        return
  end function

  recursive function BasicHud_1_jm_getBufferZone_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_bufferZone
        return
  end function

  recursive subroutine BasicHud_1_jm_setBufferZone_1(this, j_bufferZone)
    class(BasicHud_1), target :: this
    integer(4), value :: j_bufferZone
        this%f_bufferZone = j_bufferZone
  end subroutine

  recursive subroutine BasicHud_1_jm_setLocation_1(this, j_location)
    class(BasicHud_1), target :: this
    integer(4), value :: j_location
        this%f_location = j_location
  end subroutine

  recursive subroutine BasicHud_1_jm_setDirection_1(this, j_direction)
    class(BasicHud_1), target :: this
    integer(4), value :: j_direction
        this%f_direction = j_direction
  end subroutine

  recursive function BasicHud_1_jm_getHudGraphicsPosition_0(this) result(jresult)
    class(BasicHud_1), target :: this
    class(HudGraphicsPosition), pointer :: jresult
        jresult => this%f_hudGraphicsPosition
        return
  end function

  recursive function BasicHud_1_jm_getColor_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_color
        return
  end function

  recursive function BasicHud_1_jm_getX_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive subroutine BasicHud_1_jm_setX_1(this, j_x)
    class(BasicHud_1), target :: this
    integer(4), value :: j_x
        this%f_x = j_x
  end subroutine

  recursive subroutine BasicHud_1_jm_setBasicColorP_1(this, j_basicColor)
    class(BasicHud_1), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function BasicHud_1_jm_getBasicColorP_0(this) result(jresult)
    class(BasicHud_1), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine BasicHud_1_jm_setY_1(this, j_y)
    class(BasicHud_1), target :: this
    integer(4), value :: j_y
        this%f_y = j_y
  end subroutine

  recursive function BasicHud_1_jm_getY_0(this) result(jresult)
    class(BasicHud_1), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive subroutine BasicHud_1_jm_paintSSO_4(this, j_graphics, j_string, j_string2, j_offset)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    character(len=*), intent(in) :: j_string2
    integer(4), value :: j_offset
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        call j_graphics%jm_drawString_4(j_string, this%f_x, this%jm_getY_0(), this%f_hudGraphicsPosition%jm_getAnchor_0())
        call j_graphics%jm_drawString_4(j_string2, (this%f_x + j_offset), this%jm_getY_0(), this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine

  recursive subroutine BasicHud_1_jm_paintSSOO_5(this, j_graphics, j_string, j_string2, j_offset, j_offset2)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    character(len=*), intent(in) :: j_string2
    integer(4), value :: j_offset
    integer(4), value :: j_offset2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call j_graphics%jm_setColor_1(this%jm_getColor_0())
        call j_graphics%jm_drawString_4(j_string, (this%f_x + j_offset), this%jm_getY_0(), this%f_hudGraphicsPosition%jm_getAnchor_0())
        call j_graphics%jm_drawString_4(j_string2, (this%f_x + j_offset2), this%jm_getY_0(), this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine

  recursive subroutine BasicHud_1_jm_paintDXY_9(this, j_graphics, j_charArray, j_offset, j_len, j_charArray2, j_offset2, j_len2, j_xOffset, j_xOffset2)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_charArray(:)
    integer(4), value :: j_offset
    integer(4), value :: j_len
    integer(4) :: j_charArray2(:)
    integer(4), value :: j_offset2
    integer(4), value :: j_len2
    integer(4), value :: j_xOffset
    integer(4), value :: j_xOffset2
    integer(4) :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        j_y = this%jm_getY_0()
        call j_graphics%jm_drawChars_6(j_charArray, j_offset, j_len, (this%f_x + j_xOffset), j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
        call j_graphics%jm_drawChars_6(j_charArray2, j_offset2, j_len2, (this%f_x + j_xOffset2), j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine

  recursive subroutine BasicHud_1_jm_paintDX_8(this, j_graphics, j_charArray, j_offset, j_len, j_charArray2, j_offset2, j_len2, j_xOffset)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_charArray(:)
    integer(4), value :: j_offset
    integer(4), value :: j_len
    integer(4) :: j_charArray2(:)
    integer(4), value :: j_offset2
    integer(4), value :: j_len2
    integer(4), value :: j_xOffset
    integer(4) :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        j_y = this%jm_getY_0()
        call j_graphics%jm_drawChars_6(j_charArray, j_offset, j_len, this%f_x, j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
        call j_graphics%jm_drawChars_6(j_charArray2, j_offset2, j_len2, (this%f_x + j_xOffset), j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine

  recursive subroutine BasicHud_1_jm_paintOffsetAndLength_4(this, j_graphics, j_charArray, j_offset, j_len)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_charArray(:)
    integer(4), value :: j_offset
    integer(4), value :: j_len
    integer(4) :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        j_y = this%jm_getY_0()
        call j_graphics%jm_drawChars_6(j_charArray, j_offset, j_len, this%f_x, j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine

  recursive subroutine BasicHud_1_jm_paintString_2(this, j_graphics, j_string)
    class(BasicHud_1), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    integer(4) :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        j_y = (this%jm_getY_0() + this%f_offsetY)
        call j_graphics%jm_drawString_4(j_string, this%f_x, j_y, this%f_hudGraphicsPosition%jm_getAnchor_0())
  end subroutine
end module BasicHud_1_m

