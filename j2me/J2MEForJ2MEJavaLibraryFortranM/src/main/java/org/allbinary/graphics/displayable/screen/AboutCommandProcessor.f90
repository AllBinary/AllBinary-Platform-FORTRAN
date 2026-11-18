!
! AllBinary Open License Version 1
! Copyright (c) 2022 AllBinary
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
! package org.allbinary.graphics.displayable.screen
module AboutCommandProcessor_m
  use JR_m
  implicit none

  type, extends(JObject) :: AboutCommandProcessor
  contains
    procedure :: jm_process_3 => AboutCommandProcessor_jm_process_3
  end type

  class(AboutCommandProcessor), pointer, save :: AboutCommandProcessor_jcell_instance => null()
  logical, save :: AboutCommandProcessor_jset_instance = .false.

contains

  function AboutCommandProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AboutCommandProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AboutCommandProcessor)
      jresult => object
    end select
  end function

  function AboutCommandProcessor_jstatic_instance() result(jresult)
    class(AboutCommandProcessor), pointer :: jresult
    if (.not. AboutCommandProcessor_jset_instance) then
      AboutCommandProcessor_jset_instance = .true.
      AboutCommandProcessor_jcell_instance => AboutCommandProcessor_jnew_0()
    end if
    jresult => AboutCommandProcessor_jcell_instance
  end function

  subroutine AboutCommandProcessor_jsetstatic_instance(jvalue)
    class(AboutCommandProcessor), target, optional :: jvalue
    AboutCommandProcessor_jset_instance = .true.
    if (present(jvalue)) then
      AboutCommandProcessor_jcell_instance => jvalue
    else
      AboutCommandProcessor_jcell_instance => null()
    end if
  end subroutine

  function AboutCommandProcessor_jnew_0() result(this)
    class(AboutCommandProcessor), pointer :: this
    allocate(this)
    this%jclass = 'AboutCommandProcessor'
  end function

  recursive function AboutCommandProcessor_jm_getInstance_0() result(jresult)
    class(AboutCommandProcessor), pointer :: jresult
        jresult => AboutCommandProcessor_jstatic_instance()
        return
  end function

  recursive subroutine AboutCommandProcessor_jm_process_3(this, j_midletCommandListener, j_command, j_canvas)
    class(AboutCommandProcessor), target :: this
    class(CommandListener), target, optional :: j_midletCommandListener
    class(Command), target, optional :: j_command
    class(Canvas), target, optional :: j_canvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_midletCommandListener%jm_commandAction_2(j_command, j_canvas)
  end subroutine
end module AboutCommandProcessor_m

