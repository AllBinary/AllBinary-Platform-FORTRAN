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
! package org.allbinary.game.score.displayable
module HighScoreTextBox_m
  use JR_m
  use PostGameCommandFactory_m
  use GameInfo_m
  use HighScore_m
  use HighScoresHelperBaseInterface_m
  use HighScoresFactoryInterface_m
  use BasicColor_m
  use BasicColorFactory_m
  use CustomTextBox_m
  use NullPaintable_m
  use Paintable_m
  use SimpleTextPaintable_m
  use VirtualKeyboardEventHandler_m
  use GenericOperatingSystem_m
  use OperatingSystemFactory_m
  use AbeClientInformationInterface_m
  use InApplicationPurchaseFactory_m
  use HighScoreUtil_m
  implicit none

  type, extends(CustomTextBox) :: HighScoreTextBox
    class(VirtualKeyboardEventHandler), pointer :: f_virtualKeyboardEventHandler => null()
    class(HighScoreUtil), pointer :: f_highScoreUtil => null()
    class(Paintable), pointer :: f_pleaseWait => null()
    class(Paintable), pointer :: f_paintable => null()
    logical :: f_submitted = .false.
  contains
    procedure :: jm_initCommands_1 => HighScoreTextBox_jm_initCommands_1
    procedure :: jm_open_0 => HighScoreTextBox_jm_open_0
    procedure :: jm_close_0 => HighScoreTextBox_jm_close_0
    procedure :: jm_update_0 => HighScoreTextBox_jm_update_0
    procedure :: jm_paint_1 => HighScoreTextBox_jm_paint_1
    procedure :: jm_saveHighScore_0 => HighScoreTextBox_jm_saveHighScore_0
    procedure :: jm_submit_0 => HighScoreTextBox_jm_submit_0
  end type


contains

  function HighScoreTextBox_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreTextBox), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreTextBox)
      jresult => object
    end select
  end function

  recursive function HighScoreTextBox_jnew_9(j_highScoresFactoryInterface, j_highScoresHelper, j_abeClientInformation, j_gameInfo, j_cmdListener, j_name, j_highScore, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(HighScoresHelperBaseInterface), target, optional :: j_highScoresHelper
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_name
    class(HighScore), target, optional :: j_highScore
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(HighScoreTextBox), pointer :: this
    class(GenericOperatingSystem), pointer :: j_operatingSystemInterface
    character(len=:), allocatable :: j_username
    class(OperatingSystemFactory), pointer :: jtemp2
    class(InApplicationPurchaseFactory), pointer :: jtemp3
    class(ABTextFieldItem), pointer :: jtemp4
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HighScoreTextBox'
    this%f_virtualKeyboardEventHandler => VirtualKeyboardEventHandler_jm_getInstance_0()
    
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_pleaseWait => SimpleTextPaintable_jnew_2(this%f_commonStrings%f_PLEASE_WAIT, jtemp1%f_WHITE)
    this%f_paintable => NullPaintable_jm_getInstance_0()
    this%f_submitted = .false.
        continue ! super()
        this%f_highScoreUtil => HighScoreUtil_jnew_7(j_highScoresFactoryInterface, j_highScoresHelper, j_abeClientInformation, j_gameInfo, j_cmdListener, j_name, j_highScore)
        jtemp2 => OperatingSystemFactory_jm_getInstance_0()
        j_operatingSystemInterface => jtemp2%jm_getOperatingSystemInstance_0()
        if (j_operatingSystemInterface%jm_isOverScan_0()) then
            jtemp3 => InApplicationPurchaseFactory_jm_getInstance_0()
            j_username = jtemp3%jm_getUserName_0()
            jtemp4 => this%jm_getTextFieldItem_0()
            call jtemp4%jm_setString_1(j_username)
        end if
  end function

  recursive subroutine HighScoreTextBox_jm_initCommands_1(this, j_cmdListener)
    class(HighScoreTextBox), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(PostGameCommandFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        jtemp5 => PostGameCommandFactory_jm_getInstance_0()
        call jtemp5%jm_addCommands_1(this)
        call this%jm_addCommand_1(HighScoreUtil_jstatic_SUBMIT_TEXTBOX_COMMAND())
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine HighScoreTextBox_jm_open_0(this)
    class(HighScoreTextBox), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_virtualKeyboardEventHandler%jm_open_0()
        this%f_paintable => NullPaintable_jm_getInstance_0()
        call this%CustomTextBox%jm_open_0()
  end subroutine

  recursive subroutine HighScoreTextBox_jm_close_0(this)
    class(HighScoreTextBox), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_virtualKeyboardEventHandler%jm_close_0()
        this%f_paintable => this%f_pleaseWait
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
        call this%CustomTextBox%jm_close_0()
        call this%jm_removeCommand_1(HighScoreUtil_jstatic_SUBMIT_TEXTBOX_COMMAND())
        call this%jm_update_0()
        if (this%f_submitted) then
            call this%f_highScoreUtil%jm_saveHighScore_0()
        else
            continue
        end if
        this%f_paintable => NullPaintable_jm_getInstance_0()
        call this%f_repaintBehavior%jm_onChangeRepaint_1(this)
  end subroutine

  recursive subroutine HighScoreTextBox_jm_update_0(this)
    class(HighScoreTextBox), target :: this
    character(len=:), allocatable :: j_name
    class(ABTextFieldItem), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => this%jm_getTextFieldItem_0()
        j_name = jtemp6%jm_getString_0()
        call this%f_highScoreUtil%jm_update_1(j_name)
        call this%CustomTextBox%jm_update_0()
  end subroutine

  recursive subroutine HighScoreTextBox_jm_paint_1(this, j_graphics)
    class(HighScoreTextBox), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%CustomTextBox%jm_paint_1(j_graphics)
        call this%f_paintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine HighScoreTextBox_jm_saveHighScore_0(this)
    class(HighScoreTextBox), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_highScoreUtil%jm_saveHighScore_0()
  end subroutine

  recursive subroutine HighScoreTextBox_jm_submit_0(this)
    class(HighScoreTextBox), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_highScoreUtil%jm_submit_1(this)
  end subroutine
end module HighScoreTextBox_m

