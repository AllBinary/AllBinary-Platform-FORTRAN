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
module GameLimitedCommandTextItemArrayFactory_m
  use JR_m
  use CommandTextItemArrayFactory_m
  use LimitCommandsVisitor_m
  implicit none

  type, extends(JObject) :: GameLimitedCommandTextItemArrayFactory
    class(CommandTextItemArrayFactory), pointer :: f_commandTextItemArrayFactory => null()
  contains
    procedure :: jm_getCommandTextItemArrayFactory_0 => GameLimitedCommandTextItemArrayFactory_jm_getCommandTextItemArrayFactory_0
  end type

  class(GameLimitedCommandTextItemArrayFactory), pointer, save :: GameLimitedCommandTextItemArrayFactory_jcell_instance => null()
  logical, save :: GameLimitedCommandTextItemArrayFactory_jset_instance = .false.

contains

  function GameLimitedCommandTextItemArrayFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameLimitedCommandTextItemArrayFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameLimitedCommandTextItemArrayFactory)
      jresult => object
    end select
  end function

  function GameLimitedCommandTextItemArrayFactory_jstatic_instance() result(jresult)
    class(GameLimitedCommandTextItemArrayFactory), pointer :: jresult
    if (.not. GameLimitedCommandTextItemArrayFactory_jset_instance) then
      GameLimitedCommandTextItemArrayFactory_jset_instance = .true.
      GameLimitedCommandTextItemArrayFactory_jcell_instance => GameLimitedCommandTextItemArrayFactory_jnew_0()
    end if
    jresult => GameLimitedCommandTextItemArrayFactory_jcell_instance
  end function

  subroutine GameLimitedCommandTextItemArrayFactory_jsetstatic_instance(jvalue)
    class(GameLimitedCommandTextItemArrayFactory), target, optional :: jvalue
    GameLimitedCommandTextItemArrayFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameLimitedCommandTextItemArrayFactory_jcell_instance => jvalue
    else
      GameLimitedCommandTextItemArrayFactory_jcell_instance => null()
    end if
  end subroutine

  function GameLimitedCommandTextItemArrayFactory_jnew_0() result(this)
    class(GameLimitedCommandTextItemArrayFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameLimitedCommandTextItemArrayFactory'
    this%f_commandTextItemArrayFactory => CommandTextItemArrayFactory_jnew_1(LimitCommandsVisitor_jnew_0())
  end function

  recursive function GameLimitedCommandTextItemArrayFactory_jm_getInstance_0() result(jresult)
    class(GameLimitedCommandTextItemArrayFactory), pointer :: jresult
        jresult => GameLimitedCommandTextItemArrayFactory_jstatic_instance()
        return
  end function

  recursive function GameLimitedCommandTextItemArrayFactory_jm_getCommandTextItemArrayFactory_0(this) result(jresult)
    class(GameLimitedCommandTextItemArrayFactory), target :: this
    class(CommandTextItemArrayFactory), pointer :: jresult
        jresult => this%f_commandTextItemArrayFactory
        return
  end function
end module GameLimitedCommandTextItemArrayFactory_m

