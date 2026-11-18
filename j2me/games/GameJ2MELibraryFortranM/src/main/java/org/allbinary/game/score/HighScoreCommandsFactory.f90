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
module HighScoreCommandsFactory_m
  use JR_m
  use HighScoreCommandsBaseFactory_m
  use HighScoreCommands_m
  implicit none

  type, extends(HighScoreCommandsBaseFactory) :: HighScoreCommandsFactory
  end type

  class(HighScoreCommandsFactory), pointer, save :: HighScoreCommandsFactory_jcell_instance => null()
  logical, save :: HighScoreCommandsFactory_jset_instance = .false.

contains

  function HighScoreCommandsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreCommandsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreCommandsFactory)
      jresult => object
    end select
  end function

  function HighScoreCommandsFactory_jstatic_instance() result(jresult)
    class(HighScoreCommandsFactory), pointer :: jresult
    if (.not. HighScoreCommandsFactory_jset_instance) then
      HighScoreCommandsFactory_jset_instance = .true.
      HighScoreCommandsFactory_jcell_instance => HighScoreCommandsFactory_jnew_0()
    end if
    jresult => HighScoreCommandsFactory_jcell_instance
  end function

  subroutine HighScoreCommandsFactory_jsetstatic_instance(jvalue)
    class(HighScoreCommandsFactory), target, optional :: jvalue
    HighScoreCommandsFactory_jset_instance = .true.
    if (present(jvalue)) then
      HighScoreCommandsFactory_jcell_instance => jvalue
    else
      HighScoreCommandsFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function HighScoreCommandsFactory_jnew_0() result(this)
    class(HighScoreCommandsFactory), pointer :: this
    class(HighScoreCommands), pointer :: jtemp1
    class(HighScoreCommands), pointer :: jtemp2
    allocate(this)
    this%jclass = 'HighScoreCommandsFactory'
        jtemp1 => HighScoreCommands_jm_getInstance_0()
        jtemp2 => HighScoreCommands_jm_getInstance_0()
        continue ! super()
  end function

  recursive function HighScoreCommandsFactory_jm_getInstance_0() result(jresult)
    class(HighScoreCommandsFactory), pointer :: jresult
        jresult => HighScoreCommandsFactory_jstatic_instance()
        return
  end function
end module HighScoreCommandsFactory_m

function HighScoreCommandsFactory_jnew_0_jext() result(this)
  use HighScoreCommandsFactory_m, only: JObject, HighScoreCommandsFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HighScoreCommandsFactory_jnew_0()
end function

