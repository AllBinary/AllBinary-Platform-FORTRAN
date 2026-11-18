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
! package org.allbinary.graphics.form.item
module CustomTextBox_m
  use JR_m
  use J2MEUtil_m
  use GameCommandCanvas_m
  use Input_m
  use InputFactory_m
  use PlatformKeyFactory_m
  use RawKeyEventListener_m
  use BasicColor_m
  use TextItemVisitor_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use ABTextFieldItem_m
  implicit none

  type, extends(GameCommandCanvas) :: CustomTextBox
    class(ABTextFieldItem), pointer :: f_textFieldItem => null()
    class(InputFactory), pointer :: f_inputFactory => null()
  contains
    procedure :: jm_submit_0 => CustomTextBox_jm_submit_0
    procedure :: jm_onEventRaw_3 => CustomTextBox_jm_onEventRaw_3
    procedure :: jm_keyPressed_1 => CustomTextBox_jm_keyPressed_1
    procedure :: jm_keyReleased_1 => CustomTextBox_jm_keyReleased_1
    procedure :: jm_keyRepeated_1 => CustomTextBox_jm_keyRepeated_1
    procedure :: jm_keyPressedByDevice_2 => CustomTextBox_jm_keyPressedByDevice_2
    procedure :: jm_keyReleasedByDevice_2 => CustomTextBox_jm_keyReleasedByDevice_2
    procedure :: jm_paint_1 => CustomTextBox_jm_paint_1
    procedure :: jm_paintXY_3 => CustomTextBox_jm_paintXY_3
    procedure :: jm_getTextFieldItem_0 => CustomTextBox_jm_getTextFieldItem_0
  end type

  ! CustomTextBox used as a RawKeyEventListener
  type, extends(RawKeyEventListener) :: CustomTextBox_jas_RawKeyEventListener
    class(CustomTextBox), pointer :: jtarget => null()
  contains
    procedure :: jm_onEventRaw_3 => CustomTextBox_jas_RawKeyEventListener_jm_onEventRaw_3
  end type


contains

  function CustomTextBox_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextBox), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextBox)
      jresult => object
    end select
  end function

  function CustomTextBox_jas_RawKeyEventListener_jnew(object) result(jresult)
    class(CustomTextBox), target :: object
    class(CustomTextBox_jas_RawKeyEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomTextBox'
    jresult%jtarget => object
  end function

  recursive subroutine CustomTextBox_jas_RawKeyEventListener_jm_onEventRaw_3(this, j_keyCode, j_deviceId, j_repeated)
    class(CustomTextBox_jas_RawKeyEventListener), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    call this%jtarget%jm_onEventRaw_3(j_keyCode, j_deviceId, j_repeated)
  end subroutine

  recursive function CustomTextBox_jnew_8(j_cmdListener, j_label, j_text, j_maxSize, j_constraints, j_font, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_label
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_maxSize
    integer(4), value :: j_constraints
    class(Font), target, optional :: j_font
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CustomTextBox), pointer :: this
    class(StringUtil), pointer :: j_stringUtil
    class(ABTextFieldItem), pointer :: j_textFieldItem
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CustomTextBox'
    
    this%f_inputFactory => InputFactory_jm_getInstance_0()
        continue ! super()
        j_stringUtil => StringUtil_jm_getInstance_0()
        j_textFieldItem => ABTextFieldItem_jnew_10(this, TextItemVisitor_jnew_0(), j_stringUtil%f_EMPTY_STRING, j_stringUtil%f_EMPTY_STRING, j_maxSize, 0, j_stringUtil%f_EMPTY_STRING, j_font, j_backgroundBasicColor, j_foregroundBasicColor)
        call j_textFieldItem%jm_setString_1(j_text)
        this%f_textFieldItem => j_textFieldItem
        call this%jm_setTitle_1(j_label)
  end function

  recursive subroutine CustomTextBox_jm_submit_0(this)
    class(CustomTextBox), target :: this
    continue
  end subroutine

  recursive subroutine CustomTextBox_jm_onEventRaw_3(this, j_keyCode, j_deviceId, j_repeated)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(this%f_commonStrings%f_START)
        jtemp1 => jtemp2%jm_appendint_1(j_keyCode)
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, 'onEvent')
        call this%jm_keyPressedByDevice_2(j_keyCode, j_deviceId)
  end subroutine

  recursive subroutine CustomTextBox_jm_keyPressed_1(this, j_keyCode)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyPressedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine CustomTextBox_jm_keyReleased_1(this, j_keyCode)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyReleasedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine CustomTextBox_jm_keyRepeated_1(this, j_keyCode)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_keyRepeatedByDevice_2(j_keyCode, 0)
  end subroutine

  recursive subroutine CustomTextBox_jm_keyPressedByDevice_2(this, j_keyCode, j_deviceId)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    class(PlatformKeyFactory), pointer :: j_platformKeyFactory
    class(Input), pointer :: j_input
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
            jtemp7 => CommonSeps_jm_getInstance_0()
            jtemp6 => StringMaker_jnew_0()
            jtemp5 => jtemp6%jm_append_1(jtemp7%f_SPACE)
            jtemp4 => jtemp5%jm_appendint_1(j_keyCode)
            call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, this%f_gameInputStrings%f_KEY_PRESSED)
            j_platformKeyFactory => PlatformKeyFactory_jm_getInstance_0()
            j_input => this%f_inputFactory%jm_getInstanceById_1(j_keyCode)
            if (j_platformKeyFactory%jm_isSubmission_1(j_input)) then
                call this%jm_submit_0()
            else
                call this%f_textFieldItem%jm_keyPressed_1(j_keyCode)
            end if
  end subroutine

  recursive subroutine CustomTextBox_jm_keyReleasedByDevice_2(this, j_keyCode, j_deviceId)
    class(CustomTextBox), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    continue
  end subroutine

  recursive subroutine CustomTextBox_jm_paint_1(this, j_graphics)
    class(CustomTextBox), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setColor_1(this%f_backgroundColor)
        call j_graphics%jm_fillRect_4(0, 0, this%f_displayInfo%jm_getLastWidth_0(), this%f_displayInfo%jm_getLastHeight_0())
        call j_graphics%jm_setColor_1(this%f_foregroundColor)
        if ((.not. J2MEUtil_jm_isJ2ME_0())) then
            call j_graphics%jm_drawString_4(this%jm_getTitle_0(), 8, 1, 0)
        end if
        jtemp8 => j_graphics%jm_getFont_0()
        call this%jm_paintXY_3(j_graphics, 8, (jtemp8%jm_getHeight_0() + 2))
        call this%GameCommandCanvas%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine CustomTextBox_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CustomTextBox), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_textFieldItem%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine

  recursive function CustomTextBox_jm_getTextFieldItem_0(this) result(jresult)
    class(CustomTextBox), target :: this
    class(ABTextFieldItem), pointer :: jresult
        jresult => this%f_textFieldItem
        return
  end function
end module CustomTextBox_m

