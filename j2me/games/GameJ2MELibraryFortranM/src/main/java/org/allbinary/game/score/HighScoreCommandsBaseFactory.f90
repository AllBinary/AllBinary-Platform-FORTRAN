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
module HighScoreCommandsBaseFactory_m
  use JR_m
  use LogUtil_m
  implicit none

  type, extends(JObject) :: HighScoreCommandsBaseFactory
    class(LogUtil), pointer :: f_logUtil => null()
    type(JRef), allocatable :: f_HIGH_SCORE_COMMANDS(:)
  contains
    procedure :: jm_isHighScoreCommand_1 => HighScoreCommandsBaseFactory_jm_isHighScoreCommand_1
    procedure :: jm_getIndex_1 => HighScoreCommandsBaseFactory_jm_getIndex_1
  end type


contains

  function HighScoreCommandsBaseFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreCommandsBaseFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreCommandsBaseFactory)
      jresult => object
    end select
  end function

  recursive function HighScoreCommandsBaseFactory_jnew_1(j_HIGH_SCORE_COMMANDS) result(this)
    type(JRef) :: j_HIGH_SCORE_COMMANDS(:)
    class(HighScoreCommandsBaseFactory), pointer :: this
    allocate(this)
    this%jclass = 'HighScoreCommandsBaseFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_HIGH_SCORE_COMMANDS = j_HIGH_SCORE_COMMANDS
  end function

  recursive function HighScoreCommandsBaseFactory_jm_isHighScoreCommand_1(this, j_command) result(jresult)
    class(HighScoreCommandsBaseFactory), target :: this
    class(Command), target, optional :: j_command
    logical :: jresult
    integer(4) :: j_index
        j_index = (size(this%f_HIGH_SCORE_COMMANDS, 1) - 1)
        do while ((j_index >= 0))
            if (JR_same(j_command, Command_jcast(this%f_HIGH_SCORE_COMMANDS((j_index) + 1)%v))) then
                jresult = .true.
                return
            end if
            j_index = j_index - 1
        end do
        jresult = .false.
        return
  end function

  recursive function HighScoreCommandsBaseFactory_jm_getIndex_1(this, j_command) result(jresult)
    class(HighScoreCommandsBaseFactory), target :: this
    class(Command), target, optional :: j_command
    integer(4) :: jresult
    integer(4) :: j_index
        j_index = (size(this%f_HIGH_SCORE_COMMANDS, 1) - 1)
        do while ((j_index >= 0))
            if (JR_same(j_command, Command_jcast(this%f_HIGH_SCORE_COMMANDS((j_index) + 1)%v))) then
                jresult = j_index
                return
            end if
            j_index = j_index - 1
        end do
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module HighScoreCommandsBaseFactory_m

