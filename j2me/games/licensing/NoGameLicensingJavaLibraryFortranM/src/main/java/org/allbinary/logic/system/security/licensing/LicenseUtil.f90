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
! package org.allbinary.logic.system.security.licensing
module LicenseUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: LicenseUtil
  contains
    procedure :: jm_init_0 => LicenseUtil_jm_init_0
    procedure :: jm_isRunning_0 => LicenseUtil_jm_isRunning_0
    procedure :: jm_setRunning_1 => LicenseUtil_jm_setRunning_1
    procedure :: jm_shouldWait_1 => LicenseUtil_jm_shouldWait_1
  end type

  class(LicenseUtil), pointer, save :: LicenseUtil_jcell_instance => null()
  logical, save :: LicenseUtil_jset_instance = .false.

contains

  function LicenseUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseUtil)
      jresult => object
    end select
  end function

  function LicenseUtil_jstatic_instance() result(jresult)
    class(LicenseUtil), pointer :: jresult
    if (.not. LicenseUtil_jset_instance) then
      LicenseUtil_jset_instance = .true.
      LicenseUtil_jcell_instance => LicenseUtil_jnew_0()
    end if
    jresult => LicenseUtil_jcell_instance
  end function

  subroutine LicenseUtil_jsetstatic_instance(jvalue)
    class(LicenseUtil), target, optional :: jvalue
    LicenseUtil_jset_instance = .true.
    if (present(jvalue)) then
      LicenseUtil_jcell_instance => jvalue
    else
      LicenseUtil_jcell_instance => null()
    end if
  end subroutine

  function LicenseUtil_jnew_0() result(this)
    class(LicenseUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseUtil'
  end function

  recursive function LicenseUtil_jm_getInstance_0() result(jresult)
    class(LicenseUtil), pointer :: jresult
        jresult => LicenseUtil_jstatic_instance()
        return
  end function

  recursive subroutine LicenseUtil_jm_init_0(this)
    class(LicenseUtil), target :: this
    continue
  end subroutine

  recursive function LicenseUtil_jm_isRunning_0(this) result(jresult)
    class(LicenseUtil), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine LicenseUtil_jm_setRunning_1(this, j_running)
    class(LicenseUtil), target :: this
    logical, value :: j_running
    continue
  end subroutine

  recursive function LicenseUtil_jm_shouldWait_1(this, j_commandListener) result(jresult)
    class(LicenseUtil), target :: this
    class(CommandListener), target, optional :: j_commandListener
    logical :: jresult
        jresult = this%jm_isRunning_0()
        return
  end function
end module LicenseUtil_m

