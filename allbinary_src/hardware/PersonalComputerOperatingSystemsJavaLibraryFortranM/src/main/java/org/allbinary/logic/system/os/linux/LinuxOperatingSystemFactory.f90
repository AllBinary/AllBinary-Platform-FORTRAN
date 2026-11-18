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
! package org.allbinary.logic.system.os.linux
module LinuxOperatingSystemFactory_m
  use JR_m
  use LogUtil_m
  use LogConfigTypeFactory_m
  use LogConfigTypes_m
  use GenericOperatingSystem_m
  use NoOperatingSystem_m
  use OperatingSystems_m
  use SystemProperties_m
  use CommonStrings_m
  use LinuxOS_m
  implicit none

  type, extends(JObject) :: LinuxOperatingSystemFactory
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getOperatingSystemInstance_0 => LinuxOperatingSystemFactory_jm_getOperatingSystemInstance_0
  end type

  class(LinuxOperatingSystemFactory), pointer, save :: LinuxOperatingSystemFactory_jcell_instance => null()
  logical, save :: LinuxOperatingSystemFactory_jset_instance = .false.

contains

  function LinuxOperatingSystemFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LinuxOperatingSystemFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LinuxOperatingSystemFactory)
      jresult => object
    end select
  end function

  function LinuxOperatingSystemFactory_jstatic_instance() result(jresult)
    class(LinuxOperatingSystemFactory), pointer :: jresult
    if (.not. LinuxOperatingSystemFactory_jset_instance) then
      LinuxOperatingSystemFactory_jset_instance = .true.
      LinuxOperatingSystemFactory_jcell_instance => LinuxOperatingSystemFactory_jnew_0()
    end if
    jresult => LinuxOperatingSystemFactory_jcell_instance
  end function

  subroutine LinuxOperatingSystemFactory_jsetstatic_instance(jvalue)
    class(LinuxOperatingSystemFactory), target, optional :: jvalue
    LinuxOperatingSystemFactory_jset_instance = .true.
    if (present(jvalue)) then
      LinuxOperatingSystemFactory_jcell_instance => jvalue
    else
      LinuxOperatingSystemFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function LinuxOperatingSystemFactory_jnew_0() result(this)
    class(LinuxOperatingSystemFactory), pointer :: this
    allocate(this)
    this%jclass = 'LinuxOperatingSystemFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function LinuxOperatingSystemFactory_jm_getInstance_0() result(jresult)
    class(LinuxOperatingSystemFactory), pointer :: jresult
        jresult => LinuxOperatingSystemFactory_jstatic_instance()
        return
  end function

  recursive function LinuxOperatingSystemFactory_jm_getOperatingSystemInstance_0(this) result(jresult)
    class(LinuxOperatingSystemFactory), target :: this
    class(GenericOperatingSystem), pointer :: jresult
    class(OperatingSystems), pointer :: j_operatingSystems
    character(len=:), allocatable :: j_osName
    class(GenericOperatingSystem), pointer :: j_operatingSystemInterface
    class(CommonStrings), pointer :: j_commonStrings
    class(SystemProperties), pointer :: jtemp1
    class(LogConfigTypeFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_operatingSystems => OperatingSystems_jm_getInstance_0()
            jtemp1 => SystemProperties_jm_getInstance_0()
            j_osName = jtemp1%jm_getName_0()
            continue
            if ((JR_compareTo(j_osName, j_operatingSystems%f_LINUX) == 0)) then
                j_operatingSystemInterface => LinuxOS_jnew_0()
            else
                if (j_operatingSystems%jm_isUnknownSpecificOSAllowed_0()) then
                    j_operatingSystemInterface => LinuxOS_jnew_0()
                else
                    error stop JR_toString(JR_newJObject('Exception'))
                end if
            end if
            jresult => j_operatingSystemInterface
            return
  end function
end module LinuxOperatingSystemFactory_m

