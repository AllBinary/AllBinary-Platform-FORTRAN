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
module GenericOperatingSystem_m
  use JR_m
  use CharacterSet_m
  use StringMaker_m
  use StringUtil_m
  use StringValidationUtil_m
  use CommonSeps_m
  use OperatingSystemInterface_m
  use SystemProperties_m
  implicit none

  type, extends(OperatingSystemInterface) :: GenericOperatingSystem
    character(len=:), allocatable :: f_osName
    character(len=:), allocatable :: f_osArch
    character(len=:), allocatable :: f_osVersion
    class(CharacterSet), pointer :: f_characterSet => null()
    logical :: f_scalable = .false.
  contains
    procedure :: jm_getName_0 => GenericOperatingSystem_jm_getName_0
    procedure :: jm_getVersion_0 => GenericOperatingSystem_jm_getVersion_0
    procedure :: jm_getArch_0 => GenericOperatingSystem_jm_getArch_0
    procedure :: jm_getCharacterSet_0 => GenericOperatingSystem_jm_getCharacterSet_0
    procedure :: jm_isOverScan_0 => GenericOperatingSystem_jm_isOverScan_0
    procedure :: jm_getOverScanXPercent_0 => GenericOperatingSystem_jm_getOverScanXPercent_0
    procedure :: jm_getOverScanYPercent_0 => GenericOperatingSystem_jm_getOverScanYPercent_0
    procedure :: jm_isScalable_0 => GenericOperatingSystem_jm_isScalable_0
    procedure :: jm_isAutoHide_0 => GenericOperatingSystem_jm_isAutoHide_0
    procedure :: jm_toString_0 => GenericOperatingSystem_jm_toString_0
  end type


contains

  function GenericOperatingSystem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GenericOperatingSystem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GenericOperatingSystem)
      jresult => object
    end select
  end function

  recursive function GenericOperatingSystem_jnew_0() result(this)
    class(GenericOperatingSystem), pointer :: this
    class(SystemProperties), pointer :: j_systemProperties
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    character(len=:), allocatable :: j_EMPTY_STRING
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GenericOperatingSystem'
    this%f_osName = ''
    this%f_osArch = ''
    this%f_osVersion = ''
    
    
    
    this%f_characterSet => CharacterSet_jnew_0()
    this%f_scalable = .false.
        j_systemProperties => SystemProperties_jm_getInstance_0()
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        j_EMPTY_STRING = jtemp1%f_EMPTY_STRING
        if (j_stringValidationUtil%jm_isEmpty_1(j_systemProperties%jm_getName_0())) then
            this%f_osName = j_EMPTY_STRING
        else
            this%f_osName = j_systemProperties%jm_getName_0()
        end if
        if (j_stringValidationUtil%jm_isEmpty_1(j_systemProperties%jm_getArch_0())) then
            this%f_osArch = j_EMPTY_STRING
        else
            this%f_osArch = j_systemProperties%jm_getArch_0()
        end if
        if (j_stringValidationUtil%jm_isEmpty_1(j_systemProperties%jm_getVersion_0())) then
            this%f_osVersion = j_EMPTY_STRING
        else
            this%f_osVersion = j_systemProperties%jm_getVersion_0()
        end if
  end function

  recursive function GenericOperatingSystem_jm_getName_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_osName
        return
  end function

  recursive function GenericOperatingSystem_jm_getVersion_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_osVersion
        return
  end function

  recursive function GenericOperatingSystem_jm_getArch_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_osArch
        return
  end function

  recursive function GenericOperatingSystem_jm_getCharacterSet_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    class(CharacterSet), pointer :: jresult
        jresult => this%f_characterSet
        return
  end function

  recursive function GenericOperatingSystem_jm_isOverScan_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function GenericOperatingSystem_jm_getOverScanXPercent_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    integer(4) :: jresult
        jresult = 100
        return
  end function

  recursive function GenericOperatingSystem_jm_getOverScanYPercent_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    integer(4) :: jresult
        jresult = 100
        return
  end function

  recursive function GenericOperatingSystem_jm_isScalable_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    logical :: jresult
        jresult = this%f_scalable
        return
  end function

  recursive function GenericOperatingSystem_jm_isAutoHide_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function GenericOperatingSystem_jm_toString_0(this) result(jresult)
    class(GenericOperatingSystem), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_NEW_LINE
    class(StringMaker), pointer :: j_osBuffer
    class(CommonSeps), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => CommonSeps_jm_getInstance_0()
        j_NEW_LINE = jtemp2%f_NEW_LINE
        j_osBuffer => StringMaker_jnew_0()
        jdiscardRef => j_osBuffer%jm_append_1(JR_unescape('Operating System Info: \n'))
        jdiscardRef => j_osBuffer%jm_append_1(this%jm_getName_0())
        jdiscardRef => j_osBuffer%jm_append_1(j_NEW_LINE)
        jdiscardRef => j_osBuffer%jm_append_1(this%jm_getArch_0())
        jdiscardRef => j_osBuffer%jm_append_1(j_NEW_LINE)
        jdiscardRef => j_osBuffer%jm_append_1(this%jm_getVersion_0())
        jdiscardRef => j_osBuffer%jm_append_1(j_NEW_LINE)
        jtemp3 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_osBuffer%jm_append_1(jtemp3%jm_toString_1(this%jm_getCharacterSet_0()))
        jdiscardRef => j_osBuffer%jm_append_1(j_NEW_LINE)
        jresult = j_osBuffer%jm_toString_0()
        return
  end function
end module GenericOperatingSystem_m

