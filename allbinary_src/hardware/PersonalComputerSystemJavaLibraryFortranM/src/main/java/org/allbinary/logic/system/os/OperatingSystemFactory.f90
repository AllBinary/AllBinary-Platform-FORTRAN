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
module OperatingSystemFactory_m
  use JR_m
  use Log_m
  use LogFactory_m
  use LogUtil_m
  use LogConfigTypeFactory_m
  use LogConfigTypes_m
  use StringMaker_m
  use StringUtil_m
  use LinuxOperatingSystemFactory_m
  use SolarisOperatingSystemFactory_m
  use WindowsOperatingSystemFactory_m
  use CommonStrings_m
  use System_m
  use NoOperatingSystem_m
  use GenericOperatingSystem_m
  use OperatingSystems_m
  use SystemProperties_m
  implicit none

  type, extends(JObject) :: OperatingSystemFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(GenericOperatingSystem), pointer :: f_genericOperatingSystem => null()
    logical :: f_hasDetected = .false.
  contains
    procedure :: jm_getOperatingSystemInstance_0 => OperatingSystemFactory_jm_getOperatingSystemInstance_0
  end type

  class(OperatingSystemFactory), pointer, save :: OperatingSystemFactory_jcell_instance => null()
  logical, save :: OperatingSystemFactory_jset_instance = .false.

contains

  function OperatingSystemFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OperatingSystemFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OperatingSystemFactory)
      jresult => object
    end select
  end function

  function OperatingSystemFactory_jstatic_instance() result(jresult)
    class(OperatingSystemFactory), pointer :: jresult
    if (.not. OperatingSystemFactory_jset_instance) then
      OperatingSystemFactory_jset_instance = .true.
      OperatingSystemFactory_jcell_instance => OperatingSystemFactory_jnew_0()
    end if
    jresult => OperatingSystemFactory_jcell_instance
  end function

  subroutine OperatingSystemFactory_jsetstatic_instance(jvalue)
    class(OperatingSystemFactory), target, optional :: jvalue
    OperatingSystemFactory_jset_instance = .true.
    if (present(jvalue)) then
      OperatingSystemFactory_jcell_instance => jvalue
    else
      OperatingSystemFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function OperatingSystemFactory_jnew_0() result(this)
    class(OperatingSystemFactory), pointer :: this
    allocate(this)
    this%jclass = 'OperatingSystemFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_genericOperatingSystem => NoOperatingSystem_jstatic_NO_OPERATING_SYSTEM()
    this%f_hasDetected = .false.
        continue
  end function

  recursive function OperatingSystemFactory_jm_getInstance_0() result(jresult)
    class(OperatingSystemFactory), pointer :: jresult
        jresult => OperatingSystemFactory_jstatic_instance()
        return
  end function

  recursive function OperatingSystemFactory_jm_getOperatingSystemInstance_0(this) result(jresult)
    class(OperatingSystemFactory), target :: this
    class(GenericOperatingSystem), pointer :: jresult
    class(OperatingSystems), pointer :: j_operatingSystems
    class(SystemProperties), pointer :: j_systemProperties
    character(len=:), allocatable :: j_osName
    character(len=:), allocatable :: j_osArch
    character(len=:), allocatable :: j_osVersion
    class(Log), pointer :: j_log
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(LogConfigTypeFactory), pointer :: jtemp4
    class(SolarisOperatingSystemFactory), pointer :: jtemp5
    class(LogConfigTypeFactory), pointer :: jtemp6
    class(WindowsOperatingSystemFactory), pointer :: jtemp7
    class(LogConfigTypeFactory), pointer :: jtemp8
    class(LinuxOperatingSystemFactory), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringUtil), pointer :: jtemp13
    class(LogConfigTypeFactory), pointer :: jtemp14
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_operatingSystems => OperatingSystems_jm_getInstance_0()
            j_systemProperties => SystemProperties_jm_getInstance_0()
            j_osName = j_systemProperties%jm_getName_0()
            j_osArch = j_systemProperties%jm_getArch_0()
            j_osVersion = j_systemProperties%jm_getVersion_0()
            if ((.not. this%f_hasDetected)) then
                call this%f_logUtil%jm_putF_3(('osName: ' // j_osName), this, this%f_commonStrings%f_GET_INSTANCE)
                this%f_hasDetected = .true.
                if ((JR_indexOf(j_osName, j_operatingSystems%f_LINUX) >= 0)) then
                    associate (jstatic_N68730 => LogConfigTypes_jstatic_LOGGING())
                    jtemp8 => LogConfigTypeFactory_jm_getInstance_0()
                    if (jstatic_N68730%jm_contains_1(jtemp8%f_FACTORYERROR)) then
                        call this%f_logUtil%jm_putF_3('Found a Linux OS', this, this%f_commonStrings%f_GET_INSTANCE)
                    end if
                    end associate
                    jtemp9 => LinuxOperatingSystemFactory_jm_getInstance_0()
                    this%f_genericOperatingSystem => jtemp9%jm_getOperatingSystemInstance_0()
                else if ((JR_indexOf(j_osName, j_operatingSystems%f_WINDOWS) >= 0)) then
                    associate (jstatic_N68564 => LogConfigTypes_jstatic_LOGGING())
                    jtemp6 => LogConfigTypeFactory_jm_getInstance_0()
                    if (jstatic_N68564%jm_contains_1(jtemp6%f_FACTORYERROR)) then
                        call this%f_logUtil%jm_putF_3('Found a Windows OS', this, this%f_commonStrings%f_GET_INSTANCE)
                    end if
                    end associate
                    jtemp7 => WindowsOperatingSystemFactory_jm_getInstance_0()
                    this%f_genericOperatingSystem => jtemp7%jm_getOperatingSystemInstance_0()
                else if ((JR_indexOf(j_osName, j_operatingSystems%f_SOLARIS) >= 0)) then
                    associate (jstatic_N68398 => LogConfigTypes_jstatic_LOGGING())
                    jtemp4 => LogConfigTypeFactory_jm_getInstance_0()
                    if (jstatic_N68398%jm_contains_1(jtemp4%f_FACTORYERROR)) then
                        call this%f_logUtil%jm_putF_3('Found a Solaris OS', this, this%f_commonStrings%f_GET_INSTANCE)
                    end if
                    end associate
                    jtemp5 => SolarisOperatingSystemFactory_jm_getInstance_0()
                    this%f_genericOperatingSystem => jtemp5%jm_getOperatingSystemInstance_0()
                else
                    jtemp3 => StringMaker_jnew_0()
                    jtemp2 => jtemp3%jm_append_1('OS Not Supported: ')
                    jtemp1 => jtemp2%jm_append_1(j_osName)
                    error stop JR_toString(JR_newJObject('Exception'))
                end if
                jtemp13 => StringUtil_jm_getInstance_0()
                jtemp12 => StringMaker_jnew_0()
                jtemp11 => jtemp12%jm_append_1('OperatingSystem Info: ')
                jtemp10 => jtemp11%jm_append_1(jtemp13%jm_toString_1(this%f_genericOperatingSystem))
                j_log => LogFactory_jm_getInstanceF_3(jtemp10%jm_toString_0(), this, this%f_commonStrings%f_GET_INSTANCE)
                call JR_println(j_log%jm_toString_0())
                call this%f_logUtil%jm_putL_1(j_log)
            end if
            jresult => this%f_genericOperatingSystem
            return
  end function
end module OperatingSystemFactory_m

