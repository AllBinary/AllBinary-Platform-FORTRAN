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
! package org.allbinary.logic.system.os
module OperatingSystems_m
  use JR_m
  implicit none

  type, extends(JObject) :: OperatingSystems
    character(len=:), allocatable :: f_LINUX
    character(len=:), allocatable :: f_WINDOWS
    character(len=:), allocatable :: f_SOLARIS
    character(len=:), allocatable :: f_WINDOWS2000
    character(len=:), allocatable :: f_WINDOWS_NT
    character(len=:), allocatable :: f_WINDOWS_10
    character(len=:), allocatable :: f_WINDOWS_11
    character(len=:), allocatable :: f_WINDOWS_VISTA
    character(len=:), allocatable :: f_WINDOWS_XP
    character(len=:), allocatable :: f_ANDROID
    character(len=:), allocatable :: f_HARMONY
    logical :: f_unknownSpecificOSAllowed = .false.
  contains
    procedure :: jm_isUnknownSpecificOSAllowed_0 => OperatingSystems_jm_isUnknownSpecificOSAllowed_0
    procedure :: jm_setUnknownSpecificOSAllowed_1 => OperatingSystems_jm_setUnknownSpecificOSAllowed_1
  end type

  class(OperatingSystems), pointer, save :: OperatingSystems_jcell_instance => null()
  logical, save :: OperatingSystems_jset_instance = .false.

contains

  function OperatingSystems_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OperatingSystems), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OperatingSystems)
      jresult => object
    end select
  end function

  function OperatingSystems_jstatic_instance() result(jresult)
    class(OperatingSystems), pointer :: jresult
    if (.not. OperatingSystems_jset_instance) then
      OperatingSystems_jset_instance = .true.
      OperatingSystems_jcell_instance => OperatingSystems_jnew_0()
    end if
    jresult => OperatingSystems_jcell_instance
  end function

  recursive function OperatingSystems_jnew_0() result(this)
    class(OperatingSystems), pointer :: this
    allocate(this)
    this%jclass = 'OperatingSystems'
    this%f_LINUX = ''
    this%f_WINDOWS = ''
    this%f_SOLARIS = ''
    this%f_WINDOWS2000 = ''
    this%f_WINDOWS_NT = ''
    this%f_WINDOWS_10 = ''
    this%f_WINDOWS_11 = ''
    this%f_WINDOWS_VISTA = ''
    this%f_WINDOWS_XP = ''
    this%f_ANDROID = ''
    this%f_HARMONY = ''
    this%f_LINUX = 'Linux'
    this%f_WINDOWS = 'Windows'
    this%f_SOLARIS = 'Solaris'
    this%f_WINDOWS2000 = 'Windows 2000'
    this%f_WINDOWS_NT = 'Windows NT'
    this%f_WINDOWS_10 = 'Windows 10'
    this%f_WINDOWS_11 = 'Windows 11'
    this%f_WINDOWS_VISTA = 'Windows Vista'
    this%f_WINDOWS_XP = 'Windows XP'
    this%f_ANDROID = this%f_LINUX
    this%f_HARMONY = 'HarmonyOS'
    this%f_unknownSpecificOSAllowed = .true.
        continue
  end function

  recursive function OperatingSystems_jm_isUnknownSpecificOSAllowed_0(this) result(jresult)
    class(OperatingSystems), target :: this
    logical :: jresult
        jresult = this%f_unknownSpecificOSAllowed
        return
  end function

  recursive subroutine OperatingSystems_jm_setUnknownSpecificOSAllowed_1(this, j_aUnknownSpecificOSAllowed)
    class(OperatingSystems), target :: this
    logical, value :: j_aUnknownSpecificOSAllowed
        this%f_unknownSpecificOSAllowed = j_aUnknownSpecificOSAllowed
  end subroutine

  recursive function OperatingSystems_jm_getInstance_0() result(jresult)
    class(OperatingSystems), pointer :: jresult
        jresult => OperatingSystems_jstatic_instance()
        return
  end function
end module OperatingSystems_m

