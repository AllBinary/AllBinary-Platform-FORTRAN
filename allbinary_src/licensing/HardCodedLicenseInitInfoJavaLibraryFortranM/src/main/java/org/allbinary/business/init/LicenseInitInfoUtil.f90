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
! package org.allbinary.business.init
module LicenseInitInfoUtil_m
  use JR_m
  use LicenseInitInfo_m
  implicit none

  type, extends(JObject) :: LicenseInitInfoUtil
    character(len=:), allocatable :: f_INITFILENAME
    character(len=:), allocatable :: f_ABOUT
    character(len=:), allocatable :: f_PRIVACY_POLICY
    character(len=:), allocatable :: f_OFFICIAL_ALLBINARY_SERVICES_SERVER
  contains
    procedure :: jm_setFilePath_1 => LicenseInitInfoUtil_jm_setFilePath_1
    procedure :: jm_write_1 => LicenseInitInfoUtil_jm_write_1
    procedure :: jm_read_0 => LicenseInitInfoUtil_jm_read_0
    procedure :: jm_readAgain_1 => LicenseInitInfoUtil_jm_readAgain_1
  end type

  class(LicenseInitInfoUtil), pointer, save :: LicenseInitInfoUtil_jcell_instance => null()
  logical, save :: LicenseInitInfoUtil_jset_instance = .false.

contains

  function LicenseInitInfoUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseInitInfoUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseInitInfoUtil)
      jresult => object
    end select
  end function

  function LicenseInitInfoUtil_jstatic_instance() result(jresult)
    class(LicenseInitInfoUtil), pointer :: jresult
    if (.not. LicenseInitInfoUtil_jset_instance) then
      LicenseInitInfoUtil_jset_instance = .true.
      LicenseInitInfoUtil_jcell_instance => LicenseInitInfoUtil_jnew_0()
    end if
    jresult => LicenseInitInfoUtil_jcell_instance
  end function

  subroutine LicenseInitInfoUtil_jsetstatic_instance(jvalue)
    class(LicenseInitInfoUtil), target, optional :: jvalue
    LicenseInitInfoUtil_jset_instance = .true.
    if (present(jvalue)) then
      LicenseInitInfoUtil_jcell_instance => jvalue
    else
      LicenseInitInfoUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function LicenseInitInfoUtil_jnew_0() result(this)
    class(LicenseInitInfoUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseInitInfoUtil'
    this%f_INITFILENAME = ''
    this%f_ABOUT = ''
    this%f_PRIVACY_POLICY = ''
    this%f_OFFICIAL_ALLBINARY_SERVICES_SERVER = ''
    this%f_INITFILENAME = 'licenseinitdata.dat'
    this%f_ABOUT = 'about'
    this%f_PRIVACY_POLICY = 'privacy_policy'
    this%f_OFFICIAL_ALLBINARY_SERVICES_SERVER = 'https://services.allbinary.com/LicServ/serverssl.php'
        continue
  end function

  recursive function LicenseInitInfoUtil_jm_getInstance_0() result(jresult)
    class(LicenseInitInfoUtil), pointer :: jresult
        jresult => LicenseInitInfoUtil_jstatic_instance()
        return
  end function

  recursive subroutine LicenseInitInfoUtil_jm_setFilePath_1(this, j_filePath)
    class(LicenseInitInfoUtil), target :: this
    character(len=*), intent(in) :: j_filePath
    continue
  end subroutine

  recursive subroutine LicenseInitInfoUtil_jm_write_1(this, j_initData)
    class(LicenseInitInfoUtil), target :: this
    class(LicenseInitInfo), target, optional :: j_initData
    continue
  end subroutine

  recursive function LicenseInitInfoUtil_jm_read_0(this) result(jresult)
    class(LicenseInitInfoUtil), target :: this
    class(LicenseInitInfo), pointer :: jresult
        jresult => this%jm_readAgain_1(0)
        return
  end function

  recursive function LicenseInitInfoUtil_jm_readAgain_1(this, j_initializeCounter) result(jresult)
    class(LicenseInitInfoUtil), target :: this
    integer(4), value :: j_initializeCounter
    class(LicenseInitInfo), pointer :: jresult
    class(LicenseInitInfo), pointer :: j_licenseInitInfo
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_licenseInitInfo => LicenseInitInfo_jnew_0()
        call j_licenseInitInfo%jm_clearServers_0()
        call j_licenseInitInfo%jm_addServer_1(this%f_OFFICIAL_ALLBINARY_SERVICES_SERVER)
        jresult => j_licenseInitInfo
        return
  end function
end module LicenseInitInfoUtil_m

