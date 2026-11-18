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
! package org.allbinary.graphics.form
module ScrollSelectionForm_m
  use JR_m
  use GPoint_m
  use Rectangle_m
  use BasicColor_m
  use BasicColorFactory_m
  use ABCustomItem_m
  use NullUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use RectangleCollisionUtil_m
  use CommonLabels_m
  use CommonSeps_m
  use CommonStrings_m
  use PaintableForm_m
  use ItemPaintableFactory_m
  use ItemIndexPaintable_m
  use ItemIndexDx_m
  use ItemPaintable_m
  use FormTypeFactory_m
  use ScrollSelectionFormTempHorizontalPaintable_m
  use ScrollSelectionFormTempHorizontalDx_m
  use ScrollSelectionFormVerticalPaintable_m
  use ScrollSelectionFormVericalDx_m
  use ScrollSelectionFormHorizontalPaintable_m
  use ScrollSelectionFormHorizontalDx_m
  use FormType_m
  implicit none

  type, extends(PaintableForm) :: ScrollSelectionForm
    class(RectangleCollisionUtil), pointer :: f_rectangleCollisionUtil => null()
    integer(4) :: f_border = 0
    integer(4) :: f_halfBorder = 0
    class(BasicColor), pointer :: f_buttonBasicColor => null()
    class(ItemIndexPaintable), pointer :: f_scrollSelectionFormFormTypeItemIndexPaintable => null()
    class(ItemIndexDx), pointer :: f_formTypeItemIndexDx => null()
    class(ItemPaintable), pointer :: f_paintable => null()
    integer(4) :: f_adjustedExtraBorder = 0
  contains
    procedure :: jm_init_2 => ScrollSelectionForm_jm_init_2
    procedure :: jm_paintItemHorizontal_5 => ScrollSelectionForm_jm_paintItemHorizontal_5
    procedure :: jm_paintItemVertical_5 => ScrollSelectionForm_jm_paintItemVertical_5
    procedure :: jm_paintItemTempHorizontal_5 => ScrollSelectionForm_jm_paintItemTempHorizontal_5
    procedure :: jm_getSelectedIndexForPointHorizontalDx_4 => ScrollSelectionForm_jm_getSelectedIndexForPointHorizontalDx_4
    procedure :: jm_getSelectedIndexForPointVerticalDx_4 => ScrollSelectionForm_jm_getSelectedIndexForPointVerticalDx_4
    procedure :: jm_getSelectedIndexForPointTempHorizontalDx_4 => ScrollSelectionForm_jm_getSelectedIndexForPointTempHorizontalDx_4
    procedure :: jm_append_1 => ScrollSelectionForm_jm_append_1
    procedure :: jm_getSelectedItem_1 => ScrollSelectionForm_jm_getSelectedItem_1
    procedure :: jm_getItemIndex_1 => ScrollSelectionForm_jm_getItemIndex_1
    procedure :: jm_getStartIndex_0 => ScrollSelectionForm_jm_getStartIndex_0
    procedure :: jm_getSelectedIndexForPoint_1 => ScrollSelectionForm_jm_getSelectedIndexForPoint_1
    procedure :: jm_processInputKey_1 => ScrollSelectionForm_jm_processInputKey_1
    procedure :: jm_isInForm_1 => ScrollSelectionForm_jm_isInForm_1
    procedure :: jm_paintItem_5 => ScrollSelectionForm_jm_paintItem_5
    procedure :: jm_paintUnselectedItem_5 => ScrollSelectionForm_jm_paintUnselectedItem_5
    procedure :: jm_getDiffX_1 => ScrollSelectionForm_jm_getDiffX_1
    procedure :: jm_getDx_0 => ScrollSelectionForm_jm_getDx_0
    procedure :: jm_getDy_0 => ScrollSelectionForm_jm_getDy_0
    procedure :: jm_setButtonBasicColor_1 => ScrollSelectionForm_jm_setButtonBasicColor_1
    procedure :: jm_getButtonBasicColor_0 => ScrollSelectionForm_jm_getButtonBasicColor_0
  end type

  class(JObject), pointer, save :: ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_FORM => null()
  logical, save :: ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_FORM = .false.
  class(JObject), pointer, save :: ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM => null()
  logical, save :: ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = .false.
  character(len=:), allocatable, save :: ScrollSelectionForm_jcell_INSIDE_FORM
  logical, save :: ScrollSelectionForm_jset_INSIDE_FORM = .false.
  character(len=:), allocatable, save :: ScrollSelectionForm_jcell_IS_IN_FORM
  logical, save :: ScrollSelectionForm_jset_IS_IN_FORM = .false.
  character(len=:), allocatable, save :: ScrollSelectionForm_jcell_GET_SELECTED_INDEX
  logical, save :: ScrollSelectionForm_jset_GET_SELECTED_INDEX = .false.

