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
module AbeClientInformationInterface_m
  use JR_m
  use GenericOperatingSystem_m
  use ABHashtable_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: AbeClientInformationInterface
  contains
    procedure :: jm_init_0 => AbeClientInformationInterface_jm_init_0
    procedure :: jm_getOperatingSystemInterface_0 => AbeClientInformationInterface_jm_getOperatingSystemInterface_0
    procedure :: jm_getName_0 => AbeClientInformationInterface_jm_getName_0
    procedure :: jm_getSpecialName_0 => AbeClientInformationInterface_jm_getSpecialName_0
    procedure :: jm_getVersion_0 => AbeClientInformationInterface_jm_getVersion_0
    procedure :: jm_getLicenseId_0 => AbeClientInformationInterface_jm_getLicenseId_0
    procedure :: jm_getLicenseServers_0 => AbeClientInformationInterface_jm_getLicenseServers_0
    procedure :: jm_getLicenseServer_1 => AbeClientInformationInterface_jm_getLicenseServer_1
    procedure :: jm_getNumberOfLicenseServers_0 => AbeClientInformationInterface_jm_getNumberOfLicenseServers_0
    procedure :: jm_toHashtable_0 => AbeClientInformationInterface_jm_toHashtable_0
    procedure :: jm_isSameId_1 => AbeClientInformationInterface_jm_isSameId_1
    procedure :: jm_isLargerOrDifferentServerList_1 => AbeClientInformationInterface_jm_isLargerOrDifferentServerList_1
    procedure :: jm_isHardSale_0 => AbeClientInformationInterface_jm_isHardSale_0
    procedure :: jm_toShortString_0 => AbeClientInformationInterface_jm_toShortString_0
  end type


contains

  function AbeClientInformationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbeClientInformationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbeClientInformationInterface)
      jresult => object
    end select
  end function

  function AbeClientInformationInterface_jnew_0() result(this)
    class(AbeClientInformationInterface), pointer :: this
    allocate(this)
    this%jclass = 'AbeClientInformationInterface'
  end function

  recursive subroutine AbeClientInformationInterface_jm_init_0(this)
    class(AbeClientInformationInterface), target :: this
    error stop 'AbstractMethodError: AbeClientInformationInterface.init'
  end subroutine

  recursive function AbeClientInformationInterface_jm_getOperatingSystemInterface_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    class(GenericOperatingSystem), pointer :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getOperatingSystemInterface'
  end function

  recursive function AbeClientInformationInterface_jm_getName_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getName'
  end function

  recursive function AbeClientInformationInterface_jm_getSpecialName_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getSpecialName'
  end function

  recursive function AbeClientInformationInterface_jm_getVersion_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getVersion'
  end function

  recursive function AbeClientInformationInterface_jm_getLicenseId_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getLicenseId'
  end function

  recursive function AbeClientInformationInterface_jm_getLicenseServers_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    class(BasicArrayList), pointer :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getLicenseServers'
  end function

  recursive function AbeClientInformationInterface_jm_getLicenseServer_1(this, j_index) result(jresult)
    class(AbeClientInformationInterface), target :: this
    integer(4), value :: j_index
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getLicenseServer'
  end function

  recursive function AbeClientInformationInterface_jm_getNumberOfLicenseServers_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.getNumberOfLicenseServers'
  end function

  recursive function AbeClientInformationInterface_jm_toHashtable_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.toHashtable'
  end function

  recursive function AbeClientInformationInterface_jm_isSameId_1(this, j_alicenseId) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=*), intent(in) :: j_alicenseId
    logical :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.isSameId'
  end function

  recursive function AbeClientInformationInterface_jm_isLargerOrDifferentServerList_1(this, j_vector) result(jresult)
    class(AbeClientInformationInterface), target :: this
    class(BasicArrayList), target, optional :: j_vector
    logical :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.isLargerOrDifferentServerList'
  end function

  recursive function AbeClientInformationInterface_jm_isHardSale_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.isHardSale'
  end function

  recursive function AbeClientInformationInterface_jm_toShortString_0(this) result(jresult)
    class(AbeClientInformationInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbeClientInformationInterface.toShortString'
  end function
end module AbeClientInformationInterface_m

