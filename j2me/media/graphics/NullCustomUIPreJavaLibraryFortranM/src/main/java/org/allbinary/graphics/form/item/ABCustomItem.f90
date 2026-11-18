! Generated Code Do Not Modify
! package org.allbinary.graphics.form.item
module ABCustomItem_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use NullUtil_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: ABCustomItem
  contains
    procedure :: jm_setOwner_1 => ABCustomItem_jm_setOwner_1
    procedure :: jm_paintXY_3 => ABCustomItem_jm_paintXY_3
    procedure :: jm_paintUnselected_3 => ABCustomItem_jm_paintUnselected_3
    procedure :: jm_isFocusable_0 => ABCustomItem_jm_isFocusable_0
    procedure :: jm_getLabel_0 => ABCustomItem_jm_getLabel_0
    procedure :: jm_setLabel_1 => ABCustomItem_jm_setLabel_1
    procedure :: jm_getHeight_0 => ABCustomItem_jm_getHeight_0
    procedure :: jm_setHeight_1 => ABCustomItem_jm_setHeight_1
    procedure :: jm_getValue_0 => ABCustomItem_jm_getValue_0
    procedure :: jm_setValue_1 => ABCustomItem_jm_setValue_1
    procedure :: jm_getMinimumWidth_0 => ABCustomItem_jm_getMinimumWidth_0
    procedure :: jm_getMinimumHeight_0 => ABCustomItem_jm_getMinimumHeight_0
    procedure :: jm_preMeasurement_1 => ABCustomItem_jm_preMeasurement_1
  end type

  class(JObject), pointer, save :: ABCustomItem_jcell_NULL_CUSTOM_ITEM => null()
  logical, save :: ABCustomItem_jset_NULL_CUSTOM_ITEM = .false.

contains

  function ABCustomItem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomItem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomItem)
      jresult => object
    end select
  end function

  function ABCustomItem_jstatic_NULL_CUSTOM_ITEM() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ABCustomItem_jset_NULL_CUSTOM_ITEM) then
      ABCustomItem_jset_NULL_CUSTOM_ITEM = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ABCustomItem_jcell_NULL_CUSTOM_ITEM => jtemp1%f_NULL_OBJECT
    end if
    jresult => ABCustomItem_jcell_NULL_CUSTOM_ITEM
  end function

  subroutine ABCustomItem_jsetstatic_NULL_CUSTOM_ITEM(jvalue)
    class(JObject), target, optional :: jvalue
    ABCustomItem_jset_NULL_CUSTOM_ITEM = .true.
    if (present(jvalue)) then
      ABCustomItem_jcell_NULL_CUSTOM_ITEM => jvalue
    else
      ABCustomItem_jcell_NULL_CUSTOM_ITEM => null()
    end if
  end subroutine

  recursive function ABCustomItem_jnew_3(j_label, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_label
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABCustomItem), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomItem'
        continue
  end function

  recursive function ABCustomItem_jm_getNullInstance_0() result(jresult)
    class(ABCustomItem), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp5
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(ABCustomItem_jstatic_NULL_CUSTOM_ITEM(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            jtemp5 => BasicColorFactory_jm_getInstance_0()
            call ABCustomItem_jsetstatic_NULL_CUSTOM_ITEM(ABCustomItem_jnew_3(jtemp3%f_EMPTY_STRING, jtemp4%f_BLACK, jtemp5%f_WHITE))
        end if
        jresult => ABCustomItem_jcast(ABCustomItem_jstatic_NULL_CUSTOM_ITEM())
        return
  end function

  recursive subroutine ABCustomItem_jm_setOwner_1(this, j_owner)
    class(ABCustomItem), target :: this
    class(Screen), target, optional :: j_owner
    continue
  end subroutine

  recursive subroutine ABCustomItem_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ABCustomItem), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive subroutine ABCustomItem_jm_paintUnselected_3(this, j_graphics, j_x, j_y)
    class(ABCustomItem), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive function ABCustomItem_jm_isFocusable_0(this) result(jresult)
    class(ABCustomItem), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function ABCustomItem_jm_getLabel_0(this) result(jresult)
    class(ABCustomItem), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp6
        jtemp6 => StringUtil_jm_getInstance_0()
        jresult = jtemp6%f_EMPTY_STRING
        return
  end function

  recursive subroutine ABCustomItem_jm_setLabel_1(this, j_label)
    class(ABCustomItem), target :: this
    character(len=*), intent(in) :: j_label
    continue
  end subroutine

  recursive function ABCustomItem_jm_getHeight_0(this) result(jresult)
    class(ABCustomItem), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine ABCustomItem_jm_setHeight_1(this, j_height)
    class(ABCustomItem), target :: this
    integer(4), value :: j_height
    continue
  end subroutine

  recursive function ABCustomItem_jm_getValue_0(this) result(jresult)
    class(ABCustomItem), target :: this
    real(4) :: jresult
        jresult = 0.0
        return
  end function

  recursive subroutine ABCustomItem_jm_setValue_1(this, j_value)
    class(ABCustomItem), target :: this
    real(4), value :: j_value
    continue
  end subroutine

  recursive function ABCustomItem_jm_getMinimumWidth_0(this) result(jresult)
    class(ABCustomItem), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ABCustomItem_jm_getMinimumHeight_0(this) result(jresult)
    class(ABCustomItem), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine ABCustomItem_jm_preMeasurement_1(this, j_graphics)
    class(ABCustomItem), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module ABCustomItem_m

