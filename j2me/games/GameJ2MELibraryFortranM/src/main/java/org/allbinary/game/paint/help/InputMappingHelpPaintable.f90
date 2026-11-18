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
module InputMappingHelpPaintable_m
  use JR_m
  use GameKey_m
  use GameKeyFactory_m
  use Input_m
  use PlatformInputMappingFactory_m
  use GameInputMapping_m
  use PersistentInputMapping_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonSeps_m
  use CommonStrings_m
  use BasicArrayList_m
  use HelpPaintable_m
  use UpdateMyFontProperties_m
  implicit none

  type, extends(HelpPaintable) :: InputMappingHelpPaintable
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CommonSeps), pointer :: f_commonSeps => null()
    class(StringUtil), pointer :: f_stringUtil => null()
    class(BasicColorFactory), pointer :: f_basicColorFactory => null()
    class(GameKey), pointer :: f_NONE => null()
    character(len=:), allocatable :: f_EMPTY_STRING
    type(JRef), allocatable :: f_gameInputMappingArray(:)
    type(JRef), allocatable :: f_keyMappingArray(:)
    type(JRef), allocatable :: f_actionBasicColor(:)
    type(JRef), allocatable :: f_inputBasicColorArray(:,:)
    class(BasicColor), pointer :: f_selectedBasicColor => null()
    class(UpdateMyFontProperties), pointer :: f_updateMyFontProperties => null()
  contains
    procedure :: jm_updateMeasurement_1 => InputMappingHelpPaintable_jm_updateMeasurement_1
    procedure :: jm_update_2 => InputMappingHelpPaintable_jm_update_2
    procedure :: jm_get_1 => InputMappingHelpPaintable_jm_get_1
    procedure :: jm_paint_1 => InputMappingHelpPaintable_jm_paint_1
  end type

  character(len=:), allocatable, save :: InputMappingHelpPaintable_jcell_AND
  logical, save :: InputMappingHelpPaintable_jset_AND = .false.
  character(len=:), allocatable, save :: InputMappingHelpPaintable_jcell_SEP
  logical, save :: InputMappingHelpPaintable_jset_SEP = .false.
  character(len=:), allocatable, save :: InputMappingHelpPaintable_jcell_MORE_THAN_TWO_IN_LIST_AND
  logical, save :: InputMappingHelpPaintable_jset_MORE_THAN_TWO_IN_LIST_AND = .false.

