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
module WebCommandProcessor_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AboutCommandProcessor_m
  implicit none

  type, extends(JObject) :: WebCommandProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(AboutCommandProcessor), pointer :: f_aboutCommandProcessor => null()
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_process_3 => WebCommandProcessor_jm_process_3
  end type

  class(WebCommandProcessor), pointer, save :: WebCommandProcessor_jcell_instance => null()
  logical, save :: WebCommandProcessor_jset_instance = .false.

contains

  function WebCommandProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WebCommandProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WebCommandProcessor)
      jresult => object
    end select
  end function

  function WebCommandProcessor_jstatic_instance() result(jresult)
    class(WebCommandProcessor), pointer :: jresult
    if (.not. WebCommandProcessor_jset_instance) then
      WebCommandProcessor_jset_instance = .true.
      WebCommandProcessor_jcell_instance => WebCommandProcessor_jnew_0()
    end if
    jresult => WebCommandProcessor_jcell_instance
  end function

  subroutine WebCommandProcessor_jsetstatic_instance(jvalue)
    class(WebCommandProcessor), target, optional :: jvalue
    WebCommandProcessor_jset_instance = .true.
    if (present(jvalue)) then
      WebCommandProcessor_jcell_instance => jvalue
    else
      WebCommandProcessor_jcell_instance => null()
    end if
  end subroutine

  function WebCommandProcessor_jnew_0() result(this)
    class(WebCommandProcessor), pointer :: this
    allocate(this)
    this%jclass = 'WebCommandProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_aboutCommandProcessor => AboutCommandProcessor_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function WebCommandProcessor_jm_getInstance_0() result(jresult)
    class(WebCommandProcessor), pointer :: jresult
        jresult => WebCommandProcessor_jstatic_instance()
        return
  end function

  recursive subroutine WebCommandProcessor_jm_process_3(this, j_midletCommandListener, j_command, j_canvas)
    class(WebCommandProcessor), target :: this
    class(CommandListener), target, optional :: j_midletCommandListener
    class(Command), target, optional :: j_command
    class(Canvas), target, optional :: j_canvas
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jdiscardRef => this%f_list%jm_removeAt_1(0)
  end subroutine
end module WebCommandProcessor_m

