! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module ABCustomForm_m
  use JR_m
  use BasicColor_m
  use ABCustomItem_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  use CustomScreen_m
  implicit none

  type, extends(CustomScreen) :: ABCustomForm
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_getAllitems_0 => ABCustomForm_jm_getAllitems_0
    procedure :: jm_size_0 => ABCustomForm_jm_size_0
    procedure :: jm_setSelectedIndex_1 => ABCustomForm_jm_setSelectedIndex_1
    procedure :: jm_getSelectedIndex_0 => ABCustomForm_jm_getSelectedIndex_0
    procedure :: jm_deleteAll_0 => ABCustomForm_jm_deleteAll_0
    procedure :: jm_delete_1 => ABCustomForm_jm_delete_1
    procedure :: jm_append_1 => ABCustomForm_jm_append_1
    procedure :: jm_insert_2 => ABCustomForm_jm_insert_2
    procedure :: jm_set_2 => ABCustomForm_jm_set_2
    procedure :: jm_get_1 => ABCustomForm_jm_get_1
    procedure :: jm_getWidth_0 => ABCustomForm_jm_getWidth_0
    procedure :: jm_paint_1 => ABCustomForm_jm_paint_1
    procedure :: jm_getTitle_0 => ABCustomForm_jm_getTitle_0
  end type


contains

  function ABCustomForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABCustomForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABCustomForm)
      jresult => object
    end select
  end function

  recursive function ABCustomForm_jnew_4(j_title, j_items, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ABCustomForm), pointer :: this
    allocate(this)
    this%jclass = 'ABCustomForm'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
        continue
  end function

  recursive function ABCustomForm_jm_getAllitems_0(this) result(jresult)
    class(ABCustomForm), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(0)
        return
  end function

  recursive function ABCustomForm_jm_size_0(this) result(jresult)
    class(ABCustomForm), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine ABCustomForm_jm_setSelectedIndex_1(this, j_index)
    class(ABCustomForm), target :: this
    integer(4), value :: j_index
    continue
  end subroutine

  recursive function ABCustomForm_jm_getSelectedIndex_0(this) result(jresult)
    class(ABCustomForm), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive subroutine ABCustomForm_jm_deleteAll_0(this)
    class(ABCustomForm), target :: this
    continue
  end subroutine

  recursive subroutine ABCustomForm_jm_delete_1(this, j_itemNum)
    class(ABCustomForm), target :: this
    integer(4), value :: j_itemNum
    continue
  end subroutine

  recursive function ABCustomForm_jm_append_1(this, j_item) result(jresult)
    class(ABCustomForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive subroutine ABCustomForm_jm_insert_2(this, j_itemNum, j_item)
    class(ABCustomForm), target :: this
    integer(4), value :: j_itemNum
    class(ABCustomItem), target, optional :: j_item
    continue
  end subroutine

  recursive subroutine ABCustomForm_jm_set_2(this, j_itemNum, j_item)
    class(ABCustomForm), target :: this
    integer(4), value :: j_itemNum
    class(ABCustomItem), target, optional :: j_item
    continue
  end subroutine

  recursive function ABCustomForm_jm_get_1(this, j_itemNum) result(jresult)
    class(ABCustomForm), target :: this
    integer(4), value :: j_itemNum
    class(ABCustomItem), pointer :: jresult
        jresult => ABCustomItem_jm_getNullInstance_0()
        return
  end function

  recursive function ABCustomForm_jm_getWidth_0(this) result(jresult)
    class(ABCustomForm), target :: this
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine ABCustomForm_jm_paint_1(this, j_graphics)
    class(ABCustomForm), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function ABCustomForm_jm_getTitle_0(this) result(jresult)
    class(ABCustomForm), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function
end module ABCustomForm_m

