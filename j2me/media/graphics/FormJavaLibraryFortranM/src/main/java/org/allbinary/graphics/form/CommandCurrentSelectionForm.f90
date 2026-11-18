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
module CommandCurrentSelectionForm_m
  use JR_m
  use J2MEUtil_m
  use Animation_m
  use NullAnimationFactory_m
  use RectangleAdjustedAnimation_m
  use RectangleFilledAdjustedAnimation_m
  use BasicColor_m
  use BasicColorFactory_m
  use UpdateMyFontInterface_m
  use CommandTextItem_m
  use ABCustomItem_m
  use ScrollCurrentSelectionForm_m
  use ItemPaintableFactory_m
  implicit none

  type, extends(ScrollCurrentSelectionForm) :: CommandCurrentSelectionForm
    type(JRef), allocatable :: f_selectedAnimationArray(:)
    type(JRef), allocatable :: f_unSelectedAnimationArray(:)
  contains
    procedure :: jm_updateMeasurement_1 => CommandCurrentSelectionForm_jm_updateMeasurement_1
    procedure :: jm_initAnimations_0 => CommandCurrentSelectionForm_jm_initAnimations_0
    procedure :: jm_addAll_1 => CommandCurrentSelectionForm_jm_addAll_1
    procedure :: jm_addAt_2 => CommandCurrentSelectionForm_jm_addAt_2
    procedure :: jm_updateAll_2 => CommandCurrentSelectionForm_jm_updateAll_2
    procedure :: jm_updateAt_2 => CommandCurrentSelectionForm_jm_updateAt_2
    procedure :: jm_getSelectedCommand_0 => CommandCurrentSelectionForm_jm_getSelectedCommand_0
    procedure :: jm_append_1 => CommandCurrentSelectionForm_jm_append_1
    procedure :: jm_delete_1 => CommandCurrentSelectionForm_jm_delete_1
    procedure :: jm_deleteAll_0 => CommandCurrentSelectionForm_jm_deleteAll_0
    procedure :: jm_insert_2 => CommandCurrentSelectionForm_jm_insert_2
    procedure :: jm_set_2 => CommandCurrentSelectionForm_jm_set_2
    procedure :: jm_paint_1 => CommandCurrentSelectionForm_jm_paint_1
    procedure :: jm_paintItem_5 => CommandCurrentSelectionForm_jm_paintItem_5
    procedure :: jm_paintUnselectedItem_5 => CommandCurrentSelectionForm_jm_paintUnselectedItem_5
  end type

  ! CommandCurrentSelectionForm used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: CommandCurrentSelectionForm_jas_UpdateMyFontInterface
    class(CommandCurrentSelectionForm), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => CommandCurrentSelectionForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function CommandCurrentSelectionForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandCurrentSelectionForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandCurrentSelectionForm)
      jresult => object
    end select
  end function

  function CommandCurrentSelectionForm_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(CommandCurrentSelectionForm), target :: object
    class(CommandCurrentSelectionForm_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CommandCurrentSelectionForm'
    jresult%jtarget => object
  end function

  recursive subroutine CommandCurrentSelectionForm_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(CommandCurrentSelectionForm_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function CommandCurrentSelectionForm_jnew_6(j_title, j_items, j_border, j_moveForSmallScreen, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    character(len=*), intent(in) :: j_title
    type(JRef) :: j_items(:)
    integer(4), value :: j_border
    logical, value :: j_moveForSmallScreen
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommandCurrentSelectionForm), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CommandCurrentSelectionForm'
    this%f_selectedAnimationArray = JR_newRefArray(16)
    this%f_unSelectedAnimationArray = JR_newRefArray(16)
        continue ! super()
        call this%jm_initAnimations_0()
        call this%jm_addAll_1(j_items)
  end function

  recursive subroutine CommandCurrentSelectionForm_jm_updateMeasurement_1(this, j_graphics)
    class(CommandCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_updateAll_2(j_graphics, this%jm_getAllitems_0())
        call this%ScrollCurrentSelectionForm%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_initAnimations_0(this)
    class(CommandCurrentSelectionForm), target :: this
    class(Animation), pointer :: j_nullAnimation
    integer(4) :: j_index
    class(NullAnimationFactory), pointer :: jtemp1
    integer(4) :: jtemp2
    integer(4) :: jtemp3
        jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
        j_nullAnimation => jtemp1%jm_getInstance_1(0)
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = size(this%f_selectedAnimationArray, 1)
        do while ((jtemp2 >= 0))
            this%f_selectedAnimationArray((j_index) + 1)%v => j_nullAnimation
        end do
        j_index = j_index - 1
        jtemp3 = j_index
        j_index = size(this%f_unSelectedAnimationArray, 1)
        do while ((jtemp3 >= 0))
            this%f_unSelectedAnimationArray((j_index) + 1)%v => j_nullAnimation
        end do
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_addAll_1(this, j_items)
    class(CommandCurrentSelectionForm), target :: this
    type(JRef) :: j_items(:)
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = size(j_items, 1)
        do while ((jtemp4 >= 0))
            call this%jm_addAt_2(j_index, ABCustomItem_jcast(j_items((j_index) + 1)%v))
        end do
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_addAt_2(this, j_index, j_item)
    class(CommandCurrentSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    class(BasicColorFactory), pointer :: j_basicColorFactory
    class(BasicColor), pointer :: j_buttonColor
    class(BasicColor), pointer :: j_selectedButtonColor
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_adjustedBorder
    integer(4) :: j_offset
    integer(4) :: j_rectWidth
    integer(4) :: j_rectHeight
        j_basicColorFactory => BasicColorFactory_jm_getInstance_0()
        j_buttonColor => j_basicColorFactory%f_TRANSPARENT_GREY
        j_selectedButtonColor => j_basicColorFactory%f_TRANSPARENT_RED
        j_width = j_item%jm_getMinimumWidth_0()
        j_height = j_item%jm_getMinimumHeight_0()
        j_adjustedBorder = 3
        j_offset = (-((this%f_halfBorder + j_adjustedBorder)))
        j_rectWidth = ((j_width + this%f_border) - j_adjustedBorder)
        j_rectHeight = ((j_height + this%f_border) - j_adjustedBorder)
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            this%f_selectedAnimationArray((j_index) + 1)%v => RectangleAdjustedAnimation_jnew_5(j_rectWidth, j_rectHeight, j_offset, j_offset, j_selectedButtonColor)
        else
            this%f_selectedAnimationArray((j_index) + 1)%v => RectangleFilledAdjustedAnimation_jnew_5(j_rectWidth, j_rectHeight, j_offset, j_offset, j_selectedButtonColor)
        end if
        j_adjustedBorder = 4
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            this%f_unSelectedAnimationArray((j_index) + 1)%v => RectangleAdjustedAnimation_jnew_5(j_rectWidth, j_rectHeight, j_offset, j_offset, j_buttonColor)
        else
            this%f_unSelectedAnimationArray((j_index) + 1)%v => RectangleFilledAdjustedAnimation_jnew_5(j_rectWidth, j_rectHeight, j_offset, j_offset, j_buttonColor)
        end if
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_updateAll_2(this, j_graphics, j_items)
    class(CommandCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    type(JRef) :: j_items(:)
    integer(4) :: j_index
    integer(4) :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp5 = j_index
        j_index = size(j_items, 1)
        do while ((jtemp5 >= 0))
            associate (jstaticref1 => ABCustomItem_jcast(j_items((j_index) + 1)%v))
            call jstaticref1%jm_preMeasurement_1(j_graphics)
            end associate
            call this%jm_updateAt_2(j_index, ABCustomItem_jcast(j_items((j_index) + 1)%v))
        end do
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_updateAt_2(this, j_index, j_item)
    class(CommandCurrentSelectionForm), target :: this
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    class(BasicColorFactory), pointer :: j_basicColorFactory
    class(BasicColor), pointer :: j_buttonColor
    class(BasicColor), pointer :: j_selectedButtonColor
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_adjustedBorder
    integer(4) :: j_offset
    integer(4) :: j_rectWidth
    integer(4) :: j_rectHeight
    class(RectangleFilledAdjustedAnimation), pointer :: j_rectangleAdjustedAnimation
    class(RectangleAdjustedAnimation), pointer :: j_rectangleAdjustedAnimation_t2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_basicColorFactory => BasicColorFactory_jm_getInstance_0()
        j_buttonColor => j_basicColorFactory%f_TRANSPARENT_GREY
        j_selectedButtonColor => j_basicColorFactory%f_TRANSPARENT_RED
        j_width = j_item%jm_getMinimumWidth_0()
        j_height = j_item%jm_getMinimumHeight_0()
        j_adjustedBorder = 3
        j_offset = (-((this%f_halfBorder + j_adjustedBorder)))
        j_rectWidth = ((j_width + this%f_border) - j_adjustedBorder)
        j_rectHeight = ((j_height + this%f_border) - j_adjustedBorder)
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            j_rectangleAdjustedAnimation_t2 => RectangleAdjustedAnimation_jcast(Animation_jcast(this%f_selectedAnimationArray((j_index) + 1)%v))
            call j_rectangleAdjustedAnimation_t2%jm_setWidth_1(j_rectWidth)
            call j_rectangleAdjustedAnimation_t2%jm_setHeight_1(j_rectHeight)
            call j_rectangleAdjustedAnimation_t2%jm_setOffsetX_1(j_offset)
            call j_rectangleAdjustedAnimation_t2%jm_setOffsetY_1(j_offset)
            call j_rectangleAdjustedAnimation_t2%jm_setBasicColorP_1(j_selectedButtonColor)
        else
            j_rectangleAdjustedAnimation => RectangleFilledAdjustedAnimation_jcast(Animation_jcast(this%f_selectedAnimationArray((j_index) + 1)%v))
            call j_rectangleAdjustedAnimation%jm_setWidth_1(j_rectWidth)
            call j_rectangleAdjustedAnimation%jm_setHeight_1(j_rectHeight)
            call j_rectangleAdjustedAnimation%jm_setOffsetX_1(j_offset)
            call j_rectangleAdjustedAnimation%jm_setOffsetY_1(j_offset)
            call j_rectangleAdjustedAnimation%jm_setBasicColorP_1(j_selectedButtonColor)
        end if
        j_adjustedBorder = 4
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            j_rectangleAdjustedAnimation_t2 => RectangleAdjustedAnimation_jcast(Animation_jcast(this%f_unSelectedAnimationArray((j_index) + 1)%v))
            call j_rectangleAdjustedAnimation_t2%jm_setWidth_1(j_rectWidth)
            call j_rectangleAdjustedAnimation_t2%jm_setHeight_1(j_rectHeight)
            call j_rectangleAdjustedAnimation_t2%jm_setOffsetX_1(j_offset)
            call j_rectangleAdjustedAnimation_t2%jm_setOffsetY_1(j_offset)
            call j_rectangleAdjustedAnimation_t2%jm_setBasicColorP_1(j_buttonColor)
        else
            j_rectangleAdjustedAnimation => RectangleFilledAdjustedAnimation_jcast(Animation_jcast(this%f_unSelectedAnimationArray((j_index) + 1)%v))
            call j_rectangleAdjustedAnimation%jm_setWidth_1(j_rectWidth)
            call j_rectangleAdjustedAnimation%jm_setHeight_1(j_rectHeight)
            call j_rectangleAdjustedAnimation%jm_setOffsetX_1(j_offset)
            call j_rectangleAdjustedAnimation%jm_setOffsetY_1(j_offset)
            call j_rectangleAdjustedAnimation%jm_setBasicColorP_1(j_buttonColor)
        end if
  end subroutine

  recursive function CommandCurrentSelectionForm_jm_getSelectedCommand_0(this) result(jresult)
    class(CommandCurrentSelectionForm), target :: this
    class(Command), pointer :: jresult
    integer(4) :: j_index
    class(CommandTextItem), pointer :: j_commandTextItem
        j_index = this%ScrollCurrentSelectionForm%jm_getSelectedIndex_0()
        j_commandTextItem => CommandTextItem_jcast(this%jm_get_1(j_index))
        jresult => j_commandTextItem%jm_getCommand_0()
        return
  end function

  recursive function CommandCurrentSelectionForm_jm_append_1(this, j_item) result(jresult)
    class(CommandCurrentSelectionForm), target :: this
    class(ABCustomItem), target, optional :: j_item
    integer(4) :: jresult
    integer(4) :: j_result
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_result = this%ScrollCurrentSelectionForm%jm_append_1(j_item)
        call this%jm_addAt_2(j_result, j_item)
        jresult = j_result
        return
  end function

  recursive subroutine CommandCurrentSelectionForm_jm_delete_1(this, j_itemNum)
    class(CommandCurrentSelectionForm), target :: this
    integer(4), value :: j_itemNum
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ScrollCurrentSelectionForm%jm_delete_1(j_itemNum)
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_deleteAll_0(this)
    class(CommandCurrentSelectionForm), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_initAnimations_0()
        call this%ScrollCurrentSelectionForm%jm_deleteAll_0()
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_insert_2(this, j_itemNum, j_item)
    class(CommandCurrentSelectionForm), target :: this
    integer(4), value :: j_itemNum
    class(ABCustomItem), target, optional :: j_item
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ScrollCurrentSelectionForm%jm_insert_2(j_itemNum, j_item)
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_set_2(this, j_itemNum, j_item)
    class(CommandCurrentSelectionForm), target :: this
    integer(4), value :: j_itemNum
    class(ABCustomItem), target, optional :: j_item
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ScrollCurrentSelectionForm%jm_set_2(j_itemNum, j_item)
  end subroutine

  recursive subroutine CommandCurrentSelectionForm_jm_paint_1(this, j_graphics)
    class(CommandCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%ScrollCurrentSelectionForm%jm_paint_1(j_graphics)
  end subroutine

  recursive function CommandCurrentSelectionForm_jm_paintItem_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(CommandCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref2 => Animation_jcast(this%f_selectedAnimationArray((j_index) + 1)%v))
        call jstaticref2%jm_paintXY_3(j_graphics, j_x, j_y)
        end associate
        jresult = this%ScrollCurrentSelectionForm%jm_paintItem_5(j_graphics, j_index, j_item, j_x, j_y)
        return
  end function

  recursive function CommandCurrentSelectionForm_jm_paintUnselectedItem_5(this, j_graphics, j_index, j_item, j_x, j_y) result(jresult)
    class(CommandCurrentSelectionForm), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_index
    class(ABCustomItem), target, optional :: j_item
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4) :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref3 => Animation_jcast(this%f_unSelectedAnimationArray((j_index) + 1)%v))
        call jstaticref3%jm_paintXY_3(j_graphics, j_x, j_y)
        end associate
        jresult = this%ScrollCurrentSelectionForm%jm_paintUnselectedItem_5(j_graphics, j_index, j_item, j_x, j_y)
        return
  end function
end module CommandCurrentSelectionForm_m

