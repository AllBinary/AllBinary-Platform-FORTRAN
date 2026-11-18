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
! package org.allbinary.logic.system.os.windows
module WindowsOperatingSystemFactory_m
  use JR_m
  use LogUtil_m
  use LogConfigTypeFactory_m
  use LogConfigTypes_m
  use GenericOperatingSystem_m
  use NoOperatingSystem_m
  use OperatingSystems_m
  use SystemProperties_m
  use CommonStrings_m
  use WindowsOS_m
  implicit none

  type, extends(JObject) :: WindowsOperatingSystemFactory
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getOperatingSystemInstance_0 => WindowsOperatingSystemFactory_jm_getOperatingSystemInstance_0
  end type

  class(WindowsOperatingSystemFactory), pointer, save :: WindowsOperatingSystemFactory_jcell_instance => null()
  logical, save :: WindowsOperatingSystemFactory_jset_instance = .false.

contains

  function WindowsOperatingSystemFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WindowsOperatingSystemFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WindowsOperatingSystemFactory)
      jresult => object
    end select
  end function

  function WindowsOperatingSystemFactory_jstatic_instance() result(jresult)
    class(WindowsOperatingSystemFactory), pointer :: jresult
    if (.not. WindowsOperatingSystemFactory_jset_instance) then
      WindowsOperatingSystemFactory_jset_instance = .true.
      WindowsOperatingSystemFactory_jcell_instance => WindowsOperatingSystemFactory_jnew_0()
    end if
    jresult => WindowsOperatingSystemFactory_jcell_instance
  end function

  subroutine WindowsOperatingSystemFactory_jsetstatic_instance(jvalue)
    class(WindowsOperatingSystemFactory), target, optional :: jvalue
    WindowsOperatingSystemFactory_jset_instance = .true.
    if (present(jvalue)) then
      WindowsOperatingSystemFactory_jcell_instance => jvalue
    else
      WindowsOperatingSystemFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function WindowsOperatingSystemFactory_jnew_0() result(this)
    class(WindowsOperatingSystemFactory), pointer :: this
    allocate(this)
    this%jclass = 'WindowsOperatingSystemFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function WindowsOperatingSystemFactory_jm_getInstance_0() result(jresult)
    class(WindowsOperatingSystemFactory), pointer :: jresult
        jresult => WindowsOperatingSystemFactory_jstatic_instance()
        return
  end function

  recursive function WindowsOperatingSystemFactory_jm_getOperatingSystemInstance_0(this) result(jresult)
    class(WindowsOperatingSystemFactory), target :: this
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
            if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS_NT) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS_10) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS_11) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS2000) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS_XP) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else if ((JR_compareTo(j_osName, j_operatingSystems%f_WINDOWS_VISTA) == 0)) then
                j_operatingSystemInterface => WindowsOS_jnew_0()
            else
                if (j_operatingSystems%jm_isUnknownSpecificOSAllowed_0()) then
                    j_operatingSystemInterface => WindowsOS_jnew_0()
                else
                    error stop JR_toString(JR_newJObject('Exception'))
                end if
            end if
            jresult => j_operatingSystemInterface
            return
  end function
end module WindowsOperatingSystemFactory_m

