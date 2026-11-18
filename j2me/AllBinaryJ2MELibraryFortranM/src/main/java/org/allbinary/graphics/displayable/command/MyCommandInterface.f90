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
! package org.allbinary.graphics.displayable.command
module MyCommandInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: MyCommandInterface
  contains
    procedure :: jm_addCommand_1 => MyCommandInterface_jm_addCommand_1
    procedure :: jm_removeAllCommands_0 => MyCommandInterface_jm_removeAllCommands_0
  end type


contains

  function MyCommandInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyCommandInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyCommandInterface)
      jresult => object
    end select
  end function

  function MyCommandInterface_jnew_0() result(this)
    class(MyCommandInterface), pointer :: this
    allocate(this)
    this%jclass = 'MyCommandInterface'
  end function

  recursive subroutine MyCommandInterface_jm_addCommand_1(this, j_command)
    class(MyCommandInterface), target :: this
    class(Command), target, optional :: j_command
    error stop 'AbstractMethodError: MyCommandInterface.addCommand'
  end subroutine

  recursive subroutine MyCommandInterface_jm_removeAllCommands_0(this)
    class(MyCommandInterface), target :: this
    error stop 'AbstractMethodError: MyCommandInterface.removeAllCommands'
  end subroutine
end module MyCommandInterface_m

