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
module InGameOptionsForm_m
  use JR_m
  use GameCommandsFactory_m
  use GameFeatureFormUtil_m
  use InGameFeatureChoiceGroups_m
  use BasicColor_m
  use CommandForm_m
  use StringUtil_m
  implicit none

  type, extends(CommandForm) :: InGameOptionsForm
  contains
    procedure :: jm_initCommands_1 => InGameOptionsForm_jm_initCommands_1
  end type

  class(Command), pointer, save :: InGameOptionsForm_jcell_DISPLAY => null()
  logical, save :: InGameOptionsForm_jset_DISPLAY = .false.
  class(Command), pointer, save :: InGameOptionsForm_jcell_SAVE => null()
  logical, save :: InGameOptionsForm_jset_SAVE = .false.
  class(Command), pointer, save :: InGameOptionsForm_jcell_DEFAULT => null()
  logical, save :: InGameOptionsForm_jset_DEFAULT = .false.

contains

  function InGameOptionsForm_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InGameOptionsForm), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InGameOptionsForm)
      jresult => object
    end select
  end function

  function InGameOptionsForm_jstatic_DISPLAY() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. InGameOptionsForm_jset_DISPLAY) then
      InGameOptionsForm_jset_DISPLAY = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    InGameOptionsForm_jcell_DISPLAY => Command_jnew_4('Options In Game', jtemp1%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => InGameOptionsForm_jcell_DISPLAY
  end function

  subroutine InGameOptionsForm_jsetstatic_DISPLAY(jvalue)
    class(Command), target, optional :: jvalue
    InGameOptionsForm_jset_DISPLAY = .true.
    if (present(jvalue)) then
      InGameOptionsForm_jcell_DISPLAY => jvalue
    else
      InGameOptionsForm_jcell_DISPLAY => null()
    end if
  end subroutine

  function InGameOptionsForm_jstatic_SAVE() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp2
    if (.not. InGameOptionsForm_jset_SAVE) then
      InGameOptionsForm_jset_SAVE = .true.
      jtemp2 => StringUtil_jm_getInstance_0()
    InGameOptionsForm_jcell_SAVE => Command_jnew_4('Save', jtemp2%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => InGameOptionsForm_jcell_SAVE
  end function

  subroutine InGameOptionsForm_jsetstatic_SAVE(jvalue)
    class(Command), target, optional :: jvalue
    InGameOptionsForm_jset_SAVE = .true.
    if (present(jvalue)) then
      InGameOptionsForm_jcell_SAVE => jvalue
    else
      InGameOptionsForm_jcell_SAVE => null()
    end if
  end subroutine

  function InGameOptionsForm_jstatic_DEFAULT() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp3
    if (.not. InGameOptionsForm_jset_DEFAULT) then
      InGameOptionsForm_jset_DEFAULT = .true.
      jtemp3 => StringUtil_jm_getInstance_0()
    InGameOptionsForm_jcell_DEFAULT => Command_jnew_4('Default', jtemp3%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => InGameOptionsForm_jcell_DEFAULT
  end function

  subroutine InGameOptionsForm_jsetstatic_DEFAULT(jvalue)
    class(Command), target, optional :: jvalue
    InGameOptionsForm_jset_DEFAULT = .true.
    if (present(jvalue)) then
      InGameOptionsForm_jcell_DEFAULT => jvalue
    else
      InGameOptionsForm_jcell_DEFAULT => null()
    end if
  end subroutine

  recursive function InGameOptionsForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(this)
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(InGameOptionsForm), pointer :: this
    class(GameFeatureFormUtil), pointer :: j_gameFeatureFormUtil
    class(InGameFeatureChoiceGroups), pointer :: jtemp4
    class(InGameFeatureChoiceGroups), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'InGameOptionsForm'
        continue ! super()
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        j_gameFeatureFormUtil => GameFeatureFormUtil_jm_getInstance_0()
        jtemp4 => InGameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        call j_gameFeatureFormUtil%jm_addChoiceGroup_3(this, jtemp4%jm_get_0(), Choice_jstatic_EXCLUSIVE())
        jtemp5 => InGameFeatureChoiceGroups_jm_getMultipleInstance_0()
        call j_gameFeatureFormUtil%jm_addChoiceGroup_3(this, jtemp5%jm_get_0(), Choice_jstatic_MULTIPLE())
        call this%jm_initCommands_1(j_commandListener)
  end function

  recursive subroutine InGameOptionsForm_jm_initCommands_1(this, j_cmdListener)
    class(InGameOptionsForm), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(GameCommandsFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        jtemp6 => GameCommandsFactory_jm_getInstance_0()
        call this%jm_addCommand_1(jtemp6%f_CLOSE_AND_SHOW_GAME_CANVAS)
        call this%jm_addCommand_1(InGameOptionsForm_jstatic_DEFAULT())
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine
end module InGameOptionsForm_m

