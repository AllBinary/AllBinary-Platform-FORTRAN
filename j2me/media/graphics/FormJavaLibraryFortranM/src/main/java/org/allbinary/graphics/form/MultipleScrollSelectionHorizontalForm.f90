! Generated Code Do Not Modify
! package org.allbinary.graphics.form
module MultipleScrollSelectionHorizontalForm_m
  use JR_m
  use J2MEUtil_m
  use Rectangle_m
  use BasicColor_m
  use BasicColorFactory_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use ABCustomItem_m
  use NullPaintable_m
  use Paintable_m
  use PreLogUtil_m
  use StringMaker_m
  use ScrollSelectionForm_m
  use ItemPaintableFactory_m
  use FormType_m
  use ItemIndexPaintable_m
  use MultipleScrollSelectionFormRectPaintable_m
  use FormTypeFactory_m
  use MultipleScrollSelectionFormVerticalPaintable_m
  use MultipleScrollSelectionFormHorizontalPaintable_m
  implicit none

  type, extends(ScrollSelectionForm) :: MultipleScrollSelectionHorizontalForm
    class(Paintable), pointer :: f_rectPaintable => null()
    class(ItemIndexPaintable), pointer :: f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable => null()
    integer(4) :: f_backgroundColor = 0
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    logical :: f_logged = .false.
    integer(4) :: f_fontHeight = 0
  contains
    procedure :: jm_fillRect_1 => MultipleScrollSelectionHorizontalForm_jm_fillRect_1
    procedure :: jm_init_2 => MultipleScrollSelectionHorizontalForm_jm_init_2
    procedure :: jm_updateMeasurement_1 => MultipleScrollSelectionHorizontalForm_jm_updateMeasurement_1
    procedure :: jm_paintHorizontal_5 => MultipleScrollSelectionHorizontalForm_jm_paintHorizontal_5
    procedure :: jm_paintVertical_5 => MultipleScrollSelectionHorizontalForm_jm_paintVertical_5
    procedure :: jm_getStartIndex_0 => MultipleScrollSelectionHorizontalForm_jm_getStartIndex_0
    procedure :: jm_paint_1 => MultipleScrollSelectionHorizontalForm_jm_paint_1
  end type

  ! MultipleScrollSelectionHorizontalForm used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface
    class(MultipleScrollSelectionHorizontalForm), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function MultipleScrollSelectionHorizontalForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultipleScrollSelectionHorizontalForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultipleScrollSelectionHorizontalForm)
      jresult => object
    end select
  end function

  function MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(MultipleScrollSelectionHorizontalForm), target :: object
    class(MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'MultipleScrollSelectionHorizontalForm'
    jresult%jtarget => object
  end function

  recursive subroutine MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(MultipleScrollSelectionHorizontalForm_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function MultipleScrollSelectionHorizontalForm_jnew_6(j_title, j_items, j_formPaintableFactory, j_border, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(ItemPaintableFactory), target, optional :: j_formPaintableFactory
    integer(4), value :: j_border
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(MultipleScrollSelectionHorizontalForm), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'MultipleScrollSelectionHorizontalForm'
    this%f_rectPaintable => NullPaintable_jm_getInstance_0()
    this%f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable => ItemIndexPaintable_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_backgroundColor = jtemp1%f_TRANSPARENT_GREY%jm_intValue_0()
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_logged = .false.
    this%f_fontHeight = 0
        continue ! super()
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            continue
        else
            this%f_rectPaintable => MultipleScrollSelectionFormRectPaintable_jnew_1(this)
        end if
  end function

  recursive function MultipleScrollSelectionHorizontalForm_jm_createForm_7(j_title, j_items, j_rectangle, j_formType, j_border, j_backgroundBasicColor, j_foregroundBasicColor) result(jresult)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(Rectangle), target, optional :: j_rectangle
    class(FormType), target, optional :: j_formType
    integer(4), value :: j_border
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ScrollSelectionForm), pointer :: jresult
    class(ScrollSelectionForm), pointer :: j_scrollSelectionForm
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_scrollSelectionForm => MultipleScrollSelectionHorizontalForm_jnew_6(j_title, j_items, ItemPaintableFactory_jm_getInstance_0(), j_border, j_backgroundBasicColor, j_foregroundBasicColor)
        call j_scrollSelectionForm%jm_init_2(j_rectangle, j_formType)
        jresult => j_scrollSelectionForm
        return
  end function

  recursive subroutine MultipleScrollSelectionHorizontalForm_jm_fillRect_1(this, j_graphics)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setColor_1(this%f_backgroundColor)
        call j_graphics%jm_fillRect_4(this%f_x, this%f_y, this%f_rectangle%jm_getWidth_0(), this%f_rectangle%jm_getHeight_0())
  end subroutine

  recursive subroutine MultipleScrollSelectionHorizontalForm_jm_init_2(this, j_rectangle, j_formType)
    class(MultipleScrollSelectionHorizontalForm), target :: this
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
        call this%ScrollSelectionForm%jm_init_2(j_rectangle, j_formType)
        j_formTypeFactory => FormTypeFactory_jm_getInstance_0()
        if (JR_same(j_formType, j_formTypeFactory%f_HORIZONTAL_FORM)) then
            this%f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable => MultipleScrollSelectionFormHorizontalPaintable_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
            this%f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable => MultipleScrollSelectionFormVerticalPaintable_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_NULL_FORM_TYPE)) then
            continue
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end subroutine

  recursive subroutine MultipleScrollSelectionHorizontalForm_jm_updateMeasurement_1(this, j_graphics)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_fontHeight = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive function MultipleScrollSelectionHorizontalForm_jm_paintHorizontal_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
    integer(4) :: j_dx2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_dx2 = (this%jm_paintItem_5(j_graphics, j_index, j_item, j_dx, j_dy) + this%f_border)
        call this%f_paintable%jm_paint_4(j_graphics, j_index, j_dx, j_dy)
        j_dx = j_dx2
        jresult = j_dx
        return
  end function

  recursive function MultipleScrollSelectionHorizontalForm_jm_paintVertical_5(this, j_graphics, j_index, j_item, j_dx, j_dy) result(jresult)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_paintItem_5(j_graphics, j_index, j_item, j_dx, j_dy)
        call this%f_paintable%jm_paint_4(j_graphics, j_index, j_dx, j_dy)
        jresult = j_dx
        return
  end function

  recursive function MultipleScrollSelectionHorizontalForm_jm_getStartIndex_0(this) result(jresult)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSelectedIndex_0()
        return
  end function

  recursive subroutine MultipleScrollSelectionHorizontalForm_jm_paint_1(this, j_graphics)
    class(MultipleScrollSelectionHorizontalForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_start
    integer(4) :: j_size
    integer(4) :: j_dx
    integer(4) :: j_dy
    class(ABCustomItem), pointer :: j_item
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_myFontProcessor%jm_process_1(j_graphics)
            j_start = this%jm_getStartIndex_0()
            j_size = this%jm_size_0()
            j_dx = this%f_x
            j_dy = this%f_y
            call this%f_rectPaintable%jm_paint_1(j_graphics)
            call j_graphics%jm_drawString_4(this%jm_getTitle_0(), this%f_x, (this%f_y - this%f_fontHeight), 0)
            continue
            j_index = j_start
            do while ((j_index < j_size))
                j_item => this%jm_get_1(j_index)
                if ((j_dx >= this%f_rectangle%jm_getMaxX_0())) then
                    if (this%f_logged) then
                        continue
                    else
                        this%f_logged = .true.
                        jtemp4 => StringMaker_jnew_0()
                        jtemp3 => jtemp4%jm_append_1('painting beyond maxx: ')
                        jtemp2 => jtemp3%jm_appendint_1(this%f_rectangle%jm_getMaxX_0())
                        call PreLogUtil_jm_put_3(jtemp2%jm_toString_0(), this, this%f_canvasStrings%f_PAINT)
                    end if
                end if
                j_dx = this%f_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable%jm_paint_5(j_graphics, j_index, j_item, j_dx, j_dy)
                j_index = j_index + 1
            end do
  end subroutine
end module MultipleScrollSelectionHorizontalForm_m

