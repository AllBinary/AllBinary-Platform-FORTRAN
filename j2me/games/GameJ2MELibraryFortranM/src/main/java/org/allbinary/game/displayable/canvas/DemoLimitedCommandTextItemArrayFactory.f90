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
module DemoLimitedCommandTextItemArrayFactory_m
  use JR_m
  use CommandTextItemArrayFactory_m
  use LimitCommandsVisitor_m
  implicit none

  type, extends(JObject) :: DemoLimitedCommandTextItemArrayFactory
    class(CommandTextItemArrayFactory), pointer :: f_commandTextItemArrayFactory => null()
  contains
    procedure :: jm_getCommandTextItemArrayFactory_0 => DemoLimitedCommandTextItemArrayFactory_jm_getCommandTextItemArrayFactory_0
  end type

  class(DemoLimitedCommandTextItemArrayFactory), pointer, save :: DemoLimitedCommandTextItemArrayFactory_jcell_instance => null()
  logical, save :: DemoLimitedCommandTextItemArrayFactory_jset_instance = .false.

contains

  function DemoLimitedCommandTextItemArrayFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoLimitedCommandTextItemArrayFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoLimitedCommandTextItemArrayFactory)
      jresult => object
    end select
  end function

  function DemoLimitedCommandTextItemArrayFactory_jstatic_instance() result(jresult)
    class(DemoLimitedCommandTextItemArrayFactory), pointer :: jresult
    if (.not. DemoLimitedCommandTextItemArrayFactory_jset_instance) then
      DemoLimitedCommandTextItemArrayFactory_jset_instance = .true.
      DemoLimitedCommandTextItemArrayFactory_jcell_instance => DemoLimitedCommandTextItemArrayFactory_jnew_0()
    end if
    jresult => DemoLimitedCommandTextItemArrayFactory_jcell_instance
  end function

  subroutine DemoLimitedCommandTextItemArrayFactory_jsetstatic_instance(jvalue)
    class(DemoLimitedCommandTextItemArrayFactory), target, optional :: jvalue
    DemoLimitedCommandTextItemArrayFactory_jset_instance = .true.
    if (present(jvalue)) then
      DemoLimitedCommandTextItemArrayFactory_jcell_instance => jvalue
    else
      DemoLimitedCommandTextItemArrayFactory_jcell_instance => null()
    end if
  end subroutine

  function DemoLimitedCommandTextItemArrayFactory_jnew_0() result(this)
    class(DemoLimitedCommandTextItemArrayFactory), pointer :: this
    allocate(this)
    this%jclass = 'DemoLimitedCommandTextItemArrayFactory'
    this%f_commandTextItemArrayFactory => CommandTextItemArrayFactory_jnew_1(LimitCommandsVisitor_jnew_0())
  end function

  recursive function DemoLimitedCommandTextItemArrayFactory_jm_getInstance_0() result(jresult)
    class(DemoLimitedCommandTextItemArrayFactory), pointer :: jresult
        jresult => DemoLimitedCommandTextItemArrayFactory_jstatic_instance()
        return
  end function

  recursive function DemoLimitedCommandTextItemArrayFactory_jm_getCommandTextItemArrayFactory_0(this) result(jresult)
    class(DemoLimitedCommandTextItemArrayFactory), target :: this
    class(CommandTextItemArrayFactory), pointer :: jresult
        jresult => this%f_commandTextItemArrayFactory
        return
  end function
end module DemoLimitedCommandTextItemArrayFactory_m

