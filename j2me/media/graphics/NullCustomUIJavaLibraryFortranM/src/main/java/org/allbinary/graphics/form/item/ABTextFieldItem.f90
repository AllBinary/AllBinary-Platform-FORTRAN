! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABTextFieldItem_m
  use JR_m
  use BasicColor_m
  use StringUtil_m
  use Visitor_m
  use ABTextItem_m
  implicit none

  type, extends(ABTextItem) :: ABTextFieldItem
    class(Font), pointer :: f_font => null()
  contains
    procedure :: jm_getLabel_0 => ABTextFieldItem_jm_getLabel_0
    procedure :: jm_setLabel_1 => ABTextFieldItem_jm_setLabel_1
    procedure :: jm_getString_0 => ABTextFieldItem_jm_getString_0
    procedure :: jm_setString_1 => ABTextFieldItem_jm_setString_1
    procedure :: jm_setFocus_1 => ABTextFieldItem_jm_setFocus_1
    procedure :: jm_getFontHeight_0 => ABTextFieldItem_jm_getFontHeight_0
    procedure :: jm_setBackgroundBasicColorP_1 => ABTextFieldItem_jm_setBackgroundBasicColorP_1
    procedure :: jm_setForegroundBasicColorP_1 => ABTextFieldItem_jm_setForegroundBasicColorP_1
  end type


contains

  function ABTextFieldItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABTextFieldItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABTextFieldItem)
      jresult => object
    end select
  end function

  recursive function ABTextFieldItem_jnew_10(j_canvas, j_visitor, j_label, j_value, j_maxSize, j_layout, j_altText, j_font, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(Canvas), target, optional :: j_canvas
    class(Visitor), target, optional :: j_visitor
    character(len=*), intent(in) :: j_label
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_maxSize
    integer(4), value :: j_layout
    character(len=*), intent(in) :: j_altText
    class(Font), target, optional :: j_font
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABTextFieldItem), pointer :: this
    allocate(this)
    this%jclass = 'ABTextFieldItem'
    
        continue ! super()
        this%f_font => j_font
  end function

  recursive function ABTextFieldItem_jm_getLabel_0(this) result(jresult)
    class(ABTextFieldItem), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive subroutine ABTextFieldItem_jm_setLabel_1(this, j_label)
    class(ABTextFieldItem), target :: this
    character(len=*), intent(in) :: j_label
    continue
  end subroutine

  recursive function ABTextFieldItem_jm_getString_0(this) result(jresult)
    class(ABTextFieldItem), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        jresult = jtemp2%f_EMPTY_STRING
        return
  end function

  recursive subroutine ABTextFieldItem_jm_setString_1(this, j_string)
    class(ABTextFieldItem), target :: this
    character(len=*), intent(in) :: j_string
    continue
  end subroutine

  recursive subroutine ABTextFieldItem_jm_setFocus_1(this, j_state)
    class(ABTextFieldItem), target :: this
    logical, value :: j_state
    continue
  end subroutine

  recursive function ABTextFieldItem_jm_getFontHeight_0(this) result(jresult)
    class(ABTextFieldItem), target :: this
    integer(4) :: jresult
        jresult = this%f_font%jm_getHeight_0()
        return
  end function

  recursive subroutine ABTextFieldItem_jm_setBackgroundBasicColorP_1(this, j_basicColor)
    class(ABTextFieldItem), target :: this
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive subroutine ABTextFieldItem_jm_setForegroundBasicColorP_1(this, j_basicColor)
    class(ABTextFieldItem), target :: this
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine
end module ABTextFieldItem_m

