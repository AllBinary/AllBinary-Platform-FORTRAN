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
module LicenseInitInfo_m
  use JR_m
  use DebugFactory_m
  use NoDebug_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: LicenseInitInfo
    character(len=:), allocatable :: f_id
    class(BasicArrayList), pointer :: f_serverVector => null()
  contains
    procedure :: jm_getLicenseId_0 => LicenseInitInfo_jm_getLicenseId_0
    procedure :: jm_getServer_1 => LicenseInitInfo_jm_getServer_1
    procedure :: jm_getNumberOfServers_0 => LicenseInitInfo_jm_getNumberOfServers_0
    procedure :: jm_setLicenseId_1 => LicenseInitInfo_jm_setLicenseId_1
    procedure :: jm_clearServers_0 => LicenseInitInfo_jm_clearServers_0
    procedure :: jm_setServer_2 => LicenseInitInfo_jm_setServer_2
    procedure :: jm_addServer_1 => LicenseInitInfo_jm_addServer_1
    procedure :: jm_getServerList_0 => LicenseInitInfo_jm_getServerList_0
    procedure :: jm_setServerList_1 => LicenseInitInfo_jm_setServerList_1
  end type


contains

  function LicenseInitInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseInitInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseInitInfo)
      jresult => object
    end select
  end function

  recursive function LicenseInitInfo_jnew_0() result(this)
    class(LicenseInitInfo), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'LicenseInitInfo'
    this%f_id = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_id = jtemp1%f_EMPTY_STRING
    this%f_serverVector => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function LicenseInitInfo_jm_getLicenseId_0(this) result(jresult)
    class(LicenseInitInfo), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_id
        return
  end function

  recursive function LicenseInitInfo_jm_getServer_1(this, j_index) result(jresult)
    class(LicenseInitInfo), target :: this
    integer(4), value :: j_index
    character(len=:), allocatable :: jresult
        jresult = this%f_serverVector%f_objectArray((j_index) + 1)%v
        return
  end function

  recursive function LicenseInitInfo_jm_getNumberOfServers_0(this) result(jresult)
    class(LicenseInitInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_serverVector%jm_size_0()
        return
  end function

  recursive subroutine LicenseInitInfo_jm_setLicenseId_1(this, j_value)
    class(LicenseInitInfo), target :: this
    character(len=*), intent(in) :: j_value
        this%f_id = j_value
  end subroutine

  recursive subroutine LicenseInitInfo_jm_clearServers_0(this)
    class(LicenseInitInfo), target :: this
        this%f_serverVector => BasicArrayListD_jnew_0()
  end subroutine

  recursive subroutine LicenseInitInfo_jm_setServer_2(this, j_value, j_index)
    class(LicenseInitInfo), target :: this
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_serverVector%jm_addAt_2(j_index, JR_boxString(j_value))
  end subroutine

  recursive subroutine LicenseInitInfo_jm_addServer_1(this, j_value)
    class(LicenseInitInfo), target :: this
    character(len=*), intent(in) :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_serverVector%jm_add_1(JR_boxString(j_value))
  end subroutine

  recursive function LicenseInitInfo_jm_getServerList_0(this) result(jresult)
    class(LicenseInitInfo), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_serverVector
        return
  end function

  recursive subroutine LicenseInitInfo_jm_setServerList_1(this, j_servers)
    class(LicenseInitInfo), target :: this
    class(BasicArrayList), target, optional :: j_servers
        if ((DebugFactory_jm_getInstance_0() == NoDebug_jm_getInstance_0())) then
            this%f_serverVector => j_servers
        end if
  end subroutine
end module LicenseInitInfo_m