contains

  function ScrollSelectionForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollSelectionForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollSelectionForm)
      jresult => object
    end select
  end function

  function ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_FORM() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_FORM) then
      ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_FORM = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_FORM => jtemp1%f_NULL_OBJECT
    end if
    jresult => ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_FORM
  end function

  subroutine ScrollSelectionForm_jsetstatic_NULL_SCROLL_SELECTION_FORM(jvalue)
    class(JObject), target, optional :: jvalue
    ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_FORM = .true.
    if (present(jvalue)) then
      ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_FORM => jvalue
    else
      ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_FORM => null()
    end if
  end subroutine

  function ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp6
    if (.not. ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_HORIZONTAL_FORM) then
      ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = .true.
      jtemp6 => NullUtil_jm_getInstance_0()
    ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM => jtemp6%f_NULL_OBJECT
    end if
    jresult => ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM
  end function

  subroutine ScrollSelectionForm_jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(jvalue)
    class(JObject), target, optional :: jvalue
    ScrollSelectionForm_jset_NULL_SCROLL_SELECTION_HORIZONTAL_FORM = .true.
    if (present(jvalue)) then
      ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM => jvalue
    else
      ScrollSelectionForm_jcell_NULL_SCROLL_SELECTION_HORIZONTAL_FORM => null()
    end if
  end subroutine

  function ScrollSelectionForm_jstatic_INSIDE_FORM() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. ScrollSelectionForm_jset_INSIDE_FORM) then
      ScrollSelectionForm_jset_INSIDE_FORM = .true.
      ScrollSelectionForm_jcell_INSIDE_FORM = ' inside form'
    end if
    jresult = ScrollSelectionForm_jcell_INSIDE_FORM
  end function

  subroutine ScrollSelectionForm_jsetstatic_INSIDE_FORM(jvalue)
    character(len=*), intent(in) :: jvalue
    ScrollSelectionForm_jset_INSIDE_FORM = .true.
    ScrollSelectionForm_jcell_INSIDE_FORM = jvalue
  end subroutine

  function ScrollSelectionForm_jstatic_IS_IN_FORM() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. ScrollSelectionForm_jset_IS_IN_FORM) then
      ScrollSelectionForm_jset_IS_IN_FORM = .true.
      ScrollSelectionForm_jcell_IS_IN_FORM = 'isInForm'
    end if
    jresult = ScrollSelectionForm_jcell_IS_IN_FORM
  end function

  subroutine ScrollSelectionForm_jsetstatic_IS_IN_FORM(jvalue)
    character(len=*), intent(in) :: jvalue
    ScrollSelectionForm_jset_IS_IN_FORM = .true.
    ScrollSelectionForm_jcell_IS_IN_FORM = jvalue
  end subroutine

  function ScrollSelectionForm_jstatic_GET_SELECTED_INDEX() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. ScrollSelectionForm_jset_GET_SELECTED_INDEX) then
      ScrollSelectionForm_jset_GET_SELECTED_INDEX = .true.
      ScrollSelectionForm_jcell_GET_SELECTED_INDEX = 'getSelectedIndexForPoint'
    end if
    jresult = ScrollSelectionForm_jcell_GET_SELECTED_INDEX
  end function

  subroutine ScrollSelectionForm_jsetstatic_GET_SELECTED_INDEX(jvalue)
    character(len=*), intent(in) :: jvalue
    ScrollSelectionForm_jset_GET_SELECTED_INDEX = .true.
    ScrollSelectionForm_jcell_GET_SELECTED_INDEX = jvalue
  end subroutine

  recursive function ScrollSelectionForm_jnew_7(j_title, j_items, j_formPaintableFactory, j_border, j_adjustedExtraBorder, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(ItemPaintableFactory), target, optional :: j_formPaintableFactory
    integer(4), value :: j_border
    integer(4), value :: j_adjustedExtraBorder
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ScrollSelectionForm), pointer :: this
    allocate(this)
    this%jclass = 'ScrollSelectionForm'
    this%f_rectangleCollisionUtil => RectangleCollisionUtil_jm_getInstance_0()
    
    
    
    this%f_scrollSelectionFormFormTypeItemIndexPaintable => ItemIndexPaintable_jm_getInstance_0()
    this%f_formTypeItemIndexDx => ItemIndexDx_jm_getInstance_0()
    this%f_paintable => ItemPaintableFactory_jm_getInstance_0()
    
        continue ! super()
        this%f_adjustedExtraBorder = j_adjustedExtraBorder
        this%f_buttonBasicColor => j_foregroundBasicColor
        this%f_border = j_border
        this%f_halfBorder = (shifta(j_border, iand(1, 31)))
        this%f_paintable => j_formPaintableFactory%jm_getInstanceItemPaintable_1(this)
  end function

  recursive function ScrollSelectionForm_jm_createForm_6(j_title, j_items, j_formPaintableFactory, j_border, j_backgroundBasicColor, j_foregroundBasicColor) result(jresult)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(ItemPaintableFactory), target, optional :: j_formPaintableFactory
    integer(4), value :: j_border
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(PaintableForm), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(LogUtil), pointer :: j_logUtil
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (JR_same(j_formPaintableFactory, ItemPaintableFactory_jm_getInstance_0())) then
                jresult => ScrollSelectionForm_jnew_7(j_title, j_items, j_formPaintableFactory, j_border, (-3), j_backgroundBasicColor, j_foregroundBasicColor)
                return
            else
                j_commonStrings => CommonStrings_jm_getInstance_0()
                j_logUtil => LogUtil_jm_getInstance_0()
                call j_logUtil%jm_putF_3(j_commonStrings%f_EXCEPTION, j_logUtil, j_commonStrings%f_EXCEPTION)
                jresult => PaintableForm_jm_getNullPaintableForm_0()
                return
            end if
  end function

  recursive function ScrollSelectionForm_jm_getNullScrollSelectionForm_0() result(jresult)
    class(ScrollSelectionForm), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp5
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_FORM(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            jtemp5 => BasicColorFactory_jm_getInstance_0()
            call ScrollSelectionForm_jsetstatic_NULL_SCROLL_SELECTION_FORM(ScrollSelectionForm_jm_createForm_6(jtemp3%f_EMPTY_STRING, JR_newRefArray(0), ItemPaintableFactory_jm_getInstance_0(), 0, jtemp4%f_BLACK, jtemp5%f_WHITE))
        end if
        jresult => ScrollSelectionForm_jcast(ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_FORM())
        return
  end function

  recursive function ScrollSelectionForm_jm_getNullScrollSelectionFormHorizontal_0() result(jresult)
    class(ScrollSelectionForm), pointer :: jresult
    class(NullUtil), pointer :: jtemp7
    class(StringUtil), pointer :: jtemp8
    class(BasicColorFactory), pointer :: jtemp9
    class(BasicColorFactory), pointer :: jtemp10
        jtemp7 => NullUtil_jm_getInstance_0()
        if (JR_same(ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(), jtemp7%f_NULL_OBJECT)) then
            jtemp8 => StringUtil_jm_getInstance_0()
            jtemp9 => BasicColorFactory_jm_getInstance_0()
            jtemp10 => BasicColorFactory_jm_getInstance_0()
            call ScrollSelectionForm_jsetstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM(ScrollSelectionForm_jm_createForm_6(jtemp8%f_EMPTY_STRING, JR_newRefArray(0), ItemPaintableFactory_jm_getInstance_0(), 0, jtemp9%f_BLACK, jtemp10%f_WHITE))
        end if
        jresult => ScrollSelectionForm_jcast(ScrollSelectionForm_jstatic_NULL_SCROLL_SELECTION_HORIZONTAL_FORM())
        return
  end function

  recursive subroutine ScrollSelectionForm_jm_init_2(this, j_rectangle, j_formType)
    class(ScrollSelectionForm), target :: this
    class(Rectangle), target, optional :: j_rectangle
    class(FormType), target, optional :: j_formType
    class(FormTypeFactory), pointer :: j_formTypeFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%PaintableForm%jm_init_2(j_rectangle, j_formType)
        j_formTypeFactory => FormTypeFactory_jm_getInstance_0()
        if (JR_same(j_formType, j_formTypeFactory%f_HORIZONTAL_FORM)) then
            this%f_scrollSelectionFormFormTypeItemIndexPaintable => ScrollSelectionFormHorizontalPaintable_jnew_1(this)
            this%f_formTypeItemIndexDx => ScrollSelectionFormHorizontalDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
            this%f_scrollSelectionFormFormTypeItemIndexPaintable => ScrollSelectionFormVerticalPaintable_jnew_1(this)
            this%f_formTypeItemIndexDx => ScrollSelectionFormVericalDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_TEMP_HORIZONTAL_FORM)) then
            this%f_scrollSelectionFormFormTypeItemIndexPaintable => ScrollSelectionFormTempHorizontalPaintable_jnew_1(this)
            this%f_formTypeItemIndexDx => ScrollSelectionFormTempHorizontalDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_NULL_FORM_TYPE)) then
            continue
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end subroutine

  recursive function ScrollSelectionForm_jm_paintItemHorizontal_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    integer(4) :: j_width
        j_width = j_item%jm_getMinimumWidth_0()
        jresult = ((j_x + j_width) + this%f_border)
        return
  end function

  recursive function ScrollSelectionForm_jm_paintItemVertical_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    integer(4) :: j_height
        j_height = j_item%jm_getMinimumHeight_0()
        jresult = ((j_y + j_height) + this%f_border)
        return
  end function

  recursive function ScrollSelectionForm_jm_paintItemTempHorizontal_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ScrollSelectionForm_jm_getSelectedIndexForPointHorizontalDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = (j_dx - this%f_halfBorder)
        return
  end function

  recursive function ScrollSelectionForm_jm_getSelectedIndexForPointVerticalDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = (j_dx + this%jm_getDiffX_1(j_item))
        return
  end function

  recursive function ScrollSelectionForm_jm_getSelectedIndexForPointTempHorizontalDx_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = (j_dx + this%jm_getDiffX_1(j_item))
        return
  end function

  recursive function ScrollSelectionForm_jm_append_1(this, j_item) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
        jresult = this%PaintableForm%jm_append_1(j_item)
        return
  end function

  recursive function ScrollSelectionForm_jm_getSelectedItem_1(this, j_point) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(GPoint), target, optional :: j_point
    class(ABCustomItem), pointer :: jresult
    integer(4) :: j_index
        j_index = this%jm_getSelectedIndexForPoint_1(j_point)
        if ((j_index /= (-1))) then
            jresult => this%jm_get_1(j_index)
            return
        else
            jresult => ABCustomItem_jm_getNullInstance_0()
            return
        end if
  end function

  recursive function ScrollSelectionForm_jm_getItemIndex_1(this, j_item) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
    class(ABCustomItem), pointer :: j_nextItem
    integer(4) :: j_size
    integer(4) :: j_index
        continue
        j_size = this%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_nextItem => ABCustomItem_jcast(this%jm_get_1(j_index))
            if (JR_same(j_nextItem, j_item)) then
                jresult = j_index
                return
            end if
            j_index = j_index + 1
        end do
        jresult = (-1)
        return
  end function

  recursive function ScrollSelectionForm_jm_getStartIndex_0(this) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ScrollSelectionForm_jm_getSelectedIndexForPoint_1(this, j_point) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(GPoint), target, optional :: j_point
    integer(4) :: jresult
    integer(4) :: j_start
    integer(4) :: j_size
    integer(4) :: j_dx
    integer(4) :: j_dy
    class(FormTypeFactory), pointer :: j_formTypeFactory
    class(CommonLabels), pointer :: j_commonLabels
    class(StringMaker), pointer :: j_stringBuffer
    class(ABCustomItem), pointer :: j_item
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_diffX
    integer(4) :: j_index
    class(CommonSeps), pointer :: jtemp11
    class(CommonSeps), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_start = this%jm_getStartIndex_0()
        j_size = this%jm_size_0()
        j_dx = this%jm_getDx_0()
        j_dy = this%jm_getDy_0()
        j_formTypeFactory => FormTypeFactory_jm_getInstance_0()
        j_commonLabels => CommonLabels_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_START_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_start)
        jtemp11 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp11%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_TOTAL_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_size)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, ScrollSelectionForm_jstatic_GET_SELECTED_INDEX())
        continue
        continue
        continue
        continue
        j_index = j_start
        do while ((j_index < j_size))
            j_item => this%jm_get_1(j_index)
            j_width = j_item%jm_getMinimumWidth_0()
            j_height = j_item%jm_getMinimumHeight_0()
            j_diffX = this%f_formTypeItemIndexDx%jm_getDx_4(j_index, j_item, j_dx, j_dy)
            if (this%f_rectangleCollisionUtil%jm_isInside_6(j_diffX, (j_dy - this%f_halfBorder), ((j_diffX + j_width) + this%f_border), (((j_dy + j_height) + this%f_halfBorder) + 1), j_point%jm_getX_0(), j_point%jm_getY_0())) then
                jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
                jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_ITEM_LABEL)
                jdiscardRef => j_stringBuffer%jm_append_1(j_item%jm_getLabel_0())
                jtemp12 => CommonSeps_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp12%f_SPACE)
                jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_INDEX_LABEL)
                jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
                call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, ScrollSelectionForm_jstatic_GET_SELECTED_INDEX())
                jresult = j_index
                return
            end if
            if ((this%f_formType == j_formTypeFactory%f_HORIZONTAL_FORM)) then
                j_dx = ((j_dx + j_width) + this%f_border)
                if ((j_dx > this%f_rectangle%jm_getMaxX_0())) then
                    exit
                end if
            else if ((this%f_formType == j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
                j_dy = ((j_dy + j_height) + this%f_border)
                if ((j_dy > this%f_rectangle%jm_getMaxY_0())) then
                    exit
                end if
            else if ((this%f_formType == j_formTypeFactory%f_NULL_FORM_TYPE)) then
                continue
            else
                error stop JR_toString(JR_newJObject('Exception'))
            end if
            j_index = j_index + 1
        end do
        jresult = (-1)
        return
  end function

  recursive function ScrollSelectionForm_jm_processInputKey_1(this, j_gameKeyCode) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4), value :: j_gameKeyCode
    integer(4) :: jresult
    class(FormTypeFactory), pointer :: j_formTypeFactory
    integer(4) :: j_index
    integer(4) :: j_max
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_formTypeFactory => FormTypeFactory_jm_getInstance_0()
        if ((this%jm_size_0() == 0)) then
            jresult = (-1)
            return
        end if
        j_index = this%jm_getSelectedIndex_0()
        if (((this%f_formType == j_formTypeFactory%f_HORIZONTAL_FORM) .or. (this%f_formType == j_formTypeFactory%f_TEMP_HORIZONTAL_FORM))) then
            if ((j_gameKeyCode == Canvas_jstatic_RIGHT())) then
                j_index = j_index + 1
            else if ((j_gameKeyCode == Canvas_jstatic_LEFT())) then
                j_index = j_index - 1
            end if
        else if ((this%f_formType == j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
            if ((j_gameKeyCode == Canvas_jstatic_DOWN())) then
                j_index = j_index + 1
            else if ((j_gameKeyCode == Canvas_jstatic_UP())) then
                j_index = j_index - 1
            end if
        else if ((this%f_formType == j_formTypeFactory%f_NULL_FORM_TYPE)) then
            continue
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_max = (this%jm_size_0() - 1)
        if ((j_index < 0)) then
            call this%jm_setSelectedIndex_1(0)
        else if ((j_index > j_max)) then
            call this%jm_setSelectedIndex_1(j_max)
        else
            call this%jm_setSelectedIndex_1(j_index)
        end if
        jresult = (-1)
        return
  end function

  recursive function ScrollSelectionForm_jm_isInForm_1(this, j_point) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(GPoint), target, optional :: j_point
    logical :: jresult
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringUtil), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_rectangleCollisionUtil%jm_isInside_6(this%f_x, (this%f_y - this%f_halfBorder), (this%f_rectangle%jm_getMaxX_0() + this%f_border), (this%f_rectangle%jm_getMaxY_0() + this%f_border), j_point%jm_getX_0(), j_point%jm_getY_0())) then
            jtemp16 => StringUtil_jm_getInstance_0()
            jtemp15 => StringMaker_jnew_0()
            jtemp14 => jtemp15%jm_append_1(jtemp16%jm_toString_1(j_point))
            jtemp13 => jtemp14%jm_append_1(ScrollSelectionForm_jstatic_INSIDE_FORM())
            call this%f_logUtil%jm_putF_3(jtemp13%jm_toString_0(), this, ScrollSelectionForm_jstatic_IS_IN_FORM())
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function ScrollSelectionForm_jm_paintItem_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_adjustedBorder
    class(BasicColor), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_item%jm_paintXY_3(j_graphics, j_x, j_y)
        j_width = j_item%jm_getMinimumWidth_0()
        j_height = j_item%jm_getMinimumHeight_0()
        jtemp17 => this%jm_getButtonBasicColor_0()
        call j_graphics%jm_setColor_1(jtemp17%jm_intValue_0())
        j_adjustedBorder = 3
        call j_graphics%jm_drawRect_4(((j_x - this%f_halfBorder) - j_adjustedBorder), ((j_y - this%f_halfBorder) - j_adjustedBorder), ((j_width + this%f_border) + this%f_adjustedExtraBorder), ((j_height + this%f_border) + this%f_adjustedExtraBorder))
        jresult = this%f_scrollSelectionFormFormTypeItemIndexPaintable%jm_paint_5(j_graphics, j_index, j_item, j_x, j_y)
        return
  end function

  recursive function ScrollSelectionForm_jm_paintUnselectedItem_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    class(BasicColor), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp18 => this%jm_getButtonBasicColor_0()
        call j_graphics%jm_setColor_1(jtemp18%jm_intValue_0())
        call j_item%jm_paintUnselected_3(j_graphics, j_x, j_y)
        jresult = this%f_scrollSelectionFormFormTypeItemIndexPaintable%jm_paint_5(j_graphics, j_index, j_item, j_x, j_y)
        return
  end function

  recursive function ScrollSelectionForm_jm_getDiffX_1(this, j_item) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ScrollSelectionForm_jm_getDx_0(this) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive function ScrollSelectionForm_jm_getDy_0(this) result(jresult)
    class(ScrollSelectionForm), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive subroutine ScrollSelectionForm_jm_setButtonBasicColor_1(this, j_buttonBasicColor)
    class(ScrollSelectionForm), target :: this
    class(BasicColor), target, optional :: j_buttonBasicColor
        this%f_buttonBasicColor => j_buttonBasicColor
  end subroutine

  recursive function ScrollSelectionForm_jm_getButtonBasicColor_0(this) result(jresult)
    class(ScrollSelectionForm), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_buttonBasicColor
        return
  end function
end module ScrollSelectionForm_m