contains

  function InputMappingHelpPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputMappingHelpPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputMappingHelpPaintable)
      jresult => object
    end select
  end function

  function InputMappingHelpPaintable_jstatic_AND() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. InputMappingHelpPaintable_jset_AND) then
      InputMappingHelpPaintable_jset_AND = .true.
      InputMappingHelpPaintable_jcell_AND = ' and '
    end if
    jresult = InputMappingHelpPaintable_jcell_AND
  end function

  subroutine InputMappingHelpPaintable_jsetstatic_AND(jvalue)
    character(len=*), intent(in) :: jvalue
    InputMappingHelpPaintable_jset_AND = .true.
    InputMappingHelpPaintable_jcell_AND = jvalue
  end subroutine

  function InputMappingHelpPaintable_jstatic_SEP() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. InputMappingHelpPaintable_jset_SEP) then
      InputMappingHelpPaintable_jset_SEP = .true.
      InputMappingHelpPaintable_jcell_SEP = ', '
    end if
    jresult = InputMappingHelpPaintable_jcell_SEP
  end function

  subroutine InputMappingHelpPaintable_jsetstatic_SEP(jvalue)
    character(len=*), intent(in) :: jvalue
    InputMappingHelpPaintable_jset_SEP = .true.
    InputMappingHelpPaintable_jcell_SEP = jvalue
  end subroutine

  function InputMappingHelpPaintable_jstatic_MORE_THAN_TWO_IN_LIST_AND() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. InputMappingHelpPaintable_jset_MORE_THAN_TWO_IN_LIST_AND) then
      InputMappingHelpPaintable_jset_MORE_THAN_TWO_IN_LIST_AND = .true.
      InputMappingHelpPaintable_jcell_MORE_THAN_TWO_IN_LIST_AND = ', and '
    end if
    jresult = InputMappingHelpPaintable_jcell_MORE_THAN_TWO_IN_LIST_AND
  end function

  subroutine InputMappingHelpPaintable_jsetstatic_MORE_THAN_TWO_IN_LIST_AND(jvalue)
    character(len=*), intent(in) :: jvalue
    InputMappingHelpPaintable_jset_MORE_THAN_TWO_IN_LIST_AND = .true.
    InputMappingHelpPaintable_jcell_MORE_THAN_TWO_IN_LIST_AND = jvalue
  end subroutine

  recursive function InputMappingHelpPaintable_jnew_3(j_gameInputMappingArray, j_backgroundBasicColor, j_basicColor) result(this)
    type(JRef) :: j_gameInputMappingArray(:)
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_basicColor
    class(InputMappingHelpPaintable), pointer :: this
    class(GameKeyFactory), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(BasicColorUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'InputMappingHelpPaintable'
    this%f_EMPTY_STRING = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_basicColorFactory => BasicColorFactory_jm_getInstance_0()
    jtemp1 => GameKeyFactory_jm_getInstance_0()
    this%f_NONE => jtemp1%f_NONE
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp2%f_EMPTY_STRING
    
    this%f_keyMappingArray = JR_newRefArray(0)
    jtemp3 => BasicColorUtil_jm_getInstance_0()
    this%f_actionBasicColor = jtemp3%f_ZERO_ARRAY
    this%f_inputBasicColorArray = JR_newRefArray2(0, 0)
    
    this%f_updateMyFontProperties => UpdateMyFontProperties_jnew_0()
        continue ! super()
        this%f_gameInputMappingArray = j_gameInputMappingArray
        call this%jm_update_2(this%f_NONE, this%f_NONE)
        if ((JR_same(j_backgroundBasicColor, this%f_basicColorFactory%f_WHITE) .or. JR_same(j_basicColor, this%f_basicColorFactory%f_WHITE))) then
            this%f_selectedBasicColor => this%f_basicColorFactory%f_RED
        else
            this%f_selectedBasicColor => this%f_basicColorFactory%f_WHITE
        end if
  end function

  recursive subroutine InputMappingHelpPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(InputMappingHelpPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(UpdateMyFontProperties), pointer :: j_updateMyFontProperties
    class(StringMaker), pointer :: j_stringMaker
    type(JString), allocatable :: j_inputInfo(:)
    integer(4) :: j_size
    class(BasicArrayList), pointer :: j_list
    character(len=:), allocatable :: j_keyMappings
    character(len=:), allocatable :: j_actionString
    class(Input), pointer :: j_input
    integer(4) :: j_size2
    integer(4) :: j_index2
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        j_updateMyFontProperties => UpdateMyFontProperties_jnew_0()
        j_updateMyFontProperties%f_charHeight = j_font%jm_getHeight_0()
        j_stringMaker => StringMaker_jnew_0()
        j_inputInfo = this%f_inputInfo
        j_size = size(j_inputInfo, 1)
        j_updateMyFontProperties%f_actionStringArray = JR_newStringArray(j_size)
        j_updateMyFontProperties%f_keymappingBeginWidthArray = JR_newIntArray(j_size)
        j_updateMyFontProperties%f_actionStringDeltaXArray = JR_newIntArray(j_size)
        j_updateMyFontProperties%f_inputDeltaXArray = JR_newIntArray2(j_size, 0)
        j_updateMyFontProperties%f_sepArray = JR_newStringArray2(j_size, 0)
        j_updateMyFontProperties%f_sepWidthArray = JR_newIntArray2(j_size, 0)
        continue
        continue
        continue
        continue
        j_size2 = 0
        j_index = 0
        do while ((j_index < j_size))
            j_list => BasicArrayList_jcast(this%f_keyMappingArray((j_index) + 1)%v)
            j_keyMappings = this%jm_get_1(j_list)
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp7 => j_stringMaker%jm_append_1(j_inputInfo((j_index) + 1)%v)
            jtemp6 => jtemp7%jm_append_1(this%f_commonSeps%f_COLON)
            jtemp5 => jtemp6%jm_append_1(this%f_commonSeps%f_SPACE)
            jtemp4 => jtemp5%jm_append_1(this%f_commonSeps%f_SPACE)
            j_actionString = jtemp4%jm_toString_0()
            j_updateMyFontProperties%f_actionStringArray((j_index) + 1)%v = j_actionString
            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
            jtemp9 => j_stringMaker%jm_append_1(j_updateMyFontProperties%f_actionStringArray((j_index) + 1)%v)
            jtemp8 => jtemp9%jm_append_1(j_keyMappings)
            j_updateMyFontProperties%f_keymappingBeginWidthArray((j_index) + 1) = (shifta(j_font%jm_stringWidth_1(jtemp8%jm_toString_0()), iand(1, 31)))
            j_updateMyFontProperties%f_actionStringDeltaXArray((j_index) + 1) = j_font%jm_stringWidth_1(j_actionString)
            j_size2 = j_list%jm_size_0()
            j_updateMyFontProperties%f_inputDeltaXArray((j_index) + 1, :) = JR_newIntArray(j_size2)
            j_updateMyFontProperties%f_sepArray((j_index) + 1, :) = JR_newStringArray(j_size2)
            j_updateMyFontProperties%f_sepWidthArray((j_index) + 1, :) = JR_newIntArray(j_size2)
            j_index2 = 0
            do while ((j_index2 < j_size2))
                j_input => Input_jcast(j_list%f_objectArray((j_index2) + 1)%v)
                j_updateMyFontProperties%f_inputDeltaXArray((j_index) + 1, (j_index2) + 1) = j_font%jm_stringWidth_1(j_input%jm_getName_0())
                j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v = this%f_EMPTY_STRING
                if (((j_index2 + 1) < j_list%jm_size_0())) then
                    if ((j_list%jm_size_0() == 2)) then
                        j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v = InputMappingHelpPaintable_jstatic_AND()
                    else
                        if (((j_index2 + 2) == j_list%jm_size_0())) then
                            j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v = InputMappingHelpPaintable_jstatic_MORE_THAN_TWO_IN_LIST_AND()
                        else
                            j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v = InputMappingHelpPaintable_jstatic_SEP()
                        end if
                    end if
                end if
                if ((.not. JR_same(j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v, this%f_EMPTY_STRING))) then
                    j_updateMyFontProperties%f_sepWidthArray((j_index) + 1, (j_index2) + 1) = j_font%jm_stringWidth_1(j_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v)
                end if
                j_index2 = j_index2 + 1
            end do
            j_index = j_index + 1
        end do
        this%f_updateMyFontProperties => j_updateMyFontProperties
        call this%HelpPaintable%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive subroutine InputMappingHelpPaintable_jm_update_2(this, j_selectedGameKey, j_selectedInput)
    class(InputMappingHelpPaintable), target :: this
    class(GameKey), target, optional :: j_selectedGameKey
    class(Input), target, optional :: j_selectedInput
    class(StringMaker), pointer :: j_stringMaker
    class(PersistentInputMapping), pointer :: j_gameKeyMapping
    integer(4) :: j_size
    type(JString), allocatable :: j_keyInfo(:)
    type(JRef), allocatable :: j_keyMappingArray(:)
    type(JRef), allocatable :: j_actionBasicColor(:)
    type(JRef), allocatable :: j_inputBasicColorArray(:,:)
    class(GameInputMapping), pointer :: j_gameInputMapping
    class(GameKey), pointer :: j_gameKey
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size2
    integer(4) :: j_index2
    integer(4) :: j_indexOfSelectedInput
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(CommonLabels), pointer :: jtemp15
    class(PlatformInputMappingFactory), pointer :: jtemp16
    class(InputToGameKeyMapping), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        jtemp15 => CommonLabels_jm_getInstance_0()
        jtemp14 => j_stringMaker%jm_append_1(jtemp15%f_START_LABEL)
        jtemp13 => jtemp14%jm_append_1('selected GameKey: ')
        jtemp12 => jtemp13%jm_append_1(this%f_stringUtil%jm_toString_1(j_selectedGameKey))
        jtemp11 => jtemp12%jm_append_1(' Input: ')
        jtemp10 => jtemp11%jm_append_1(this%f_stringUtil%jm_toString_1(j_selectedInput))
        call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
        jtemp16 => PlatformInputMappingFactory_jm_getInstance_0()
        j_gameKeyMapping => jtemp16%jm_getPersistentInputMappingInstance_0()
        j_size = size(this%f_gameInputMappingArray, 1)
        j_keyInfo = JR_newStringArray(j_size)
        j_keyMappingArray = JR_newRefArray(j_size)
        j_actionBasicColor = JR_newRefArray(j_size)
        j_inputBasicColorArray = JR_newRefArray2(j_size, 0)
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_gameInputMapping => GameInputMapping_jcast(this%f_gameInputMappingArray((j_index) + 1)%v)
            j_gameKey => j_gameInputMapping%jm_getGameKey_0()
            jtemp17 => j_gameKeyMapping%jm_getInputMapping_0()
            j_list => jtemp17%jm_getMappedInput_1(j_gameKey)
            j_size2 = j_list%jm_size_0()
            j_inputBasicColorArray((j_index) + 1, :) => JR_newRefArray(j_size2)
            j_index2 = 0
            do while ((j_index2 < j_size2))
                j_inputBasicColorArray((j_index) + 1, (j_index2) + 1)%v = this%f_basicColor
                j_index2 = j_index2 + 1
            end do
            if (JR_same(j_gameKey, j_selectedGameKey)) then
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp19 => j_stringMaker%jm_append_1('Found: selected GameKey: ')
                jtemp18 => jtemp19%jm_append_1(this%f_stringUtil%jm_toString_1(j_selectedGameKey))
                call this%f_logUtil%jm_putF_3(jtemp18%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                j_actionBasicColor((j_index) + 1)%v => this%f_selectedBasicColor
                j_indexOfSelectedInput = j_list%jm_indexOf_1(j_selectedInput)
                if ((j_indexOfSelectedInput >= 0)) then
                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                    jtemp21 => j_stringMaker%jm_append_1('Found: selected Input: ')
                    jtemp20 => jtemp21%jm_append_1(this%f_stringUtil%jm_toString_1(j_selectedInput))
                    call this%f_logUtil%jm_putF_3(jtemp20%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                    j_inputBasicColorArray((j_index) + 1, (j_indexOfSelectedInput) + 1)%v = this%f_selectedBasicColor
                end if
            else
                j_actionBasicColor((j_index) + 1)%v => this%f_basicColor
            end if
            j_keyInfo((j_index) + 1)%v = j_gameInputMapping%jm_getName_0()
            j_keyMappingArray((j_index) + 1)%v => j_list
            j_index = j_index + 1
        end do
        this%f_keyMappingArray = j_keyMappingArray
        this%f_actionBasicColor = j_actionBasicColor
        this%f_inputBasicColorArray = j_inputBasicColorArray
        call this%HelpPaintable%jm_setInputInfoP_1(j_keyInfo)
        this%f_myFontProcessor => this%f_updateMyFontProcessor
  end subroutine

  recursive function InputMappingHelpPaintable_jm_get_1(this, j_keyList) result(jresult)
    class(InputMappingHelpPaintable), target :: this
    class(BasicArrayList), target, optional :: j_keyList
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(Input), pointer :: j_key
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        continue
        j_size = j_keyList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_key => Input_jcast(j_keyList%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_append_1(j_key%jm_getName_0())
            if (((j_index + 1) < j_keyList%jm_size_0())) then
                if ((j_keyList%jm_size_0() == 2)) then
                    jdiscardRef => j_stringBuffer%jm_append_1(InputMappingHelpPaintable_jstatic_AND())
                else
                    if (((j_index + 2) == j_keyList%jm_size_0())) then
                        jdiscardRef => j_stringBuffer%jm_append_1(InputMappingHelpPaintable_jstatic_MORE_THAN_TWO_IN_LIST_AND())
                    else
                        jdiscardRef => j_stringBuffer%jm_append_1(InputMappingHelpPaintable_jstatic_SEP())
                    end if
                end if
            end if
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive subroutine InputMappingHelpPaintable_jm_paint_1(this, j_graphics)
    class(InputMappingHelpPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_halfWidth
    type(JString), allocatable :: j_inputInfo(:)
    integer(4) :: j_size
    integer(4) :: j_y
    integer(4) :: j_deltaX
    integer(4) :: j_size2
    character(len=:), allocatable :: j_actionString
    class(Input), pointer :: j_input
    class(BasicArrayList), pointer :: j_list
    character(len=:), allocatable :: j_sep
    integer(4) :: j_beginWidth
    integer(4) :: j_index2
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
        call j_graphics%jm_drawString_4(this%f_title, (j_halfWidth - this%f_titleBeginWidth), this%f_updateMyFontProperties%f_charHeight, this%f_anchor)
        j_inputInfo = this%f_inputInfo
        j_size = size(j_inputInfo, 1)
        j_y = 0
        j_deltaX = 0
        j_size2 = 0
        continue
        continue
        continue
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_y = (((j_index + 3)) * this%f_updateMyFontProperties%f_charHeight)
            j_deltaX = 0
            j_list => BasicArrayList_jcast(this%f_keyMappingArray((j_index) + 1)%v)
            j_size2 = j_list%jm_size_0()
            j_beginWidth = this%f_updateMyFontProperties%f_keymappingBeginWidthArray((j_index) + 1)
            associate (jstaticref1 => BasicColor_jcast(this%f_actionBasicColor((j_index) + 1)%v))
            call j_graphics%jm_setColor_1(jstaticref1%jm_intValue_0())
            end associate
            j_actionString = this%f_updateMyFontProperties%f_actionStringArray((j_index) + 1)%v
            call j_graphics%jm_drawString_4(j_actionString, ((j_halfWidth - j_beginWidth) + j_deltaX), j_y, this%f_anchor)
            j_deltaX = (j_deltaX + this%f_updateMyFontProperties%f_actionStringDeltaXArray((j_index) + 1))
            j_index2 = 0
            do while ((j_index2 < j_size2))
                j_input => Input_jcast(j_list%f_objectArray((j_index2) + 1)%v)
                call j_graphics%jm_setColor_1(this%f_inputBasicColorArray((j_index) + 1, (j_index2) + 1)%v%jm_intValue_0())
                call j_graphics%jm_drawString_4(j_input%jm_getName_0(), ((j_halfWidth - j_beginWidth) + j_deltaX), j_y, this%f_anchor)
                j_deltaX = (j_deltaX + this%f_updateMyFontProperties%f_inputDeltaXArray((j_index) + 1, (j_index2) + 1))
                j_sep = this%f_updateMyFontProperties%f_sepArray((j_index) + 1, (j_index2) + 1)%v
                call j_graphics%jm_setColor_1(this%f_basicColor%jm_intValue_0())
                call j_graphics%jm_drawString_4(j_sep, ((j_halfWidth - j_beginWidth) + j_deltaX), j_y, this%f_anchor)
                j_deltaX = (j_deltaX + this%f_updateMyFontProperties%f_sepWidthArray((j_index) + 1, (j_index2) + 1))
                j_index2 = j_index2 + 1
            end do
            j_index = j_index + 1
        end do
  end subroutine
end module InputMappingHelpPaintable_m

