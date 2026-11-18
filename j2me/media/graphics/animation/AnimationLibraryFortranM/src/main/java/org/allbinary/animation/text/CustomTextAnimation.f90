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
! package org.allbinary.animation.text
module CustomTextAnimation_m
  use JR_m
  use AnimationBehavior_m
  use FontDebugFactory_m
  use StringUtil_m
  use TextAnimation_m
  use TextInterface_m
  use TextChangeListener_m
  implicit none

  type, extends(TextAnimation) :: CustomTextAnimation
    class(FontDebugFactory), pointer :: f_fontDebugFactory => null()
    integer(4) :: f_fontSize = 0
    class(Font), pointer :: f_font => null()
    character(len=:), allocatable :: f_lastText
    logical :: f_hasChanged = .false.
    integer(4) :: f_textWidth = 0
  contains
    procedure :: jm_paintXY_3 => CustomTextAnimation_jm_paintXY_3
    procedure :: jm_setScale_2 => CustomTextAnimation_jm_setScale_2
    procedure :: jm_setTextWithOnMeasure_2 => CustomTextAnimation_jm_setTextWithOnMeasure_2
    procedure :: jm_setText_1 => CustomTextAnimation_jm_setText_1
    procedure :: jm_getText_0 => CustomTextAnimation_jm_getText_0
    procedure :: jm_getWidth_0 => CustomTextAnimation_jm_getWidth_0
    procedure :: jm_getFontHeight_0 => CustomTextAnimation_jm_getFontHeight_0
  end type

  ! CustomTextAnimation used as a TextInterface
  type, extends(TextInterface) :: CustomTextAnimation_jas_TextInterface
    class(CustomTextAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_setTextWithOnMeasure_2 => CustomTextAnimation_jas_TextInterface_jm_setTextWithOnMeasure_2
    procedure :: jm_setText_1 => CustomTextAnimation_jas_TextInterface_jm_setText_1
    procedure :: jm_getText_0 => CustomTextAnimation_jas_TextInterface_jm_getText_0
    procedure :: jm_getWidth_0 => CustomTextAnimation_jas_TextInterface_jm_getWidth_0
    procedure :: jm_getFontHeight_0 => CustomTextAnimation_jas_TextInterface_jm_getFontHeight_0
  end type


contains

  function CustomTextAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextAnimation)
      jresult => object
    end select
  end function

  function CustomTextAnimation_jas_TextInterface_jnew(object) result(jresult)
    class(CustomTextAnimation), target :: object
    class(CustomTextAnimation_jas_TextInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CustomTextAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine CustomTextAnimation_jas_TextInterface_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(CustomTextAnimation_jas_TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    class(TextChangeListener), target, optional :: j_textChangeListener
    call this%jtarget%jm_setTextWithOnMeasure_2(j_text, j_textChangeListener)
  end subroutine

  recursive subroutine CustomTextAnimation_jas_TextInterface_jm_setText_1(this, j_text)
    class(CustomTextAnimation_jas_TextInterface), target :: this
    character(len=*), intent(in) :: j_text
    call this%jtarget%jm_setText_1(j_text)
  end subroutine

  recursive function CustomTextAnimation_jas_TextInterface_jm_getText_0(this) result(jresult)
    class(CustomTextAnimation_jas_TextInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getText_0()
  end function

  recursive function CustomTextAnimation_jas_TextInterface_jm_getWidth_0(this) result(jresult)
    class(CustomTextAnimation_jas_TextInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getWidth_0()
  end function

  recursive function CustomTextAnimation_jas_TextInterface_jm_getFontHeight_0(this) result(jresult)
    class(CustomTextAnimation_jas_TextInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getFontHeight_0()
  end function

  recursive function CustomTextAnimation_jnew_3(j_text, j_fontSize, j_animationBehavior) result(this)
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_fontSize
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(CustomTextAnimation), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CustomTextAnimation'
    this%f_lastText = ''
    this%f_fontDebugFactory => FontDebugFactory_jm_getInstance_0()
    
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_lastText = jtemp1%f_INIT_STRING
    this%f_hasChanged = .true.
    
        continue ! super()
        this%f_fontSize = j_fontSize
        this%f_font => Font_jm_getFont_3(Font_jstatic_FACE_SYSTEM(), Font_jstatic_STYLE_PLAIN(), j_fontSize)
  end function

  recursive subroutine CustomTextAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CustomTextAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(Font), pointer :: j_existingFont
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_existingFont => j_graphics%jm_getFont_0()
        call this%f_fontDebugFactory%jm_setFont_2(this%f_font, j_graphics)
        call this%TextAnimation%jm_paintXYNoUpdate_3(j_graphics, j_x, j_y)
        call this%f_fontDebugFactory%jm_setFont_2(j_existingFont, j_graphics)
  end subroutine

  recursive subroutine CustomTextAnimation_jm_setScale_2(this, j_scaleX, j_scaleY)
    class(CustomTextAnimation), target :: this
    real(4), value :: j_scaleX
    real(4), value :: j_scaleY
        if ((j_scaleX /= j_scaleY)) then
            error stop JR_toString(JR_newJObject('RuntimeException'))
        end if
        this%f_hasChanged = .true.
        this%f_font => Font_jm_getFont_3(Font_jstatic_FACE_SYSTEM(), Font_jstatic_STYLE_PLAIN(), JR_d2i(real(((real(this%f_fontSize, 4) * j_scaleX)), 8)))
  end subroutine

  recursive subroutine CustomTextAnimation_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(CustomTextAnimation), target :: this
    character(len=*), intent(in) :: j_text
    class(TextChangeListener), target, optional :: j_textChangeListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%TextAnimation%jm_setTextWithOnMeasure_2(j_text, j_textChangeListener)
  end subroutine

  recursive subroutine CustomTextAnimation_jm_setText_1(this, j_text)
    class(CustomTextAnimation), target :: this
    character(len=*), intent(in) :: j_text
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
            call this%TextAnimation%jm_setText_1(j_text)
        end if
  end subroutine

  recursive function CustomTextAnimation_jm_getText_0(this) result(jresult)
    class(CustomTextAnimation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_lastText
        return
  end function

  recursive function CustomTextAnimation_jm_getWidth_0(this) result(jresult)
    class(CustomTextAnimation), target :: this
    integer(4) :: jresult
        if (this%f_hasChanged) then
            this%f_textWidth = this%f_font%jm_stringWidth_1(this%f_textArrayP((0) + 1)%v)
            this%f_hasChanged = .false.
        end if
        jresult = this%f_textWidth
        return
  end function

  recursive function CustomTextAnimation_jm_getFontHeight_0(this) result(jresult)
    class(CustomTextAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_font%jm_getHeight_0()
        return
  end function
end module CustomTextAnimation_m

