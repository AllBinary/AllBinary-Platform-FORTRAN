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
! package org.allbinary.logic.system
module SoftwareInformation_m
  use JR_m
  use KotlinUtil_m
  use StringMaker_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: SoftwareInformation
    character(len=:), allocatable :: f_name
    character(len=:), allocatable :: f_shortName
    character(len=:), allocatable :: f_version
  contains
    procedure :: jm_getName_0 => SoftwareInformation_jm_getName_0
    procedure :: jm_getVersion_0 => SoftwareInformation_jm_getVersion_0
    procedure :: jm_toShortString_0 => SoftwareInformation_jm_toShortString_0
    procedure :: jm_toString_0 => SoftwareInformation_jm_toString_0
  end type


contains

  function SoftwareInformation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SoftwareInformation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SoftwareInformation)
      jresult => object
    end select
  end function

  recursive function SoftwareInformation_jnew_3(j_name, j_version, j_shortName) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_version
    character(len=*), intent(in) :: j_shortName
    class(SoftwareInformation), pointer :: this
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    allocate(this)
    this%jclass = 'SoftwareInformation'
    this%f_name = ''
    this%f_shortName = ''
    this%f_version = ''
    
    
    
        this%f_name = j_name
        this%f_version = j_version
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(j_shortName)
        jtemp1 => jtemp2%jm_append_1(KotlinUtil_jm_getShortName_0())
        this%f_shortName = jtemp1%jm_toString_0()
  end function

  recursive function SoftwareInformation_jm_getName_0(this) result(jresult)
    class(SoftwareInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function SoftwareInformation_jm_getVersion_0(this) result(jresult)
    class(SoftwareInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_version
        return
  end function

  recursive function SoftwareInformation_jm_toShortString_0(this) result(jresult)
    class(SoftwareInformation), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_shortName
        return
  end function

  recursive function SoftwareInformation_jm_toString_0(this) result(jresult)
    class(SoftwareInformation), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_NAME
    character(len=:), allocatable :: j_VERSION
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_NAME = 'Name: '
        j_VERSION = 'Version: '
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_NAME)
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getName_0())
        jtemp4 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_VERSION)
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getVersion_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module SoftwareInformation_m

