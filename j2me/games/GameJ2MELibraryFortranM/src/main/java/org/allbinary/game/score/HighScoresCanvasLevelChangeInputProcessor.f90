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
module HighScoresCanvasLevelChangeInputProcessor_m
  use JR_m
  use GameKeyEventHandler_m
  use GameKeyEventUtil_m
  use HighScoresCanvas_m
  use Anchor_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use BasicArrayList_m
  use HighScoresCanvasInputProcessor_m
  implicit none

  type, extends(HighScoresCanvasInputProcessor) :: HighScoresCanvasLevelChangeInputProcessor
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    character(len=:), allocatable :: f_INSTRUCTIONS
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_anchor = 0
    integer(4) :: f_fontHeight = 0
  contains
    procedure :: jm_updateMeasurement_1 => HighScoresCanvasLevelChangeInputProcessor_jm_updateMeasurement_1
    procedure :: jm_open_0 => HighScoresCanvasLevelChangeInputProcessor_jm_open_0
    procedure :: jm_close_0 => HighScoresCanvasLevelChangeInputProcessor_jm_close_0
    procedure :: jm_update_0 => HighScoresCanvasLevelChangeInputProcessor_jm_update_0
    procedure :: jm_paint_1 => HighScoresCanvasLevelChangeInputProcessor_jm_paint_1
  end type

  ! HighScoresCanvasLevelChangeInputProcessor used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface
    class(HighScoresCanvasLevelChangeInputProcessor), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function HighScoresCanvasLevelChangeInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresCanvasLevelChangeInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresCanvasLevelChangeInputProcessor)
      jresult => object
    end select
  end function

  function HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: object
    class(HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'HighScoresCanvasLevelChangeInputProcessor'
    jresult%jtarget => object
  end function

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(HighScoresCanvasLevelChangeInputProcessor_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function HighScoresCanvasLevelChangeInputProcessor_jnew_1(j_highScoresCanvas) result(this)
    class(HighScoresCanvas), target, optional :: j_highScoresCanvas
    class(HighScoresCanvasLevelChangeInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresCanvasLevelChangeInputProcessor'
    this%f_INSTRUCTIONS = ''
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_INSTRUCTIONS = '(Right = Next Track, Left = Previous Track)'
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    this%f_fontHeight = 0
        continue ! super()
  end function

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jm_updateMeasurement_1(this, j_graphics)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_fontHeight = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jm_open_0(this)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: this
    class(GameKeyEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListener_1(this)
  end subroutine

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jm_close_0(this)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: this
    class(GameKeyEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => GameKeyEventHandler_jm_getInstance_0()
        call jtemp2%jm_removeListener_1(this)
  end subroutine

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jm_update_0(this)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: this
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(JObject), pointer :: j_anyType
    integer(4) :: j_key
    integer(4) :: j_index
    class(GameInfo), pointer :: jtemp3
    class(HighScoresCanvas), pointer :: jtemp4
    class(GameInfo), pointer :: jtemp5
    class(HighScoresCanvas), pointer :: jtemp6
    class(HighScoresCanvas), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getGameKeyEventList_0()
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_anyType => j_list%f_objectArray((j_index) + 1)%v
            j_key = GameKeyEventUtil_jm_getKey_1(j_anyType)
            if ((j_key == Canvas_jstatic_RIGHT())) then
                jtemp6 => this%jm_getHighScoresCanvas_0()
                jtemp5 => jtemp6%jm_getGameInfo_0()
                call jtemp5%jm_nextGameLevel_0()
            else if ((j_key == Canvas_jstatic_LEFT())) then
                jtemp4 => this%jm_getHighScoresCanvas_0()
                jtemp3 => jtemp4%jm_getGameInfo_0()
                call jtemp3%jm_previousGameLevel_0()
            end if
            jtemp7 => this%jm_getHighScoresCanvas_0()
            call jtemp7%jm_executeUpdate_0()
            j_index = j_index + 1
        end do
        call j_list%jm_clear_0()
  end subroutine

  recursive subroutine HighScoresCanvasLevelChangeInputProcessor_jm_paint_1(this, j_graphics)
    class(HighScoresCanvasLevelChangeInputProcessor), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_width
    integer(4) :: j_topScoresWidth
    class(JObject), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_width = this%f_displayInfoSingleton%jm_getLastWidth_0()
        jtemp8 => j_graphics%jm_getFont_0()
        j_topScoresWidth = (shifta(jtemp8%jm_stringWidth_1(this%f_INSTRUCTIONS), iand(1, 31)))
        call j_graphics%jm_drawString_4(this%f_INSTRUCTIONS, ((shifta(j_width, iand(1, 31))) - j_topScoresWidth), (this%f_fontHeight * 2), this%f_anchor)
  end subroutine
end module HighScoresCanvasLevelChangeInputProcessor_m

