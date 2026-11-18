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
module GameInputMappingInstructionsCanvas_m
  use JR_m
  use AllBinaryGameLayerManager_m
  use ColorFillBasePaintable_m
  use ColorFillPaintableFactory_m
  use Anchor_m
  use DrawStringUtil_m
  use StringUtil_m
  use GameCommandCanvas_m
  implicit none

  type, extends(GameCommandCanvas) :: GameInputMappingInstructionsCanvas
    class(DrawStringUtil), pointer :: f_drawStringUtil => null()
    character(len=:), allocatable :: f_TITLE
    type(JString), allocatable :: f_instructions(:)
    class(ColorFillBasePaintable), pointer :: f_colorFillPaintable => null()
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_initCommands_1 => GameInputMappingInstructionsCanvas_jm_initCommands_1
    procedure :: jm_paint_1 => GameInputMappingInstructionsCanvas_jm_paint_1
  end type

  class(Command), pointer, save :: GameInputMappingInstructionsCanvas_jcell_DISPLAY => null()
  logical, save :: GameInputMappingInstructionsCanvas_jset_DISPLAY = .false.
  class(Command), pointer, save :: GameInputMappingInstructionsCanvas_jcell_CLOSE => null()
  logical, save :: GameInputMappingInstructionsCanvas_jset_CLOSE = .false.
  character(len=:), allocatable, save :: GameInputMappingInstructionsCanvas_jcell_NAME
  logical, save :: GameInputMappingInstructionsCanvas_jset_NAME = .false.

contains

  function GameInputMappingInstructionsCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputMappingInstructionsCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputMappingInstructionsCanvas)
      jresult => object
    end select
  end function

  function GameInputMappingInstructionsCanvas_jstatic_DISPLAY() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. GameInputMappingInstructionsCanvas_jset_DISPLAY) then
      GameInputMappingInstructionsCanvas_jset_DISPLAY = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    GameInputMappingInstructionsCanvas_jcell_DISPLAY => Command_jnew_4('Help', jtemp1%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => GameInputMappingInstructionsCanvas_jcell_DISPLAY
  end function

  subroutine GameInputMappingInstructionsCanvas_jsetstatic_DISPLAY(jvalue)
    class(Command), target, optional :: jvalue
    GameInputMappingInstructionsCanvas_jset_DISPLAY = .true.
    if (present(jvalue)) then
      GameInputMappingInstructionsCanvas_jcell_DISPLAY => jvalue
    else
      GameInputMappingInstructionsCanvas_jcell_DISPLAY => null()
    end if
  end subroutine

  function GameInputMappingInstructionsCanvas_jstatic_CLOSE() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp2
    if (.not. GameInputMappingInstructionsCanvas_jset_CLOSE) then
      GameInputMappingInstructionsCanvas_jset_CLOSE = .true.
      jtemp2 => StringUtil_jm_getInstance_0()
    GameInputMappingInstructionsCanvas_jcell_CLOSE => Command_jnew_4('Close', jtemp2%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => GameInputMappingInstructionsCanvas_jcell_CLOSE
  end function

  subroutine GameInputMappingInstructionsCanvas_jsetstatic_CLOSE(jvalue)
    class(Command), target, optional :: jvalue
    GameInputMappingInstructionsCanvas_jset_CLOSE = .true.
    if (present(jvalue)) then
      GameInputMappingInstructionsCanvas_jcell_CLOSE => jvalue
    else
      GameInputMappingInstructionsCanvas_jcell_CLOSE => null()
    end if
  end subroutine

  function GameInputMappingInstructionsCanvas_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. GameInputMappingInstructionsCanvas_jset_NAME) then
      GameInputMappingInstructionsCanvas_jset_NAME = .true.
      GameInputMappingInstructionsCanvas_jcell_NAME = 'GameInputMappingInstructionsCanvas'
    end if
    jresult = GameInputMappingInstructionsCanvas_jcell_NAME
  end function

  subroutine GameInputMappingInstructionsCanvas_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    GameInputMappingInstructionsCanvas_jset_NAME = .true.
    GameInputMappingInstructionsCanvas_jcell_NAME = jvalue
  end subroutine

  recursive function GameInputMappingInstructionsCanvas_jnew_2(j_commandListener, j_allBinaryGameLayerManager) result(this)
    class(CommandListener), target, optional :: j_commandListener
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
    class(GameInputMappingInstructionsCanvas), pointer :: this
    class(ColorFillPaintableFactory), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameInputMappingInstructionsCanvas'
    this%f_TITLE = ''
    this%f_drawStringUtil => DrawStringUtil_jm_getInstance_0()
    this%f_TITLE = 'Input Instructions'
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_instructions = [JString :: JString('Add Input Mapping:'), JString('1. Select the desired action by generating a currently defined input for a given action.'), JString('(Example: Press the ''1'' key to select the Fire action)'), JString('2. Make the newly desired input for the selected action.'), JString('(Example: Press ''f'' to add it to the selected action)'), JString('Note: If the input is already mapped to another action then it will not be added. You'), JString('will need to deleted from the other action before adding it to another.'), JString('Warning: Not all keys map for a given platform and show as Unknown.'), JString(jtemp3%f_EMPTY_STRING), JString('Remove Input Mapping:'), JString('1. Select the desired action by generating a currently defined input for a given action.'), JString('(Example: Press the key ''1'' to select the Fire action)'), JString('2. Select a mapped input for the selected action.'), JString('(Example: Press the key ''1'' to select the ''1'' key input for the selected Fire action)'), JString('3. Press the Delete Key.')]
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        jtemp4 => ColorFillPaintableFactory_jm_getInstance_0()
        this%f_colorFillPaintable => jtemp4%jm_getInstance_2(j_allBinaryGameLayerManager%jm_getBackgroundBasicColor_0(), .false.)
  end function

  recursive subroutine GameInputMappingInstructionsCanvas_jm_initCommands_1(this, j_cmdListener)
    class(GameInputMappingInstructionsCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        call this%jm_addCommand_1(GameInputMappingInstructionsCanvas_jstatic_CLOSE())
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine GameInputMappingInstructionsCanvas_jm_paint_1(this, j_graphics)
    class(GameInputMappingInstructionsCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_halfWidth
    integer(4) :: j_beginWidth
    class(JObject), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_colorFillPaintable%jm_paint_1(j_graphics)
        j_halfWidth = this%f_displayInfo%jm_getLastHalfWidth_0()
        jtemp5 => j_graphics%jm_getFont_0()
        j_beginWidth = (shifta(jtemp5%jm_stringWidth_1(this%f_TITLE), iand(1, 31)))
        call j_graphics%jm_setColor_1(this%f_foregroundColor)
        call j_graphics%jm_drawString_4(this%f_TITLE, (j_halfWidth - j_beginWidth), this%f_fontHeight, this%f_anchor)
        call this%f_drawStringUtil%jm_drawCenterStrings_6(j_graphics, this%f_instructions, this%f_displayInfo%jm_getLastWidth_0(), this%f_fontHeight, j_halfWidth, (3 * this%f_fontHeight))
        call this%GameCommandCanvas%jm_paint_1(j_graphics)
  end subroutine
end module GameInputMappingInstructionsCanvas_m

