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
! package org.allbinary.game.configuration
module SaveGameForm_m
  use JR_m
  use MIDPUtil_m
  use GameCommandsFactory_m
  use BasicColor_m
  use CommandForm_m
  use ABSystemWrapper_m
  use Long_m
  implicit none

  type, extends(CommandForm) :: SaveGameForm
    class(MIDPUtil), pointer :: f_meUtil => null()
  contains
    procedure :: jm_initCommands_1 => SaveGameForm_jm_initCommands_1
  end type

  class(CommandForm), pointer, save :: SaveGameForm_jcell_FORM => null()
  logical, save :: SaveGameForm_jset_FORM = .false.

contains

  function SaveGameForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SaveGameForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SaveGameForm)
      jresult => object
    end select
  end function

  function SaveGameForm_jstatic_FORM() result(jresult)
    class(CommandForm), pointer :: jresult
    if (.not. SaveGameForm_jset_FORM) then
      SaveGameForm_jset_FORM = .true.
      SaveGameForm_jcell_FORM => CommandForm_jm_getNullCommandForm_0()
    end if
    jresult => SaveGameForm_jcell_FORM
  end function

  subroutine SaveGameForm_jsetstatic_FORM(jvalue)
    class(CommandForm), target, optional :: jvalue
    SaveGameForm_jset_FORM = .true.
    if (present(jvalue)) then
      SaveGameForm_jcell_FORM => jvalue
    else
      SaveGameForm_jcell_FORM => null()
    end if
  end subroutine

  recursive function SaveGameForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(SaveGameForm), pointer :: this
    character(len=:), allocatable :: j_timeString
    class(ABSystemWrapper), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'SaveGameForm'
    this%f_meUtil => MIDPUtil_jm_getInstance_0()
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        jtemp1 => ABSystemWrapper_jm_getInstance_0()
        j_timeString = JR_longString(jtemp1%jm_currentTimeMillis_0())
        call this%f_meUtil%jm_appendItem_2(this, TextField_jnew_4('Name: ', j_timeString, 30, TextField_jstatic_ANY()))
        call this%jm_initCommands_1(j_commandListener)
  end function

  recursive function SaveGameForm_jm_createForm_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(jresult)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommandForm), pointer :: jresult
        call SaveGameForm_jsetstatic_FORM(SaveGameForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor))
        jresult => SaveGameForm_jstatic_FORM()
        return
  end function

  recursive function SaveGameForm_jm_getInstance_0() result(jresult)
    class(CommandForm), pointer :: jresult
        jresult => SaveGameForm_jstatic_FORM()
        return
  end function

  recursive subroutine SaveGameForm_jm_initCommands_1(this, j_cmdListener)
    class(SaveGameForm), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        call this%jm_removeAllCommands_0()
        call this%jm_addCommand_1(j_gameCommandsFactory%f_SAVE)
        call this%jm_addCommand_1(j_gameCommandsFactory%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine
end module SaveGameForm_m

