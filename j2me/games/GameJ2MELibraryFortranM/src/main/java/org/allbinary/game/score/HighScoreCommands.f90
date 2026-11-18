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
module HighScoreCommands_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: HighScoreCommands
    class(Command), pointer :: f_DISPLAY => null()
    class(Command), pointer :: f_PERSONAL => null()
    class(Command), pointer :: f_WORLD => null()
  end type

  class(HighScoreCommands), pointer, save :: HighScoreCommands_jcell_instance => null()
  logical, save :: HighScoreCommands_jset_instance = .false.

contains

  function HighScoreCommands_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreCommands), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreCommands)
      jresult => object
    end select
  end function

  function HighScoreCommands_jstatic_instance() result(jresult)
    class(HighScoreCommands), pointer :: jresult
    if (.not. HighScoreCommands_jset_instance) then
      HighScoreCommands_jset_instance = .true.
      HighScoreCommands_jcell_instance => HighScoreCommands_jnew_0()
    end if
    jresult => HighScoreCommands_jcell_instance
  end function

  subroutine HighScoreCommands_jsetstatic_instance(jvalue)
    class(HighScoreCommands), target, optional :: jvalue
    HighScoreCommands_jset_instance = .true.
    if (present(jvalue)) then
      HighScoreCommands_jcell_instance => jvalue
    else
      HighScoreCommands_jcell_instance => null()
    end if
  end subroutine

  function HighScoreCommands_jnew_0() result(this)
    class(HighScoreCommands), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    allocate(this)
    this%jclass = 'HighScoreCommands'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_DISPLAY => Command_jnew_4('Scores', jtemp1%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_PERSONAL => Command_jnew_4('Personal', jtemp2%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_WORLD => Command_jnew_4('World', jtemp3%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
  end function

  recursive function HighScoreCommands_jm_getInstance_0() result(jresult)
    class(HighScoreCommands), pointer :: jresult
        jresult => HighScoreCommands_jstatic_instance()
        return
  end function
end module HighScoreCommands_m

