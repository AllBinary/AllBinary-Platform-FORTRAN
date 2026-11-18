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
module ClientInformation_m
  use JR_m
  use TsUtil_m
  use StringMaker_m
  use StringUtil_m
  use HardwareInterface_m
  use SystemHardwareFactory_m
  use GenericOperatingSystem_m
  use NoOperatingSystem_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  use StdUtil_m
  use ABHashtable_m
  use AbeClientInformationInterface_m
  use AbeClientInformationData_m
  implicit none

  type, extends(AbeClientInformationInterface) :: ClientInformation
    class(GenericOperatingSystem), pointer :: f_operatingSystemInterface => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    character(len=:), allocatable :: f_name
    character(len=:), allocatable :: f_shortName
    character(len=:), allocatable :: f_version
    character(len=:), allocatable :: f_specialName
    logical :: f_hardSale = .false.
    character(len=:), allocatable :: f_licenseId
    class(BasicArrayList), pointer :: f_licenseServers => null()
  contains
    procedure :: jm_init_0 => ClientInformation_jm_init_0
    procedure :: jm_getOperatingSystemInterface_0 => ClientInformation_jm_getOperatingSystemInterface_0
    procedure :: jm_getName_0 => ClientInformation_jm_getName_0
    procedure :: jm_getSpecialName_0 => ClientInformation_jm_getSpecialName_0
    procedure :: jm_getVersion_0 => ClientInformation_jm_getVersion_0
    procedure :: jm_getLicenseId_0 => ClientInformation_jm_getLicenseId_0
    procedure :: jm_getLicenseServers_0 => ClientInformation_jm_getLicenseServers_0
    procedure :: jm_getLicenseServer_1 => ClientInformation_jm_getLicenseServer_1
    procedure :: jm_getNumberOfLicenseServers_0 => ClientInformation_jm_getNumberOfLicenseServers_0
    procedure :: jm_toHashtable_0 => ClientInformation_jm_toHashtable_0
    procedure :: jm_isSameId_1 => ClientInformation_jm_isSameId_1
    procedure :: jm_isLargerOrDifferentServerList_1 => ClientInformation_jm_isLargerOrDifferentServerList_1
    procedure :: jm_setHardSale_1 => ClientInformation_jm_setHardSale_1
    procedure :: jm_isHardSale_0 => ClientInformation_jm_isHardSale_0
    procedure :: jm_setOperatingSystemInterface_1 => ClientInformation_jm_setOperatingSystemInterface_1
    procedure :: jm_setLicenseId_1 => ClientInformation_jm_setLicenseId_1
    procedure :: jm_setLicenseServers_1 => ClientInformation_jm_setLicenseServers_1
    procedure :: jm_toShortString_0 => ClientInformation_jm_toShortString_0
  end type


