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
module CommandRunnable_m
  use JR_m
  use MyCanvas_m
  use LogUtil_m
  use CommonStrings_m
  use CommandFormInputProcessor_m
  implicit none

  type, extends(JObject) :: CommandRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CommandFormInputProcessor), pointer :: f_commandFormInputProcessor => null()
    class(Command), pointer :: f_command => null()
  contains
    procedure :: jm_run_0 => CommandRunnable_jm_run_0
  end type


contains

  function CommandRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandRunnable)
      jresult => object
    end select
  end function

  recursive function CommandRunnable_jnew_2(j_commandFormInputProcessor, j_command) result(this)
    class(CommandFormInputProcessor), target, optional :: j_commandFormInputProcessor
    class(Command), target, optional :: j_command
    class(CommandRunnable), pointer :: this
    allocate(this)
    this%jclass = 'CommandRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
        this%f_commandFormInputProcessor => j_commandFormInputProcessor
        this%f_command => j_command
  end function

  recursive subroutine CommandRunnable_jm_run_0(this)
    class(CommandRunnable), target :: this
    class(MyCanvas), pointer :: j_canvas
    class(CommandListener), pointer :: j_commandListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
            j_canvas => this%f_commandFormInputProcessor%jm_getCanvas_0()
            j_commandListener => j_canvas%jm_getCustomCommandListener_0()
            call j_commandListener%jm_commandAction_2(this%f_command, j_canvas)
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine
end module CommandRunnable_m

