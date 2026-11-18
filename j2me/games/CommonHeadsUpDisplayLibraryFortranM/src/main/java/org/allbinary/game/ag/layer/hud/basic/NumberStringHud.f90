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
module NumberStringHud_m
  use JR_m
  use BasicHud_m
  use BasicHudFactory_m
  use BasicColor_m
  use MyFontProcessor_m
  use PaintableInterface_m
  use PrimitiveLongSingleton_m
  use PrimitiveLongUtil_m
  implicit none

  type, extends(BasicHud) :: NumberStringHud
    class(PrimitiveLongUtil), pointer :: f_primitiveLongUtil => null()
    character(len=:), allocatable :: f_prependString
    integer(4), allocatable :: f_PREPEND_STRING(:)
    integer(4) :: f_value = 0
    integer(4) :: f_max = 0
    integer(4) :: f_offset = 0
    integer(4), allocatable :: f_valueString(:)
    integer(4) :: f_valueTotalDigits = 0
  contains
    procedure :: jm_updateMeasurement_1 => NumberStringHud_jm_updateMeasurement_1
    procedure :: jm_get_0 => NumberStringHud_jm_get_0
    procedure :: jm_add_1 => NumberStringHud_jm_add_1
    procedure :: jm_set_1 => NumberStringHud_jm_set_1
    procedure :: jm_reduce_1 => NumberStringHud_jm_reduce_1
    procedure :: jm_paint_1 => NumberStringHud_jm_paint_1
    procedure :: jm_paintXY_3 => NumberStringHud_jm_paintXY_3
    procedure :: jm_paintThreed_1 => NumberStringHud_jm_paintThreed_1
  end type

  ! NumberStringHud used as a PaintableInterface
  type, extends(PaintableInterface) :: NumberStringHud_jas_PaintableInterface
    class(NumberStringHud), pointer :: jtarget => null()
  contains
    procedure :: jm_paint_1 => NumberStringHud_jas_PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => NumberStringHud_jas_PaintableInterface_jm_paintThreed_1
  end type


contains

  function NumberStringHud_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberStringHud), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberStringHud)
      jresult => object
    end select
  end function

  function NumberStringHud_jas_PaintableInterface_jnew(object) result(jresult)
    class(NumberStringHud), target :: object
    class(NumberStringHud_jas_PaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NumberStringHud'
    jresult%jtarget => object
  end function

  recursive subroutine NumberStringHud_jas_PaintableInterface_jm_paint_1(this, j_graphics)
    class(NumberStringHud_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine NumberStringHud_jas_PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(NumberStringHud_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paintThreed_1(j_graphics)
  end subroutine

  recursive function NumberStringHud_jnew_6(j_prependString, j_max, j_location, j_direction, j_bufferZone, j_basicColor) result(this)
    character(len=*), intent(in) :: j_prependString
    integer(4), value :: j_max
    integer(4), value :: j_location
    integer(4), value :: j_direction
    integer(4), value :: j_bufferZone
    class(BasicColor), target, optional :: j_basicColor
    class(NumberStringHud), pointer :: this
    class(PrimitiveLongSingleton), pointer :: jtemp1
    class(BasicHudFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'NumberStringHud'
    this%f_prependString = ''
    
    
    
    
    
    
    
    
        continue ! super()
        this%f_prependString = j_prependString
        this%f_PREPEND_STRING = JR_toCharArray(j_prependString)
        jtemp1 => PrimitiveLongSingleton_jm_getInstance_0()
        this%f_valueString = jtemp1%f_NUMBER_CHAR_ARRAYS((0) + 1, :)
        this%f_primitiveLongUtil => PrimitiveLongUtil_jm_createPowerOfTen_1((j_max + 1))
        this%f_max = j_max
        this%f_value = 0
        if ((j_direction == 0)) then
            jtemp2 => BasicHudFactory_jm_getInstance_0()
            error stop JR_toString(JR_newJObject('RuntimeException'))
        end if
  end function

  recursive subroutine NumberStringHud_jm_updateMeasurement_1(this, j_graphics)
    class(NumberStringHud), target :: this
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
        this%f_offset = (j_font%jm_stringWidth_1(this%f_prependString) + MyFontProcessor_jm_defaultCharWidth_1(j_font))
        call this%BasicHud%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function NumberStringHud_jm_get_0(this) result(jresult)
    class(NumberStringHud), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive subroutine NumberStringHud_jm_add_1(this, j_value)
    class(NumberStringHud), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_set_1((this%f_value + j_value))
  end subroutine

  recursive subroutine NumberStringHud_jm_set_1(this, j_value)
    class(NumberStringHud), target :: this
    integer(4), value :: j_value
        this%f_value = j_value
        if ((this%f_value > this%f_max)) then
            this%f_value = 0
        end if
        this%f_valueString = this%f_primitiveLongUtil%jm_getCharArray_1(this%f_value)
        this%f_valueTotalDigits = this%f_primitiveLongUtil%jm_getCurrentTotalDigits_0()
  end subroutine

  recursive subroutine NumberStringHud_jm_reduce_1(this, j_value)
    class(NumberStringHud), target :: this
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_set_1((this%f_value - j_value))
  end subroutine

  recursive subroutine NumberStringHud_jm_paint_1(this, j_graphics)
    class(NumberStringHud), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_paintDX_8(j_graphics, this%f_PREPEND_STRING, 0, size(this%f_PREPEND_STRING, 1), this%f_valueString, 0, this%f_valueTotalDigits, this%f_offset)
  end subroutine

  recursive subroutine NumberStringHud_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(NumberStringHud), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), allocatable :: j_charArray(:)
    integer(4) :: j_len
    integer(4), allocatable :: j_charArray2(:)
    integer(4) :: j_len2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_charArray = this%f_PREPEND_STRING
        j_len = size(this%f_PREPEND_STRING, 1)
        j_charArray2 = this%f_valueString
        j_len2 = this%f_valueTotalDigits
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%jm_getBasicColorP_0())
        call j_graphics%jm_drawChars_6(j_charArray, 0, j_len, j_x, j_y, 0)
        call j_graphics%jm_drawChars_6(j_charArray2, 0, j_len2, (j_x - this%f_offset), j_y, 0)
  end subroutine

  recursive subroutine NumberStringHud_jm_paintThreed_1(this, j_graphics)
    class(NumberStringHud), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module NumberStringHud_m

