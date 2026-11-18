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
module MyCommandsFactory_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: MyCommandsFactory
    class(Command), pointer :: f_NO_COMMAND => null()
    class(Command), pointer :: f_GAUGE_CHANGE => null()
    class(Command), pointer :: f_SET_DISPLAYABLE => null()
    class(Command), pointer :: f_PAUSE_COMMAND => null()
    class(Command), pointer :: f_RESUME_COMMAND => null()
  end type

  class(MyCommandsFactory), pointer, save :: MyCommandsFactory_jcell_instance => null()
  logical, save :: MyCommandsFactory_jset_instance = .false.

contains

  function MyCommandsFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyCommandsFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyCommandsFactory)
      jresult => object
    end select
  end function

  function MyCommandsFactory_jstatic_instance() result(jresult)
    class(MyCommandsFactory), pointer :: jresult
    if (.not. MyCommandsFactory_jset_instance) then
      MyCommandsFactory_jset_instance = .true.
      MyCommandsFactory_jcell_instance => MyCommandsFactory_jnew_0()
    end if
    jresult => MyCommandsFactory_jcell_instance
  end function

  subroutine MyCommandsFactory_jsetstatic_instance(jvalue)
    class(MyCommandsFactory), target, optional :: jvalue
    MyCommandsFactory_jset_instance = .true.
    if (present(jvalue)) then
      MyCommandsFactory_jcell_instance => jvalue
    else
      MyCommandsFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function MyCommandsFactory_jnew_0() result(this)
    class(MyCommandsFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    allocate(this)
    this%jclass = 'MyCommandsFactory'
    jtemp1 => StringUtil_jm_getInstance_0()
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_NO_COMMAND => Command_jnew_4(jtemp1%f_EMPTY_STRING, jtemp2%f_EMPTY_STRING, (-1), (-1))
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_GAUGE_CHANGE => Command_jnew_4('GAUGE_CHANGE', jtemp3%f_EMPTY_STRING, Command_jstatic_ITEM(), 1)
    jtemp4 => StringUtil_jm_getInstance_0()
    this%f_SET_DISPLAYABLE => Command_jnew_4('Display', jtemp4%f_EMPTY_STRING, Command_jstatic_SCREEN(), 2)
    jtemp5 => StringUtil_jm_getInstance_0()
    this%f_PAUSE_COMMAND => Command_jnew_4('Pause', jtemp5%f_EMPTY_STRING, Command_jstatic_SCREEN(), 0)
    jtemp6 => StringUtil_jm_getInstance_0()
    this%f_RESUME_COMMAND => Command_jnew_4('Resume', jtemp6%f_EMPTY_STRING, Command_jstatic_SCREEN(), 0)
        continue
  end function

  recursive function MyCommandsFactory_jm_getInstance_0() result(jresult)
    class(MyCommandsFactory), pointer :: jresult
        jresult => MyCommandsFactory_jstatic_instance()
        return
  end function
end module MyCommandsFactory_m

