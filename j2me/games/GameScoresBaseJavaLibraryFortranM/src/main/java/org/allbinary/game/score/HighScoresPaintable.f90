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
! package org.allbinary.game.score
module HighScoresPaintable_m
  use JR_m
  use Anchor_m
  use BasicColor_m
  use BasicColorFactory_m
  use ColorChangeEvent_m
  use ColorChangeListener_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  use AllBinaryEventObject_m
  use BasicArrayList_m
  use NullHighScoresSingletonFactory_m
  use HighScores_m
  use HighScore_m
  implicit none

  type, extends(Paintable) :: HighScoresPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(BasicColor), pointer :: f_basicColor => null()
    class(HighScores), pointer :: f_highScores => null()
    integer(4) :: f_anchor = 0
    integer(4) :: f_charHeight = 0
  contains
    procedure :: jm_updateMeasurement_1 => HighScoresPaintable_jm_updateMeasurement_1
    procedure :: jm_onEvent_1 => HighScoresPaintable_jm_onEvent_1
    procedure :: jm_paint_1 => HighScoresPaintable_jm_paint_1
    procedure :: jm_setBasicColorP_1 => HighScoresPaintable_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => HighScoresPaintable_jm_getBasicColorP_0
    procedure :: jm_setHighScores_1 => HighScoresPaintable_jm_setHighScores_1
  end type

  ! HighScoresPaintable used as a ColorChangeListener
  type, extends(ColorChangeListener) :: HighScoresPaintable_jas_ColorChangeListener
    class(HighScoresPaintable), pointer :: jtarget => null()
  end type

  ! HighScoresPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: HighScoresPaintable_jas_UpdateMyFontInterface
    class(HighScoresPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => HighScoresPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function HighScoresPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresPaintable)
      jresult => object
    end select
  end function

  function HighScoresPaintable_jas_ColorChangeListener_jnew(object) result(jresult)
    class(HighScoresPaintable), target :: object
    class(HighScoresPaintable_jas_ColorChangeListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HighScoresPaintable'
    jresult%jtarget => object
  end function

  function HighScoresPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(HighScoresPaintable), target :: object
    class(HighScoresPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HighScoresPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine HighScoresPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(HighScoresPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function HighScoresPaintable_jnew_0() result(this)
    class(HighScoresPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'HighScoresPaintable'
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    this%f_highScores => NullHighScoresSingletonFactory_jm_getInstance_0()
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
        continue
  end function

  recursive subroutine HighScoresPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(HighScoresPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_charHeight = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine HighScoresPaintable_jm_onEvent_1(this, j_eventObject)
    class(HighScoresPaintable), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(ColorChangeEvent), pointer :: j_colorChangeEvent
        j_colorChangeEvent => ColorChangeEvent_jcast(j_eventObject)
        this%f_basicColor => j_colorChangeEvent%jm_getBasicColorP_0()
  end subroutine

  recursive subroutine HighScoresPaintable_jm_paint_1(this, j_graphics)
    class(HighScoresPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_width
    integer(4) :: j_height
    character(len=:), allocatable :: j_heading
    integer(4) :: j_topScoresWidth
    integer(4) :: j_charHeight
    character(len=:), allocatable :: j_columnTwoHeading
    integer(4) :: j_columnTwoHeadingWidth
    integer(4) :: j_index
    integer(4) :: j_largestSecondColumnWidth
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    integer(4) :: j_vectorIndex
    class(HighScore), pointer :: j_highScore
    integer(4) :: j_nextScoreWidth
    class(BasicColor), pointer :: jtemp2
    class(JObject), pointer :: jtemp3
    class(JObject), pointer :: jtemp4
    class(JObject), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_width = this%f_displayInfoSingleton%jm_getLastWidth_0()
        j_height = this%f_displayInfoSingleton%jm_getLastHeight_0()
        jtemp2 => this%jm_getBasicColorP_0()
        call j_graphics%jm_setColor_1(jtemp2%jm_intValue_0())
        j_heading = this%f_highScores%jm_getHeading_0()
        jtemp3 => j_graphics%jm_getFont_0()
        j_topScoresWidth = (shifta(jtemp3%jm_stringWidth_1(j_heading), iand(1, 31)))
        j_charHeight = this%f_charHeight
        call j_graphics%jm_drawString_4(j_heading, ((shifta(j_width, iand(1, 31))) - j_topScoresWidth), j_charHeight, this%f_anchor)
        call j_graphics%jm_drawString_4(this%f_highScores%jm_getColumnOneHeading_0(), 10, (j_charHeight * 3), this%f_anchor)
        j_columnTwoHeading = this%f_highScores%jm_getColumnTwoHeading_0()
        jtemp4 => j_graphics%jm_getFont_0()
        j_columnTwoHeadingWidth = jtemp4%jm_stringWidth_1(j_columnTwoHeading)
        call j_graphics%jm_drawString_4(j_columnTwoHeading, ((j_width - 10) - j_columnTwoHeadingWidth), (j_charHeight * 3), this%f_anchor)
        j_index = 4
        j_largestSecondColumnWidth = j_columnTwoHeadingWidth
        j_list => this%f_highScores%jm_getList_0()
        j_size = j_list%jm_size_0()
        j_vectorIndex = 0
        continue
        do while (((j_vectorIndex < j_size) .and. ((j_charHeight * j_index) < (j_height - ((j_charHeight * 2))))))
            j_highScore => HighScore_jcast(j_list%f_objectArray((j_vectorIndex) + 1)%v)
            jtemp5 => j_graphics%jm_getFont_0()
            j_nextScoreWidth = jtemp5%jm_stringWidth_1(j_highScore%jm_getScoreString_0())
            if ((j_nextScoreWidth > j_largestSecondColumnWidth)) then
                j_largestSecondColumnWidth = j_nextScoreWidth
            end if
            j_vectorIndex = j_vectorIndex + 1
        end do
        j_vectorIndex = 0
        do while (((j_vectorIndex < j_size) .and. ((j_charHeight * j_index) < (j_height - ((j_charHeight * 2))))))
            j_highScore => HighScore_jcast(j_list%f_objectArray((j_vectorIndex) + 1)%v)
            call j_graphics%jm_drawString_4(j_highScore%jm_getName_0(), 10, (j_charHeight * j_index), this%f_anchor)
            call j_graphics%jm_drawString_4(j_highScore%jm_getScoreString_0(), ((j_width - 10) - j_largestSecondColumnWidth), (j_charHeight * j_index), this%f_anchor)
            j_index = j_index + 1
            j_vectorIndex = j_vectorIndex + 1
        end do
  end subroutine

  recursive subroutine HighScoresPaintable_jm_setBasicColorP_1(this, j_basicColor)
    class(HighScoresPaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function HighScoresPaintable_jm_getBasicColorP_0(this) result(jresult)
    class(HighScoresPaintable), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine HighScoresPaintable_jm_setHighScores_1(this, j_highScores)
    class(HighScoresPaintable), target :: this
    class(HighScores), target, optional :: j_highScores
        this%f_highScores => j_highScores
  end subroutine
end module HighScoresPaintable_m

function HighScoresPaintable_jnew_0_jext() result(this)
  use HighScoresPaintable_m, only: JObject, HighScoresPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HighScoresPaintable_jnew_0()
end function

