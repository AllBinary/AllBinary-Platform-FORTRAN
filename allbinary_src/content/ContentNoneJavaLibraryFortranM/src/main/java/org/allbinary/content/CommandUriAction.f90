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
! package org.allbinary.content
module CommandUriAction_m
  use JR_m
  use LogUtil_m
  implicit none

  type, extends(JObject) :: CommandUriAction
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_add_2 => CommandUriAction_jm_add_2
    procedure :: jm_process_1 => CommandUriAction_jm_process_1
  end type

  class(CommandUriAction), pointer, save :: CommandUriAction_jcell_instance => null()
  logical, save :: CommandUriAction_jset_instance = .false.

contains

  function CommandUriAction_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandUriAction), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandUriAction)
      jresult => object
    end select
  end function

  function CommandUriAction_jstatic_instance() result(jresult)
    class(CommandUriAction), pointer :: jresult
    if (.not. CommandUriAction_jset_instance) then
      CommandUriAction_jset_instance = .true.
      CommandUriAction_jcell_instance => CommandUriAction_jnew_0()
    end if
    jresult => CommandUriAction_jcell_instance
  end function

  subroutine CommandUriAction_jsetstatic_instance(jvalue)
    class(CommandUriAction), target, optional :: jvalue
    CommandUriAction_jset_instance = .true.
    if (present(jvalue)) then
      CommandUriAction_jcell_instance => jvalue
    else
      CommandUriAction_jcell_instance => null()
    end if
  end subroutine

  function CommandUriAction_jnew_0() result(this)
    class(CommandUriAction), pointer :: this
    allocate(this)
    this%jclass = 'CommandUriAction'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function CommandUriAction_jm_getInstance_0() result(jresult)
    class(CommandUriAction), pointer :: jresult
        jresult => CommandUriAction_jstatic_instance()
        return
  end function

  recursive subroutine CommandUriAction_jm_add_2(this, j_command, j_url)
    class(CommandUriAction), target :: this
    class(Command), target, optional :: j_command
    character(len=*), intent(in) :: j_url
    continue
  end subroutine

  recursive subroutine CommandUriAction_jm_process_1(this, j_command)
    class(CommandUriAction), target :: this
    class(Command), target, optional :: j_command
    continue
  end subroutine
end module CommandUriAction_m

