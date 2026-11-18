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
! package org.allbinary.graphics.displayable
module DisplayableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: DisplayableInterface
  contains
    procedure :: jm_addCommand_1 => DisplayableInterface_jm_addCommand_1
    procedure :: jm_getHeight_0 => DisplayableInterface_jm_getHeight_0
    procedure :: jm_getWidth_0 => DisplayableInterface_jm_getWidth_0
    procedure :: jm_removeCommand_1 => DisplayableInterface_jm_removeCommand_1
    procedure :: jm_setCommandListener_1 => DisplayableInterface_jm_setCommandListener_1
  end type


contains

  function DisplayableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayableInterface)
      jresult => object
    end select
  end function

  function DisplayableInterface_jnew_0() result(this)
    class(DisplayableInterface), pointer :: this
    allocate(this)
    this%jclass = 'DisplayableInterface'
  end function

  recursive subroutine DisplayableInterface_jm_addCommand_1(this, j_cmd)
    class(DisplayableInterface), target :: this
    class(Command), target, optional :: j_cmd
    error stop 'AbstractMethodError: DisplayableInterface.addCommand'
  end subroutine

  recursive function DisplayableInterface_jm_getHeight_0(this) result(jresult)
    class(DisplayableInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: DisplayableInterface.getHeight'
  end function

  recursive function DisplayableInterface_jm_getWidth_0(this) result(jresult)
    class(DisplayableInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: DisplayableInterface.getWidth'
  end function

  recursive subroutine DisplayableInterface_jm_removeCommand_1(this, j_cmd)
    class(DisplayableInterface), target :: this
    class(Command), target, optional :: j_cmd
    error stop 'AbstractMethodError: DisplayableInterface.removeCommand'
  end subroutine

  recursive subroutine DisplayableInterface_jm_setCommandListener_1(this, j_l)
    class(DisplayableInterface), target :: this
    class(CommandListener), target, optional :: j_l
    error stop 'AbstractMethodError: DisplayableInterface.setCommandListener'
  end subroutine
end module DisplayableInterface_m

