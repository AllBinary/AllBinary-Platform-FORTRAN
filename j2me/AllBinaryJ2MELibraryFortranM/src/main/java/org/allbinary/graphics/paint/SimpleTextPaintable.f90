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
! package org.allbinary.graphics.paint
module SimpleTextPaintable_m
  use JR_m
  use Anchor_m
  use BasicColor_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: SimpleTextPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    character(len=:), allocatable :: f_text
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_topScoresWidth = 0
    integer(4) :: f_fontHeight = 0
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_updateMeasurement_1 => SimpleTextPaintable_jm_updateMeasurement_1
    procedure :: jm_paint_1 => SimpleTextPaintable_jm_paint_1
    procedure :: jm_setBasicColorP_1 => SimpleTextPaintable_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => SimpleTextPaintable_jm_getBasicColorP_0
    procedure :: jm_setText_1 => SimpleTextPaintable_jm_setText_1
    procedure :: jm_getText_0 => SimpleTextPaintable_jm_getText_0
  end type

  ! SimpleTextPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: SimpleTextPaintable_jas_UpdateMyFontInterface
    class(SimpleTextPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => SimpleTextPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function SimpleTextPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimpleTextPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimpleTextPaintable)
      jresult => object
    end select
  end function

  function SimpleTextPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(SimpleTextPaintable), target :: object
    class(SimpleTextPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'SimpleTextPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine SimpleTextPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(SimpleTextPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function SimpleTextPaintable_jnew_2(j_text, j_basicColor) result(this)
    character(len=*), intent(in) :: j_text
    class(BasicColor), target, optional :: j_basicColor
    class(SimpleTextPaintable), pointer :: this
    allocate(this)
    this%jclass = 'SimpleTextPaintable'
    this%f_text = ''
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    
    
    this%f_topScoresWidth = 0
    this%f_fontHeight = 0
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        this%f_text = j_text
        this%f_basicColor => j_basicColor
  end function

  recursive subroutine SimpleTextPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(SimpleTextPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_topScoresWidth = (shifta(j_font%jm_stringWidth_1(this%f_text), iand(1, 31)))
        this%f_fontHeight = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine SimpleTextPaintable_jm_paint_1(this, j_graphics)
    class(SimpleTextPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_width
    class(BasicColor), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_width = this%f_displayInfoSingleton%jm_getLast_0()((this%f_displayInfoSingleton%f_WIDTH) + 1)
        jtemp1 => this%jm_getBasicColorP_0()
        call j_graphics%jm_setColor_1(jtemp1%jm_intValue_0())
        call j_graphics%jm_drawString_4(this%f_text, ((shifta(j_width, iand(1, 31))) - this%f_topScoresWidth), this%f_fontHeight, this%f_anchor)
  end subroutine

  recursive subroutine SimpleTextPaintable_jm_setBasicColorP_1(this, j_basicColor)
    class(SimpleTextPaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function SimpleTextPaintable_jm_getBasicColorP_0(this) result(jresult)
    class(SimpleTextPaintable), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine SimpleTextPaintable_jm_setText_1(this, j_text)
    class(SimpleTextPaintable), target :: this
    character(len=*), intent(in) :: j_text
        this%f_text = j_text
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive function SimpleTextPaintable_jm_getText_0(this) result(jresult)
    class(SimpleTextPaintable), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_text
        return
  end function
end module SimpleTextPaintable_m

