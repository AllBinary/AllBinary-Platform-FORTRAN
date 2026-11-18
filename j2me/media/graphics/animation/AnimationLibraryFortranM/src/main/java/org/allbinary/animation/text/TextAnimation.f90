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
module TextAnimation_m
  use JR_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use Anchor_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use SWTJOGLProcessor_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use TextChangeListener_m
  implicit none

  type, extends(IndexedAnimation) :: TextAnimation
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    type(JString), allocatable :: f_textArrayP(:)
    integer(4) :: f_anchor = 0
    integer(4) :: f_fontHeight = 0
    integer(4) :: f_offsetY = 0
    class(TextChangeListener), pointer :: f_textChangeListener => null()
  contains
    procedure :: jm_updateMeasurement_1 => TextAnimation_jm_updateMeasurement_1
    procedure :: jm_nextFrame_0 => TextAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => TextAnimation_jm_paintXY_3
    procedure :: jm_paintXYNoUpdate_3 => TextAnimation_jm_paintXYNoUpdate_3
    procedure :: jm_setTextWithOnMeasure_2 => TextAnimation_jm_setTextWithOnMeasure_2
    procedure :: jm_setText_1 => TextAnimation_jm_setText_1
    procedure :: jm_getTextArray_0 => TextAnimation_jm_getTextArray_0
    procedure :: jm_getFontHeight_0 => TextAnimation_jm_getFontHeight_0
  end type

  ! TextAnimation used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: TextAnimation_jas_UpdateMyFontInterface
    class(TextAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => TextAnimation_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function TextAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextAnimation)
      jresult => object
    end select
  end function

  function TextAnimation_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(TextAnimation), target :: object
    class(TextAnimation_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'TextAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine TextAnimation_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(TextAnimation_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function TextAnimation_jnew_2(j_text, j_animationBehavior) result(this)
    character(len=*), intent(in) :: j_text
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(TextAnimation), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TextAnimation'
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_textArrayP = jtemp1%f_ONE_EMPTY_STRING_ARRAY
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    this%f_fontHeight = 0
    this%f_offsetY = 0
    this%f_textChangeListener => TextChangeListener_jm_getInstance_0()
        continue ! super()
        call this%jm_setText_1(j_text)
  end function

  recursive subroutine TextAnimation_jm_updateMeasurement_1(this, j_graphics)
    class(TextAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    integer(4) :: j_adjustedFontHeight
    class(SWTJOGLProcessor), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        this%f_fontHeight = j_font%jm_getHeight_0()
        j_adjustedFontHeight = JR_d2i(real((-((real(this%f_fontHeight, 8) * 2.00d0))), 8))
        jtemp2 => SWTJOGLProcessor_jm_getInstance_0()
        this%f_offsetY = merge(j_adjustedFontHeight, 0, jtemp2%jm_isJOGL_0())
        call this%f_textChangeListener%jm_onMeasure_0()
        this%f_textChangeListener => TextChangeListener_jm_getInstance_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine TextAnimation_jm_nextFrame_0(this)
    class(TextAnimation), target :: this
    continue
  end subroutine

  recursive subroutine TextAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(TextAnimation), target :: this
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
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%jm_paintXYNoUpdate_3(j_graphics, j_x, j_y)
  end subroutine

  recursive subroutine TextAnimation_jm_paintXYNoUpdate_3(this, j_graphics, j_x, j_y)
    class(TextAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%jm_getBasicColorP_0(), this%jm_getColor_0())
        j_size = size(this%f_textArrayP, 1)
        j_index = 0
        do while ((j_index < j_size))
            call j_graphics%jm_drawString_4(this%f_textArrayP((j_index) + 1)%v, j_x, ((j_y + this%f_offsetY) + ((j_index * this%f_fontHeight))), this%f_anchor)
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine TextAnimation_jm_setTextWithOnMeasure_2(this, j_text, j_textChangeListener)
    class(TextAnimation), target :: this
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

  recursive subroutine TextAnimation_jm_setText_1(this, j_text)
    class(TextAnimation), target :: this
    character(len=*), intent(in) :: j_text
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_index
    integer(4) :: j_startIndex
    integer(4) :: j_endIndex
    type(JString), allocatable :: j_textArray(:)
    integer(4) :: j_size
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => BasicArrayListD_jnew_0()
        if ((len(j_text) > 0)) then
            j_index = 0
            j_startIndex = 0
            j_endIndex = 0
            do while ((j_index >= 0))
                j_startIndex = j_index
                j_index = JR_indexOf(j_text, 10, j_startIndex)
                j_endIndex = j_index
                if ((j_index < 0)) then
                    j_endIndex = len(j_text)
                end if
                jdiscardBoolean = j_list%jm_add_1(JR_boxString(JR_substring(j_text, j_startIndex, j_endIndex)))
                if ((j_index < 0)) then
                    exit
                end if
                j_index = j_index + 1
            end do
        end if
        if ((j_list%jm_size_0() > 0)) then
            j_textArray = JR_newStringArray(j_list%jm_size_0())
            j_size = j_list%jm_size_0()
            j_index = 0
            do while ((j_index < j_size))
                j_textArray((j_index) + 1)%v = j_list%jm_get_1(j_index)
                j_index = j_index + 1
            end do
            this%f_textArrayP = j_textArray
        else
            jtemp3 => StringUtil_jm_getInstance_0()
            this%f_textArrayP = jtemp3%f_ONE_EMPTY_STRING_ARRAY
        end if
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive function TextAnimation_jm_getTextArray_0(this) result(jresult)
    class(TextAnimation), target :: this
    type(JString), allocatable :: jresult(:)
        jresult = this%f_textArrayP
        return
  end function

  recursive function TextAnimation_jm_getFontHeight_0(this) result(jresult)
    class(TextAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_fontHeight
        return
  end function
end module TextAnimation_m

