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
module ScrollCurrentSelectionForm_m
  use JR_m
  use Processor_m
  use Rectangle_m
  use BasicColor_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use ABCustomItem_m
  use ScrollSelectionForm_m
  use ItemIndexDx_m
  use ItemPaintableFactory_m
  use FormTypeFactory_m
  use VerticalFormProcessor_m
  use VerticalItemIndexDx_m
  use HorizontalFormProcessor_m
  use HorizontalItemIndexDx_m
  use TempHorizontalFormProcessor_m
  use TempHorizontalItemIndexDx_m
  use FormType_m
  implicit none

  type, extends(ScrollSelectionForm) :: ScrollCurrentSelectionForm
    logical :: f_moveForSmallScreen = .false.
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(Processor), pointer :: f_processor => null()
    class(ItemIndexDx), pointer :: f_preItemIndexDx => null()
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    integer(4) :: f_maxWidth = 0
  contains
    procedure :: jm_init_2 => ScrollCurrentSelectionForm_jm_init_2
    procedure :: jm_updateMeasurement_1 => ScrollCurrentSelectionForm_jm_updateMeasurement_1
    procedure :: jm_processTempHorizontalForm_0 => ScrollCurrentSelectionForm_jm_processTempHorizontalForm_0
    procedure :: jm_processHorizontalForm_0 => ScrollCurrentSelectionForm_jm_processHorizontalForm_0
    procedure :: jm_processVerticalForm_0 => ScrollCurrentSelectionForm_jm_processVerticalForm_0
    procedure :: jm_getXTempHorizontalForm_4 => ScrollCurrentSelectionForm_jm_getXTempHorizontalForm_4
    procedure :: jm_getXHorizontalForm_4 => ScrollCurrentSelectionForm_jm_getXHorizontalForm_4
    procedure :: jm_getXVerticalForm_4 => ScrollCurrentSelectionForm_jm_getXVerticalForm_4
    procedure :: jm_getDiffX_1 => ScrollCurrentSelectionForm_jm_getDiffX_1
    procedure :: jm_getDx_0 => ScrollCurrentSelectionForm_jm_getDx_0
    procedure :: jm_getDy_0 => ScrollCurrentSelectionForm_jm_getDy_0
    procedure :: jm_paint_1 => ScrollCurrentSelectionForm_jm_paint_1
  end type

  ! ScrollCurrentSelectionForm used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: ScrollCurrentSelectionForm_jas_UpdateMyFontInterface
    class(ScrollCurrentSelectionForm), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => ScrollCurrentSelectionForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function ScrollCurrentSelectionForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScrollCurrentSelectionForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScrollCurrentSelectionForm)
      jresult => object
    end select
  end function

  function ScrollCurrentSelectionForm_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(ScrollCurrentSelectionForm), target :: object
    class(ScrollCurrentSelectionForm_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ScrollCurrentSelectionForm'
    jresult%jtarget => object
  end function

  recursive subroutine ScrollCurrentSelectionForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(ScrollCurrentSelectionForm_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function ScrollCurrentSelectionForm_jnew_8(j_title, j_items, j_formPaintableFactory, j_border, j_adjustedExtraBorder, j_moveForSmallScreen, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    class(ItemPaintableFactory), target, optional :: j_formPaintableFactory
    integer(4), value :: j_border
    integer(4), value :: j_adjustedExtraBorder
    logical, value :: j_moveForSmallScreen
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ScrollCurrentSelectionForm), pointer :: this
    allocate(this)
    this%jclass = 'ScrollCurrentSelectionForm'
    
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    this%f_processor => Processor_jm_getInstance_0()
    this%f_preItemIndexDx => ItemIndexDx_jm_getInstance_0()
    
    
    this%f_maxWidth = 0
        continue ! super()
        this%f_moveForSmallScreen = j_moveForSmallScreen
  end function

  recursive subroutine ScrollCurrentSelectionForm_jm_init_2(this, j_rectangle, j_formType)
    class(ScrollCurrentSelectionForm), target :: this
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
        if (JR_same(j_formType, j_formTypeFactory%f_TEMP_HORIZONTAL_FORM)) then
            this%f_processor => TempHorizontalFormProcessor_jnew_1(this)
            this%f_preItemIndexDx => TempHorizontalItemIndexDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_HORIZONTAL_FORM)) then
            this%f_processor => HorizontalFormProcessor_jnew_1(this)
            this%f_preItemIndexDx => HorizontalItemIndexDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
            this%f_processor => VerticalFormProcessor_jnew_1(this)
            this%f_preItemIndexDx => VerticalItemIndexDx_jnew_1(this)
        else if (JR_same(j_formType, j_formTypeFactory%f_NULL_FORM_TYPE)) then
            continue
        else
            call this%f_logUtil%jm_putF_3(j_formTypeFactory%f_UNK, this, this%f_commonStrings%f_INIT)
        end if
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine ScrollCurrentSelectionForm_jm_updateMeasurement_1(this, j_graphics)
    class(ScrollCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine ScrollCurrentSelectionForm_jm_processTempHorizontalForm_0(this)
    class(ScrollCurrentSelectionForm), target :: this
        this%f_dx = ((this%f_x - 30) + (shifta(this%f_rectangle%jm_getWidth_0(), iand(1, 31))))
        this%f_dy = this%f_y
  end subroutine

  recursive subroutine ScrollCurrentSelectionForm_jm_processHorizontalForm_0(this)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4) :: j_size
    integer(4) :: j_totalWidth
    class(ABCustomItem), pointer :: j_item
    integer(4) :: j_index
    integer(4) :: j_maxTitleHeight
        j_size = this%jm_size_0()
        j_totalWidth = 0
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_item => this%jm_get_1(j_index)
            j_totalWidth = (j_totalWidth + (j_item%jm_getMinimumWidth_0() + this%f_border))
            j_index = j_index + 1
        end do
        this%f_dx = ((this%f_x + (shifta(this%f_rectangle%jm_getWidth_0(), iand(1, 31)))) - (shifta(j_totalWidth, iand(1, 31))))
        this%f_dy = (this%f_y + (shifta(this%f_rectangle%jm_getHeight_0(), iand(1, 31))))
        if (this%f_moveForSmallScreen) then
            j_maxTitleHeight = 175
            if ((this%f_dy < j_maxTitleHeight)) then
                this%f_dy = j_maxTitleHeight
            end if
        end if
  end subroutine

  recursive subroutine ScrollCurrentSelectionForm_jm_processVerticalForm_0(this)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4) :: j_totalHeight
    integer(4) :: j_size
    class(ABCustomItem), pointer :: j_item2
    integer(4) :: j_index
    integer(4) :: j_maxTitleHeight
        j_totalHeight = 0
        j_size = this%jm_size_0()
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_item2 => this%jm_get_1(j_index)
            if ((this%f_maxWidth < j_item2%jm_getMinimumWidth_0())) then
                this%f_maxWidth = j_item2%jm_getMinimumWidth_0()
            end if
            j_totalHeight = (j_totalHeight + (j_item2%jm_getMinimumHeight_0() + this%f_border))
            j_index = j_index + 1
        end do
        this%f_dx = ((((this%f_rectangle%jm_getWidth_0() - this%f_maxWidth)) / 2))
        if ((this%jm_size_0() > 0)) then
            this%f_dy = (this%f_y + ((((this%f_rectangle%jm_getHeight_0() - j_totalHeight)) / 2)))
            if (this%f_moveForSmallScreen) then
                j_maxTitleHeight = 175
                if ((this%f_dy < j_maxTitleHeight)) then
                    this%f_dy = j_maxTitleHeight
                end if
            end if
        else
            this%f_dy = this%f_y
        end if
  end subroutine

  recursive function ScrollCurrentSelectionForm_jm_getXTempHorizontalForm_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = this%jm_getDiffX_1(j_item)
        return
  end function

  recursive function ScrollCurrentSelectionForm_jm_getXHorizontalForm_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function ScrollCurrentSelectionForm_jm_getXVerticalForm_4(this, j_index, j_item, j_dx, j_dy) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
        jresult = (this%jm_getDiffX_1(j_item) + this%f_halfBorder)
        return
  end function

  recursive function ScrollCurrentSelectionForm_jm_getDiffX_1(this, j_item) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
        jresult = (shifta(((this%f_maxWidth - j_item%jm_getMinimumWidth_0())), iand(1, 31)))
        return
  end function

  recursive function ScrollCurrentSelectionForm_jm_getDx_0(this) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive function ScrollCurrentSelectionForm_jm_getDy_0(this) result(jresult)
    class(ScrollCurrentSelectionForm), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function

  recursive subroutine ScrollCurrentSelectionForm_jm_paint_1(this, j_graphics)
    class(ScrollCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_delta
    integer(4) :: j_deltaX
    integer(4) :: j_deltaY
    integer(4) :: j_size
    class(FormTypeFactory), pointer :: j_formTypeFactory
    class(ABCustomItem), pointer :: j_item
    integer(4) :: j_diffX
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_processor%jm_process_0()
            j_delta = 0
            j_deltaX = this%jm_getDx_0()
            j_deltaY = this%jm_getDy_0()
            j_size = this%jm_size_0()
            j_formTypeFactory => FormTypeFactory_jm_getInstance_0()
            continue
            j_index = 0
            do while ((j_index < j_size))
                j_item => this%jm_get_1(j_index)
                j_diffX = this%f_preItemIndexDx%jm_getDx_4(j_index, j_item, this%f_dx, this%f_dy)
                if ((j_index == this%jm_getSelectedIndex_0())) then
                    j_delta = this%jm_paintItem_5(j_graphics, j_index, j_item, (j_deltaX + j_diffX), j_deltaY)
                    call this%f_paintable%jm_paint_4(j_graphics, j_index, (j_deltaX + j_diffX), j_deltaY)
                else
                    j_delta = this%jm_paintUnselectedItem_5(j_graphics, j_index, j_item, (j_deltaX + j_diffX), j_deltaY)
                    call this%f_paintable%jm_paint_4(j_graphics, j_index, (j_deltaX + j_diffX), j_deltaY)
                end if
                if ((this%f_formType == j_formTypeFactory%f_TEMP_HORIZONTAL_FORM)) then
                    continue
                else if ((this%f_formType == j_formTypeFactory%f_HORIZONTAL_FORM)) then
                    j_deltaX = j_delta
                else if ((this%f_formType == j_formTypeFactory%f_VERTICAL_CENTER_FORM)) then
                    j_deltaY = j_delta
                else
                    error stop JR_toString(JR_newJObject('Exception'))
                end if
                j_index = j_index + 1
            end do
  end subroutine
end module ScrollCurrentSelectionForm_m

