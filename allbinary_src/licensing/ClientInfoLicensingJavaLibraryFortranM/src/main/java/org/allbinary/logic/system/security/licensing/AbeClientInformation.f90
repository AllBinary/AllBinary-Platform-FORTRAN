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
module AbeClientInformation_m
  use JR_m
  use LicenseInitInfo_m
  use LicenseInitInfoUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringValidationUtil_m
  use OperatingSystemFactory_m
  use CommonStrings_m
  use ClientInformation_m
  implicit none

  type, extends(ClientInformation) :: AbeClientInformation
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_0 => AbeClientInformation_jm_init_0
  end type


contains

  function AbeClientInformation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbeClientInformation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbeClientInformation)
      jresult => object
    end select
  end function

  recursive function AbeClientInformation_jnew_4(j_name, j_version, j_specialName, j_shortName) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_version
    character(len=*), intent(in) :: j_specialName
    character(len=*), intent(in) :: j_shortName
    class(AbeClientInformation), pointer :: this
    allocate(this)
    this%jclass = 'AbeClientInformation'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine AbeClientInformation_jm_init_0(this)
    class(AbeClientInformation), target :: this
    class(LicenseInitInfo), pointer :: j_licenseInitInfo
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    character(len=:), allocatable :: j_NONE
    class(CommonStrings), pointer :: j_commonStrings
    class(LogUtil), pointer :: j_logUtil
    class(OperatingSystemFactory), pointer :: jtemp1
    class(LicenseInitInfoUtil), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp1 => OperatingSystemFactory_jm_getInstance_0()
            call this%jm_setOperatingSystemInterface_1(jtemp1%jm_getOperatingSystemInstance_0())
            jtemp2 => LicenseInitInfoUtil_jm_getInstance_0()
            j_licenseInitInfo => jtemp2%jm_read_0()
            call this%jm_setLicenseId_1(j_licenseInitInfo%jm_getLicenseId_0())
            call this%jm_setLicenseServers_1(j_licenseInitInfo%jm_getServerList_0())
            j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
            if (j_stringValidationUtil%jm_isEmpty_1(this%jm_getLicenseId_0())) then
                j_NONE = 'No License Id'
                call this%jm_setLicenseId_1(j_NONE)
            end if
            j_commonStrings => CommonStrings_jm_getInstance_0()
            jtemp5 => StringMaker_jnew_0()
            jtemp4 => jtemp5%jm_append_1('Special Name: ')
            jtemp3 => jtemp4%jm_append_1(this%jm_getSpecialName_0())
            call PreLogUtil_jm_put_3(jtemp3%jm_toString_0(), this, j_commonStrings%f_CONSTRUCTOR)
  end subroutine
end module AbeClientInformation_m

function AbeClientInformation_jnew_4_jext(p1, p2, p3, p4) result(this)
  use AbeClientInformation_m, only: JObject, AbeClientInformation_jnew_4
  implicit none
      character(len=*), intent(in) :: p1
      character(len=*), intent(in) :: p2
      character(len=*), intent(in) :: p3
      character(len=*), intent(in) :: p4
  class(JObject), pointer :: this
  this => AbeClientInformation_jnew_4(p1, p2, p3, p4)
end function

