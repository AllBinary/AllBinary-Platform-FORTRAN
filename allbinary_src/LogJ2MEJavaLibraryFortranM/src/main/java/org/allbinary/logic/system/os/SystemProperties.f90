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
module SystemProperties_m
  use JR_m
  use System_m
  implicit none

  type, extends(JObject) :: SystemProperties
    character(len=:), allocatable :: f_OS_NAME
    character(len=:), allocatable :: f_OS_ARCH
    character(len=:), allocatable :: f_OS_VERSION
    character(len=:), allocatable :: f_USER_HOME
  contains
    procedure :: jm_getName_0 => SystemProperties_jm_getName_0
    procedure :: jm_getArch_0 => SystemProperties_jm_getArch_0
    procedure :: jm_getVersion_0 => SystemProperties_jm_getVersion_0
    procedure :: jm_getUserHomePath_0 => SystemProperties_jm_getUserHomePath_0
  end type

  class(SystemProperties), pointer, save :: SystemProperties_jcell_instance => null()
  logical, save :: SystemProperties_jset_instance = .false.

contains

  function SystemProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SystemProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SystemProperties)
      jresult => object
    end select
  end function

  function SystemProperties_jstatic_instance() result(jresult)
    class(SystemProperties), pointer :: jresult
    if (.not. SystemProperties_jset_instance) then
      SystemProperties_jset_instance = .true.
      SystemProperties_jcell_instance => SystemProperties_jnew_0()
    end if
    jresult => SystemProperties_jcell_instance
  end function

  subroutine SystemProperties_jsetstatic_instance(jvalue)
    class(SystemProperties), target, optional :: jvalue
    SystemProperties_jset_instance = .true.
    if (present(jvalue)) then
      SystemProperties_jcell_instance => jvalue
    else
      SystemProperties_jcell_instance => null()
    end if
  end subroutine

  recursive function SystemProperties_jnew_0() result(this)
    class(SystemProperties), pointer :: this
    allocate(this)
    this%jclass = 'SystemProperties'
    this%f_OS_NAME = ''
    this%f_OS_ARCH = ''
    this%f_OS_VERSION = ''
    this%f_USER_HOME = ''
    this%f_OS_NAME = 'os.name'
    this%f_OS_ARCH = 'os.arch'
    this%f_OS_VERSION = 'os.version'
    this%f_USER_HOME = 'user.home'
        continue
  end function

  recursive function SystemProperties_jm_getInstance_0() result(jresult)
    class(SystemProperties), pointer :: jresult
        jresult => SystemProperties_jstatic_instance()
        return
  end function

  recursive function SystemProperties_jm_getName_0(this) result(jresult)
    class(SystemProperties), target :: this
    character(len=:), allocatable :: jresult
        jresult = System_jm_getProperty_1(this%f_OS_NAME)
        return
  end function

  recursive function SystemProperties_jm_getArch_0(this) result(jresult)
    class(SystemProperties), target :: this
    character(len=:), allocatable :: jresult
        jresult = System_jm_getProperty_1(this%f_OS_ARCH)
        return
  end function

  recursive function SystemProperties_jm_getVersion_0(this) result(jresult)
    class(SystemProperties), target :: this
    character(len=:), allocatable :: jresult
        jresult = System_jm_getProperty_1(this%f_OS_VERSION)
        return
  end function

  recursive function SystemProperties_jm_getUserHomePath_0(this) result(jresult)
    class(SystemProperties), target :: this
    character(len=:), allocatable :: jresult
        jresult = System_jm_getProperty_1(this%f_USER_HOME)
        return
  end function
end module SystemProperties_m

