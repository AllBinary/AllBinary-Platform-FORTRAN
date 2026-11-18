! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABTextItem_m
  use JR_m
  use BasicColor_m
  use CustomCustomItem_m
  use ABCustomItemInterface_m
  use ABStringComponent_m
  implicit none

  type, extends(CustomCustomItem) :: ABTextItem
  contains
    procedure :: jm_keyPressed_1 => ABTextItem_jm_keyPressed_1
    procedure :: jm_paintUnselected_3 => ABTextItem_jm_paintUnselected_3
    procedure :: jm_getLabelStringComponent_0 => ABTextItem_jm_getLabelStringComponent_0
    procedure :: jm_getMinimumWidth_0 => ABTextItem_jm_getMinimumWidth_0
    procedure :: jm_getMinimumHeight_0 => ABTextItem_jm_getMinimumHeight_0
    procedure :: jm_getLabel_0 => ABTextItem_jm_getLabel_0
    procedure :: jm_paintXY_3 => ABTextItem_jm_paintXY_3
  end type

  ! ABTextItem used as a ABCustomItemInterface
  type, extends(ABCustomItemInterface) :: ABTextItem_jas_ABCustomItemInterface
    class(ABTextItem), pointer :: jtarget => null()
  contains
    procedure :: jm_paintUnselected_3 => ABTextItem_jas_ABCustomItemInterface_jm_paintUnselected_3
    procedure :: jm_getMinimumWidth_0 => ABTextItem_jas_ABCustomItemInterface_jm_getMinimumWidth_0
    procedure :: jm_getMinimumHeight_0 => ABTextItem_jas_ABCustomItemInterface_jm_getMinimumHeight_0
    procedure :: jm_getLabel_0 => ABTextItem_jas_ABCustomItemInterface_jm_getLabel_0
    procedure :: jm_paintXY_3 => ABTextItem_jas_ABCustomItemInterface_jm_paintXY_3
  end type


contains

  function ABTextItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABTextItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABTextItem)
      jresult => object
    end select
  end function

  function ABTextItem_jas_ABCustomItemInterface_jnew(object) result(jresult)
    class(ABTextItem), target :: object
    class(ABTextItem_jas_ABCustomItemInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ABTextItem'
    jresult%jtarget => object
  end function

  recursive subroutine ABTextItem_jas_ABCustomItemInterface_jm_paintUnselected_3(this, j_graphics, j_x, j_y)
    class(ABTextItem_jas_ABCustomItemInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    call this%jtarget%jm_paintUnselected_3(j_graphics, j_x, j_y)
  end subroutine

  recursive function ABTextItem_jas_ABCustomItemInterface_jm_getMinimumWidth_0(this) result(jresult)
    class(ABTextItem_jas_ABCustomItemInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getMinimumWidth_0()
  end function

  recursive function ABTextItem_jas_ABCustomItemInterface_jm_getMinimumHeight_0(this) result(jresult)
    class(ABTextItem_jas_ABCustomItemInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getMinimumHeight_0()
  end function

  recursive function ABTextItem_jas_ABCustomItemInterface_jm_getLabel_0(this) result(jresult)
    class(ABTextItem_jas_ABCustomItemInterface), target :: this
    character(len=:), allocatable :: jresult
    jresult = this%jtarget%jm_getLabel_0()
  end function

  recursive subroutine ABTextItem_jas_ABCustomItemInterface_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ABTextItem_jas_ABCustomItemInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    call this%jtarget%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine

  recursive function ABTextItem_jnew_5(j_label, j_layout, j_altText, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_label
    integer(4), value :: j_layout
    character(len=*), intent(in) :: j_altText
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABTextItem), pointer :: this
    allocate(this)
    this%jclass = 'ABTextItem'
        continue ! super()
  end function

  recursive subroutine ABTextItem_jm_keyPressed_1(this, j_keyCode)
    class(ABTextItem), target :: this
    integer(4), value :: j_keyCode
    continue
  end subroutine

  recursive subroutine ABTextItem_jm_paintUnselected_3(this, j_graphics, j_x, j_y)
    class(ABTextItem), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive function ABTextItem_jm_getLabelStringComponent_0(this) result(jresult)
    class(ABTextItem), target :: this
    class(ABStringComponent), pointer :: jresult
        jresult => ABStringComponent_jstatic_NULL_STRING_COMPONENT()
        return
  end function

  recursive function ABTextItem_jm_getMinimumWidth_0(this) result(jresult)
    class(ABTextItem), target :: this
    integer(4) :: jresult
        jresult = this%CustomCustomItem%jm_getMinimumWidth_0()
        return
  end function

  recursive function ABTextItem_jm_getMinimumHeight_0(this) result(jresult)
    class(ABTextItem), target :: this
    integer(4) :: jresult
        jresult = this%CustomCustomItem%jm_getMinimumHeight_0()
        return
  end function

  recursive function ABTextItem_jm_getLabel_0(this) result(jresult)
    class(ABTextItem), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%CustomCustomItem%jm_getLabel_0()
        return
  end function

  recursive subroutine ABTextItem_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ABTextItem), target :: this
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
        call this%CustomCustomItem%jm_paintXY_3(j_graphics, j_x, j_y)
  end subroutine
end module ABTextItem_m

