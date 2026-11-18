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
module AbeClientInformationData_m
  use JR_m
  implicit none

  type, extends(JObject) :: AbeClientInformationData
    character(len=:), allocatable :: f_KEY
    character(len=:), allocatable :: f_NAME
    character(len=:), allocatable :: f_VERSION
    character(len=:), allocatable :: f_SPECIALNAME
    character(len=:), allocatable :: f_LICENSEID
    character(len=:), allocatable :: f_LICENSE_TYPE
    character(len=:), allocatable :: f_PREVIOUSLICENSEID
    character(len=:), allocatable :: f_OSNAME
    character(len=:), allocatable :: f_OSARCH
    character(len=:), allocatable :: f_OSVERSION
    character(len=:), allocatable :: f_OS
    character(len=:), allocatable :: f_HARDWARE
    character(len=:), allocatable :: f_LICENSESERVERS
    character(len=:), allocatable :: f_NEWLICENSE
    character(len=:), allocatable :: f_ISNEW
    character(len=:), allocatable :: f_SPECIAL
  end type

  class(AbeClientInformationData), pointer, save :: AbeClientInformationData_jcell_instance => null()
  logical, save :: AbeClientInformationData_jset_instance = .false.

contains

  function AbeClientInformationData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbeClientInformationData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbeClientInformationData)
      jresult => object
    end select
  end function

  function AbeClientInformationData_jstatic_instance() result(jresult)
    class(AbeClientInformationData), pointer :: jresult
    if (.not. AbeClientInformationData_jset_instance) then
      AbeClientInformationData_jset_instance = .true.
      AbeClientInformationData_jcell_instance => AbeClientInformationData_jnew_0()
    end if
    jresult => AbeClientInformationData_jcell_instance
  end function

  subroutine AbeClientInformationData_jsetstatic_instance(jvalue)
    class(AbeClientInformationData), target, optional :: jvalue
    AbeClientInformationData_jset_instance = .true.
    if (present(jvalue)) then
      AbeClientInformationData_jcell_instance => jvalue
    else
      AbeClientInformationData_jcell_instance => null()
    end if
  end subroutine

  recursive function AbeClientInformationData_jnew_0() result(this)
    class(AbeClientInformationData), pointer :: this
    allocate(this)
    this%jclass = 'AbeClientInformationData'
    this%f_KEY = ''
    this%f_NAME = ''
    this%f_VERSION = ''
    this%f_SPECIALNAME = ''
    this%f_LICENSEID = ''
    this%f_LICENSE_TYPE = ''
    this%f_PREVIOUSLICENSEID = ''
    this%f_OSNAME = ''
    this%f_OSARCH = ''
    this%f_OSVERSION = ''
    this%f_OS = ''
    this%f_HARDWARE = ''
    this%f_LICENSESERVERS = ''
    this%f_NEWLICENSE = ''
    this%f_ISNEW = ''
    this%f_SPECIAL = ''
    this%f_KEY = 'KEY'
    this%f_NAME = 'NAME'
    this%f_VERSION = 'VERSION'
    this%f_SPECIALNAME = 'SPECIALNAME'
    this%f_LICENSEID = 'LICENSEID'
    this%f_LICENSE_TYPE = 'LICENSETYPE'
    this%f_PREVIOUSLICENSEID = 'PREVIOUSLICENSEID'
    this%f_OSNAME = 'OSNAME'
    this%f_OSARCH = 'OSARCH'
    this%f_OSVERSION = 'OSVERSION'
    this%f_OS = 'OS'
    this%f_HARDWARE = 'HARDWARE'
    this%f_LICENSESERVERS = 'LICENSESERVERS'
    this%f_NEWLICENSE = 'NEWLICENSE'
    this%f_ISNEW = 'ISNEW'
    this%f_SPECIAL = 'SPECIAL'
        continue
  end function

  recursive function AbeClientInformationData_jm_getInstance_0() result(jresult)
    class(AbeClientInformationData), pointer :: jresult
        jresult => AbeClientInformationData_jstatic_instance()
        return
  end function
end module AbeClientInformationData_m

