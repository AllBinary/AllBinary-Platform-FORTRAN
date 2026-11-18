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
! package org.allbinary.game.paint.help
module HelpPaintable_m
  use JR_m
  use Anchor_m
  use BasicColor_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  use NullUtil_m
  use StringUtil_m
  implicit none

  type, extends(Paintable) :: HelpPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfo => null()
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_anchor = 0
    character(len=:), allocatable :: f_title
    type(JString), allocatable :: f_inputInfo(:)
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_titleBeginWidth = 0
    integer(4), allocatable :: f_beginWidthArray(:)
    integer(4) :: f_charHeight = 0
  contains
    procedure :: jm_updateMeasurement_1 => HelpPaintable_jm_updateMeasurement_1
    procedure :: jm_setInputInfoP_1 => HelpPaintable_jm_setInputInfoP_1
    procedure :: jm_paint_1 => HelpPaintable_jm_paint_1
  end type

  ! HelpPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: HelpPaintable_jas_UpdateMyFontInterface
    class(HelpPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => HelpPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function HelpPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HelpPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HelpPaintable)
      jresult => object
    end select
  end function

  function HelpPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(HelpPaintable), target :: object
    class(HelpPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HelpPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine HelpPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(HelpPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function HelpPaintable_jnew_3(j_title, j_backgroundBasicColor, j_basicColor) result(this)
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_basicColor
    class(HelpPaintable), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'HelpPaintable'
    this%f_title = ''
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_inputInfo = jtemp1%jm_getArrayInstance_0()
    
    
    jtemp2 => NullUtil_jm_getInstance_0()
    this%f_beginWidthArray = jtemp2%f_NULL_INT_ARRAY
    
        this%f_title = j_title
        this%f_basicColor => j_basicColor
  end function

  recursive subroutine HelpPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(HelpPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    integer(4) :: j_size
    integer(4) :: j_index
        j_font => j_graphics%jm_getFont_0()
        this%f_titleBeginWidth = (shifta(j_font%jm_stringWidth_1(this%f_title), iand(1, 31)))
        this%f_charHeight = j_font%jm_getHeight_0()
        j_size = size(this%f_inputInfo, 1)
        j_index = 0
        do while ((j_index < j_size))
            this%f_beginWidthArray((j_index) + 1) = (shifta(j_font%jm_stringWidth_1(this%f_inputInfo((j_index) + 1)%v), iand(1, 31)))
            j_index = j_index + 1
        end do
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine HelpPaintable_jm_setInputInfoP_1(this, j_inputInfo)
    class(HelpPaintable), target :: this
    type(JString) :: j_inputInfo(:)
        this%f_inputInfo = j_inputInfo
        this%f_beginWidthArray = JR_newIntArray(size(this%f_inputInfo, 1))
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive subroutine HelpPaintable_jm_paint_1(this, j_graphics)
    class(HelpPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_halfWidth
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_halfWidth = this%f_displayInfo%jm_getLastHalfWidth_0()
        call j_graphics%jm_setColor_1(this%f_basicColor%jm_intValue_0())
        call j_graphics%jm_drawString_4(this%f_title, (j_halfWidth - this%f_titleBeginWidth), this%f_charHeight, this%f_anchor)
        j_size = size(this%f_inputInfo, 1)
        j_index = 0
        do while ((j_index < j_size))
            call j_graphics%jm_drawString_4(this%f_inputInfo((j_index) + 1)%v, (j_halfWidth - this%f_beginWidthArray((j_index) + 1)), (((j_index + 3)) * this%f_charHeight), this%f_anchor)
            j_index = j_index + 1
        end do
  end subroutine
end module HelpPaintable_m

