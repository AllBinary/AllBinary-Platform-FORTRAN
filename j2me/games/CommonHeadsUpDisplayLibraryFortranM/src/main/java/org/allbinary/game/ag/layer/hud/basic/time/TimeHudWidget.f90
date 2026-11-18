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
! package org.allbinary.game.ag.layer.hud.basic.time
module TimeHudWidget_m
  use JR_m
  use BasicHud_m
  use BasicColor_m
  use MyFontProcessor_m
  use PrimitiveLongSingleton_m
  use HudTimer_m
  implicit none

  type, extends(BasicHud) :: TimeHudWidget
    character(len=:), allocatable :: f_TIME_STRING
    integer(4), allocatable :: f_TIME_CHAR_ARRAY(:)
    integer(4) :: f_offset = 0
    integer(4), allocatable :: f_string(:)
    integer(4) :: f_totalDigits = 0
    class(HudTimer), pointer :: f_timer => null()
  contains
    procedure :: jm_updateMeasurement_1 => TimeHudWidget_jm_updateMeasurement_1
    procedure :: jm_update_0 => TimeHudWidget_jm_update_0
    procedure :: jm_set_0 => TimeHudWidget_jm_set_0
    procedure :: jm_getTimer_0 => TimeHudWidget_jm_getTimer_0
    procedure :: jm_paint_1 => TimeHudWidget_jm_paint_1
  end type


contains

  function TimeHudWidget_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeHudWidget), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeHudWidget)
      jresult => object
    end select
  end function

  recursive function TimeHudWidget_jnew_5(j_location, j_direction, j_bufferZone, j_basicColor, j_timer) result(this)
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(HudTimer), target, optional :: j_timer
    class(TimeHudWidget), pointer :: this
    class(PrimitiveLongSingleton), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TimeHudWidget'
    this%f_TIME_STRING = ''
    this%f_TIME_STRING = 'Time '
    this%f_TIME_CHAR_ARRAY = [integer(4) :: iachar('T'), iachar('i'), iachar('m'), iachar('e'), iachar(' ')]
    
    jtemp1 => PrimitiveLongSingleton_jm_getInstance_0()
    this%f_string = jtemp1%f_ZERO
    this%f_totalDigits = 1
    
        continue ! super()
        this%f_timer => j_timer
        call this%jm_set_0()
        this%f_updateMaxHeight = 14
  end function

  recursive function TimeHudWidget_jm_getInstance_4(j_location, j_direction, j_basicColor, j_timer) result(jresult)
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(BasicColor), target, optional :: j_basicColor
    class(HudTimer), target, optional :: j_timer
    class(TimeHudWidget), pointer :: jresult
        jresult => TimeHudWidget_jnew_5(j_location, j_direction, 2, j_basicColor, j_timer)
        return
  end function

  recursive subroutine TimeHudWidget_jm_updateMeasurement_1(this, j_graphics)
    class(TimeHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        this%f_updateMaxWidth = (j_font%jm_getSize_0() * 5)
        this%f_offset = (j_font%jm_stringWidth_1(this%f_TIME_STRING) + MyFontProcessor_jm_defaultStringWidth_2(j_font, 3))
        call this%BasicHud%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive subroutine TimeHudWidget_jm_update_0(this)
    class(TimeHudWidget), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_timer%jm_update_0()
        call this%jm_set_0()
  end subroutine

  recursive subroutine TimeHudWidget_jm_set_0(this)
    class(TimeHudWidget), target :: this
        this%f_string = this%f_timer%jm_getTimeChars_0()
        this%f_totalDigits = this%f_timer%jm_getCurrentTotalDigits_0()
  end subroutine

  recursive function TimeHudWidget_jm_getTimer_0(this) result(jresult)
    class(TimeHudWidget), target :: this
    class(HudTimer), pointer :: jresult
        jresult => this%f_timer
        return
  end function

  recursive subroutine TimeHudWidget_jm_paint_1(this, j_graphics)
    class(TimeHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_paintDX_8(j_graphics, this%f_TIME_CHAR_ARRAY, 0, size(this%f_TIME_CHAR_ARRAY, 1), this%f_string, 0, this%f_totalDigits, this%f_offset)
  end subroutine
end module TimeHudWidget_m

