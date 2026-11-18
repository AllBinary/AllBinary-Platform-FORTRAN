! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.animation.text
module CustomTextBoxIndexedAnimation_m
  use JR_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use RawKeyEventListener_m
  use BasicColor_m
  use UpdateMyFontInterface_m
  use CustomTextBox_m
  use StringUtil_m
  use TextInterface_m
  use TextChangeListener_m
  implicit none

  type, extends(IndexedAnimation) :: CustomTextBoxIndexedAnimation
    class(CustomTextBox), pointer :: f_customTextBox => null()
    character(len=:), allocatable :: f_lastText
    logical :: f_hasChanged = .false.
    class(TextChangeListener), pointer :: f_textChangeListener => null()
  contains
    procedure :: jm_setBasicColorP_1 => CustomTextBoxIndexedAnimation_jm_setBasicColorP_1
    procedure :: jm_setBackgroundBasicColorP_1 => CustomTextBoxIndexedAnimation_jm_setBackgroundBasicColorP_1
    procedure :: jm_setTextWithOnMeasure_2 => CustomTextBoxIndexedAnimation_jm_setTextWithOnMeasure_2
    procedure :: jm_updateMeasurement_1 => CustomTextBoxIndexedAnimation_jm_updateMeasurement_1
    procedure :: jm_setText_1 => CustomTextBoxIndexedAnimation_jm_setText_1
    procedure :: jm_getText_0 => CustomTextBoxIndexedAnimation_jm_getText_0
    procedure :: jm_onEventRaw_3 => CustomTextBoxIndexedAnimation_jm_onEventRaw_3
    procedure :: jm_getFontHeight_0 => CustomTextBoxIndexedAnimation_jm_getFontHeight_0
    procedure :: jm_paintXY_3 => CustomTextBoxIndexedAnimation_jm_paintXY_3
    procedure :: jm_paintThreedXYZ_4 => CustomTextBoxIndexedAnimation_jm_paintThreedXYZ_4
    procedure :: jm_getWidth_0 => CustomTextBoxIndexedAnimation_jm_getWidth_0
  end type

  ! CustomTextBoxIndexedAnimation used as a RawKeyEventListener
  type, extends(RawKeyEventListener) :: CustomTextBoxIndexedAnimation_jas_RawKeyEventListener
    class(CustomTextBoxIndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_onEventRaw_3 => CustomTextBoxIndexedAnimation_jas_RawKeyEventListener_jm_onEventRaw_3
  end type

  ! CustomTextBoxIndexedAnimation used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface
    class(CustomTextBoxIndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  ! CustomTextBoxIndexedAnimation used as a TextInterface
  type, extends(TextInterface) :: CustomTextBoxIndexedAnimation_jas_TextInterface
    class(CustomTextBoxIndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_setTextWithOnMeasure_2 => CustomTextBoxIndexedAnimation_jas_TextInterface_jm_setTextWithOnMeasure_2
    procedure :: jm_setText_1 => CustomTextBoxIndexedAnimation_jas_TextInterface_jm_setText_1
    procedure :: jm_getText_0 => CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getText_0
    procedure :: jm_getFontHeight_0 => CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getFontHeight_0
    procedure :: jm_getWidth_0 => CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getWidth_0
  end type


contains

  function CustomTextBoxIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextBoxIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextBoxIndexedAnimation)
      jresult => object
    end select
  end function

  function CustomTextBoxIndexedAnimation_jas_RawKeyEventListener_jnew(object) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: object
    class(CustomTextBoxIndexedAnimation_jas_RawKeyEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomTextBoxIndexedAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jas_RawKeyEventListener_jm_onEventRaw_3(this, j_keyCode, j_deviceId, j_repeated)
    class(CustomTextBoxIndexedAnimation_jas_RawKeyEventListener), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    call this%jtarget%jm_onEventRaw_3(j_keyCode, j_deviceId, j_repeated)
  end subroutine

  function CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: object
    class(CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomTextBoxIndexedAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(CustomTextBoxIndexedAnimation_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function CustomTextBoxIndexedAnimation_jas_TextInterface_jnew(object) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: object
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomTextBoxIndexedAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jas_TextInterface_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    class(TextChangeListener), target, optional :: j_textChangeListener
    call this%jtarget%jm_setTextWithOnMeasure_2(j_text, j_textChangeListener)
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jas_TextInterface_jm_setText_1(this, j_text)
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    call this%jtarget%jm_setText_1(j_text)
  end subroutine

  recursive function CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getText_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getText_0()
  end function

  recursive function CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getFontHeight_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getFontHeight_0()
  end function

  recursive function CustomTextBoxIndexedAnimation_jas_TextInterface_jm_getWidth_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation_jas_TextInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getWidth_0()
  end function

  recursive function CustomTextBoxIndexedAnimation_jnew_1(j_customTextBox) result(this)
    class(CustomTextBox), target, optional :: j_customTextBox
    class(CustomTextBoxIndexedAnimation), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CustomTextBoxIndexedAnimation'
    this%f_lastText = ''
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_lastText = jtemp1%f_INIT_STRING
    this%f_hasChanged = .true.
    this%f_textChangeListener => TextChangeListener_jm_getInstance_0()
        continue ! super()
        this%f_customTextBox => j_customTextBox
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(CustomTextBoxIndexedAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(ABTextFieldItem), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => this%f_customTextBox%jm_getTextFieldItem_0()
        call jtemp2%jm_setForegroundBasicColorP_1(j_basicColor)
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jm_setBackgroundBasicColorP_1(this, j_basicColor)
    class(CustomTextBoxIndexedAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(ABTextFieldItem), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => this%f_customTextBox%jm_getTextFieldItem_0()
        call jtemp3%jm_setBackgroundBasicColorP_1(j_basicColor)
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(CustomTextBoxIndexedAnimation), target :: this
    character(len=*), intent(in) :: j_text
    class(TextChangeListener), target, optional :: j_textChangeListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setText_1(j_text)
        this%f_textChangeListener => j_textChangeListener
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jm_updateMeasurement_1(this, j_graphics)
    class(CustomTextBoxIndexedAnimation), target :: this
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
        call this%f_textChangeListener%jm_onMeasure_0()
        this%f_textChangeListener => TextChangeListener_jm_getInstance_0()
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jm_setText_1(this, j_text)
    class(CustomTextBoxIndexedAnimation), target :: this
    character(len=*), intent(in) :: j_text
    class(ABTextFieldItem), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_strEquals(this%f_lastText, j_text))) then
            this%f_hasChanged = .true.
            this%f_lastText = j_text
            jtemp4 => this%f_customTextBox%jm_getTextFieldItem_0()
            call jtemp4%jm_setString_1(j_text)
        end if
  end subroutine

  recursive function CustomTextBoxIndexedAnimation_jm_getText_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: this
    character(len=:), allocatable :: jresult
    class(ABTextFieldItem), pointer :: jtemp5
        jtemp5 => this%f_customTextBox%jm_getTextFieldItem_0()
        jresult = jtemp5%jm_getString_0()
        return
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jm_onEventRaw_3(this, j_keyCode, j_deviceId, j_repeated)
    class(CustomTextBoxIndexedAnimation), target :: this
    integer(4), value :: j_keyCode
    integer(4), value :: j_deviceId
    logical, value :: j_repeated
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_customTextBox%jm_onEventRaw_3(j_keyCode, j_deviceId, j_repeated)
  end subroutine

  recursive function CustomTextBoxIndexedAnimation_jm_getFontHeight_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: this
    integer(4) :: jresult
    class(ABTextFieldItem), pointer :: jtemp6
        jtemp6 => this%f_customTextBox%jm_getTextFieldItem_0()
        jresult = jtemp6%jm_getFontHeight_0()
        return
  end function

  recursive subroutine CustomTextBoxIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CustomTextBoxIndexedAnimation), target :: this
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
        call this%f_customTextBox%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine

  recursive subroutine CustomTextBoxIndexedAnimation_jm_paintThreedXYZ_4(this, j_graphics, j_x, j_y, j_z)
    class(CustomTextBoxIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    continue
  end subroutine

  recursive function CustomTextBoxIndexedAnimation_jm_getWidth_0(this) result(jresult)
    class(CustomTextBoxIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%IndexedAnimation%jm_getWidth_0()
        return
  end function
end module CustomTextBoxIndexedAnimation_m