contains

  function ClientInformation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ClientInformation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ClientInformation)
      jresult => object
    end select
  end function

  recursive function ClientInformation_jnew_4(j_name, j_version, j_specialName, j_shortName) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_version
    character(len=*), intent(in) :: j_specialName
    character(len=*), intent(in) :: j_shortName
    class(ClientInformation), pointer :: this
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(CommonSeps), pointer :: jtemp7
    class(StringUtil), pointer :: jtemp1
    class(BasicArrayListUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ClientInformation'
    this%f_name = ''
    this%f_shortName = ''
    this%f_version = ''
    this%f_specialName = ''
    this%f_licenseId = ''
    this%f_operatingSystemInterface => NoOperatingSystem_jstatic_NO_OPERATING_SYSTEM()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    
    
    
    
    this%f_hardSale = .true.
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_licenseId = jtemp1%f_EMPTY_STRING
    jtemp2 => BasicArrayListUtil_jm_getInstance_0()
    this%f_licenseServers => jtemp2%jm_getImmutableInstance_0()
        this%f_name = j_name
        this%f_version = j_version
        this%f_specialName = j_specialName
        jtemp7 => CommonSeps_jm_getInstance_0()
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(j_shortName)
        jtemp4 => jtemp5%jm_append_1(jtemp7%f_UNDERSCORE)
        jtemp3 => jtemp4%jm_append_1(j_version)
        this%f_shortName = jtemp3%jm_toString_0()
        call this%jm_init_0()
  end function

  recursive subroutine ClientInformation_jm_init_0(this)
    class(ClientInformation), target :: this
    continue
  end subroutine

  recursive function ClientInformation_jm_getOperatingSystemInterface_0(this) result(jresult)
    class(ClientInformation), target :: this
    class(GenericOperatingSystem), pointer :: jresult
        jresult => this%f_operatingSystemInterface
        return
  end function

  recursive function ClientInformation_jm_getName_0(this) result(jresult)
    class(ClientInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function ClientInformation_jm_getSpecialName_0(this) result(jresult)
    class(ClientInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_specialName
        return
  end function

  recursive function ClientInformation_jm_getVersion_0(this) result(jresult)
    class(ClientInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_version
        return
  end function

  recursive function ClientInformation_jm_getLicenseId_0(this) result(jresult)
    class(ClientInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_licenseId
        return
  end function

  recursive function ClientInformation_jm_getLicenseServers_0(this) result(jresult)
    class(ClientInformation), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_licenseServers
        return
  end function

  recursive function ClientInformation_jm_getLicenseServer_1(this, j_index) result(jresult)
    class(ClientInformation), target :: this
    integer(4), value :: j_index
    character(len=:), allocatable :: jresult
        jresult = this%f_licenseServers%f_objectArray((j_index) + 1)%v
        return
  end function

  recursive function ClientInformation_jm_getNumberOfLicenseServers_0(this) result(jresult)
    class(ClientInformation), target :: this
    integer(4) :: jresult
        jresult = this%f_licenseServers%jm_size_0()
        return
  end function

  recursive function ClientInformation_jm_toHashtable_0(this) result(jresult)
    class(ClientInformation), target :: this
    class(ABHashtable), pointer :: jresult
    class(AbeClientInformationData), pointer :: j_abeClientInformationData
    class(GenericOperatingSystem), pointer :: j_genericOperatingSystem
    class(ABHashtable), pointer :: j_clientInfoHashtable
    class(HardwareInterface), pointer :: j_hardwareInterface
    character(len=:), allocatable :: j_hardwareString
    class(StdUtil), pointer :: jtemp8
    class(SystemHardwareFactory), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_abeClientInformationData => AbeClientInformationData_jm_getInstance_0()
        j_genericOperatingSystem => this%jm_getOperatingSystemInterface_0()
        jtemp8 => StdUtil_jm_getInstance_0()
        j_clientInfoHashtable => jtemp8%jm_createHashtable_0()
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_NAME_u4, this%f_name)
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_VERSION_u7, this%f_version)
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_SPECIALNAME_u11, this%f_specialName)
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_LICENSEID_u9, this%jm_getLicenseId_0())
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_OSNAME, j_genericOperatingSystem%jm_getName_0())
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_OSARCH, j_genericOperatingSystem%jm_getArch_0())
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_OSVERSION, j_genericOperatingSystem%jm_getVersion_0())
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_OS, j_genericOperatingSystem%jm_toString_0())
        jtemp9 => SystemHardwareFactory_jm_getInstance_0()
        j_hardwareInterface => jtemp9%jm_getInstance_1(j_genericOperatingSystem)
        j_hardwareString = j_hardwareInterface%jm_toString_0()
        jdiscardRef => j_clientInfoHashtable%jm_put_2(j_abeClientInformationData%f_HARDWARE, j_hardwareString)
        jresult => j_clientInfoHashtable
        return
  end function

  recursive function ClientInformation_jm_isSameId_1(this, j_alicenseId) result(jresult)
    class(ClientInformation), target :: this
    character(len=*), intent(in) :: j_alicenseId
    logical :: jresult
        if ((this%f_tsUtil%jm_compareTo_2(this%jm_getLicenseId_0(), j_alicenseId) == 0)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function ClientInformation_jm_isLargerOrDifferentServerList_1(this, j_vector) result(jresult)
    class(ClientInformation), target :: this
    class(BasicArrayList), target, optional :: j_vector
    logical :: jresult
    integer(4) :: j_size
    integer(4) :: j_currentSize
    character(len=:), allocatable :: j_newServerName
    character(len=:), allocatable :: j_nextOldServerName
    integer(4) :: j_index2
    integer(4) :: j_index
        j_size = (j_vector%jm_size_0() - 1)
        j_currentSize = (this%f_licenseServers%jm_size_0() - 1)
        if ((j_size > j_currentSize)) then
            jresult = .true.
            return
        end if
        j_index = j_size
        do while ((j_index >= 0))
            j_newServerName = j_vector%f_objectArray((j_index) + 1)%v
            j_index2 = j_currentSize
            do while ((j_index2 >= 0))
                j_nextOldServerName = this%f_licenseServers%f_objectArray((j_index) + 1)%v
                if ((this%f_tsUtil%jm_compareTo_2(j_newServerName, j_nextOldServerName) /= 0)) then
                    jresult = .true.
                    return
                end if
                j_index2 = j_index2 - 1
            end do
            j_index = j_index - 1
        end do
        jresult = .false.
        return
  end function

  recursive subroutine ClientInformation_jm_setHardSale_1(this, j_hardSale)
    class(ClientInformation), target :: this
    logical, value :: j_hardSale
        this%f_hardSale = j_hardSale
  end subroutine

  recursive function ClientInformation_jm_isHardSale_0(this) result(jresult)
    class(ClientInformation), target :: this
    logical :: jresult
        jresult = this%f_hardSale
        return
  end function

  recursive subroutine ClientInformation_jm_setOperatingSystemInterface_1(this, j_operatingSystemInterface)
    class(ClientInformation), target :: this
    class(GenericOperatingSystem), target, optional :: j_operatingSystemInterface
        this%f_operatingSystemInterface => j_operatingSystemInterface
  end subroutine

  recursive subroutine ClientInformation_jm_setLicenseId_1(this, j_licenseId)
    class(ClientInformation), target :: this
    character(len=*), intent(in) :: j_licenseId
        this%f_licenseId = j_licenseId
  end subroutine

  recursive subroutine ClientInformation_jm_setLicenseServers_1(this, j_licenseServers)
    class(ClientInformation), target :: this
    class(BasicArrayList), target, optional :: j_licenseServers
        this%f_licenseServers => j_licenseServers
  end subroutine

  recursive function ClientInformation_jm_toShortString_0(this) result(jresult)
    class(ClientInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_shortName
        return
  end function
end module ClientInformation_m

