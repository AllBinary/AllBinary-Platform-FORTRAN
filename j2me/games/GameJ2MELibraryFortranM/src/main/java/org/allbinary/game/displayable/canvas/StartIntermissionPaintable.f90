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
! package org.allbinary.game.displayable.canvas
module StartIntermissionPaintable_m
  use JR_m
  use Anchor_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use DisplayInfoSingleton_m
  use FontDebugFactory_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use InitUpdatePaintable_m
  use NullUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(InitUpdatePaintable) :: StartIntermissionPaintable
    class(FontDebugFactory), pointer :: f_fontDebugFactory => null()
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
    type(JString), allocatable :: f_stringArray(:)
    integer(4) :: f_fontSize = 0
    class(Font), pointer :: f_font => null()
    integer(4), allocatable :: f_lastWidth(:)
    class(MyFontProcessor), pointer :: f_updateMyFontProcessor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_color = 0
    integer(4), allocatable :: f_lineYOffsetArray(:)
    logical :: f_hasChanged = .false.
    integer(4) :: f_anchor = 0
    integer(4) :: f_fontHeightP = 0
    character(len=:), allocatable :: f_BEGIN_LEVEL
    character(len=:), allocatable :: f_EMPTY_STRING
  contains
    procedure :: jm_updateMeasurement_1 => StartIntermissionPaintable_jm_updateMeasurement_1
    procedure :: jm_paint_1 => StartIntermissionPaintable_jm_paint_1
    procedure :: jm_update_0 => StartIntermissionPaintable_jm_update_0
    procedure :: jm_setBasicColorP_1 => StartIntermissionPaintable_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => StartIntermissionPaintable_jm_getBasicColorP_0
  end type

  ! StartIntermissionPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: StartIntermissionPaintable_jas_UpdateMyFontInterface
    class(StartIntermissionPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => StartIntermissionPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function StartIntermissionPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StartIntermissionPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StartIntermissionPaintable)
      jresult => object
    end select
  end function

  function StartIntermissionPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(StartIntermissionPaintable), target :: object
    class(StartIntermissionPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'StartIntermissionPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine StartIntermissionPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(StartIntermissionPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function StartIntermissionPaintable_jnew_4(j_gameCanvas, j_stringArray, j_basicColor, j_font) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    type(JString) :: j_stringArray(:)
    class(BasicColor), target, optional :: j_basicColor
    class(Font), target, optional :: j_font
    class(StartIntermissionPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'StartIntermissionPaintable'
    this%f_BEGIN_LEVEL = ''
    this%f_EMPTY_STRING = ''
    this%f_fontDebugFactory => FontDebugFactory_jm_getInstance_0()
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    
    
    
    
    
    this%f_updateMyFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_myFontProcessor => this%f_updateMyFontProcessor
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_BLACK
    
    jtemp2 => NullUtil_jm_getInstance_0()
    this%f_lineYOffsetArray = jtemp2%f_NULL_INT_ARRAY
    this%f_hasChanged = .true.
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
    this%f_BEGIN_LEVEL = 'Begin Level '
    jtemp4 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp4%f_EMPTY_STRING
        this%f_gameCanvas => j_gameCanvas
        this%f_stringArray = j_stringArray
        this%f_lastWidth = JR_newIntArray(size(this%f_stringArray, 1))
        call this%jm_setBasicColorP_1(j_basicColor)
        this%f_color = j_basicColor%jm_intValue_0()
        this%f_fontSize = j_font%jm_getSize_0()
        this%f_font => j_font
  end function

  recursive subroutine StartIntermissionPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(StartIntermissionPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_fontHeightP = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine StartIntermissionPaintable_jm_paint_1(this, j_graphics)
    class(StartIntermissionPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_existingFont
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    integer(4) :: j_beginWidth
    integer(4) :: j_index
    class(JObject), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_existingFont => j_graphics%jm_getFont_0()
        call this%f_fontDebugFactory%jm_setFont_2(this%f_font, j_graphics)
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%f_basicColor, this%f_color)
        continue
        j_index = (size(this%f_lineYOffsetArray, 1) - 1)
        do while ((j_index >= 0))
            if (this%f_hasChanged) then
                jtemp3 => j_graphics%jm_getFont_0()
                this%f_lastWidth((j_index) + 1) = (shifta(jtemp3%jm_stringWidth_1(this%f_stringArray((j_index) + 1)%v), iand(1, 31)))
            end if
            j_beginWidth = this%f_lastWidth((j_index) + 1)
            call j_graphics%jm_drawString_4(this%f_stringArray((j_index) + 1)%v, (j_displayInfo%jm_getLastHalfWidth_0() - j_beginWidth), (j_displayInfo%jm_getLastHalfHeight_0() - this%f_lineYOffsetArray((j_index) + 1)), this%f_anchor)
            j_index = j_index - 1
        end do
        this%f_hasChanged = .false.
        call this%f_fontDebugFactory%jm_setFont_2(j_existingFont, j_graphics)
  end subroutine

  recursive subroutine StartIntermissionPaintable_jm_update_0(this)
    class(StartIntermissionPaintable), target :: this
    integer(4) :: j_level
    integer(4) :: j_index
    class(GameInfo), pointer :: jtemp5
    class(AllBinaryGameLayerManager), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
        jtemp6 => this%f_gameCanvas%jm_getLayerManager_0()
        jtemp5 => jtemp6%jm_getGameInfo_0()
        j_level = jtemp5%jm_getCurrentLevel_0()
        jtemp9 => StringMaker_jnew_0()
        jtemp8 => jtemp9%jm_append_1(this%f_BEGIN_LEVEL)
        jtemp7 => jtemp8%jm_appendint_1(j_level)
        this%f_stringArray((0) + 1)%v = jtemp7%jm_toString_0()
        j_index = (size(this%f_stringArray, 1) - 1)
        do while ((j_index >= 1))
            this%f_stringArray((j_index) + 1)%v = this%f_EMPTY_STRING
            j_index = j_index - 1
        end do
  end subroutine

  recursive subroutine StartIntermissionPaintable_jm_setBasicColorP_1(this, j_basicColor)
    class(StartIntermissionPaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function StartIntermissionPaintable_jm_getBasicColorP_0(this) result(jresult)
    class(StartIntermissionPaintable), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function
end module StartIntermissionPaintable_m

