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
! package org.allbinary.logic.system.hardware
module HardwareFactory_m
  use JR_m
  use GenericOperatingSystem_m
  use OperatingSystems_m
  use LinuxHardware_m
  use WindowsHardware_m
  use HardwareInterface_m
  implicit none

  type, extends(JObject) :: HardwareFactory
  end type

  class(HardwareFactory), pointer, save :: HardwareFactory_jcell_instance => null()
  logical, save :: HardwareFactory_jset_instance = .false.

contains

  function HardwareFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardwareFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardwareFactory)
      jresult => object
    end select
  end function

  function HardwareFactory_jstatic_instance() result(jresult)
    class(HardwareFactory), pointer :: jresult
    if (.not. HardwareFactory_jset_instance) then
      HardwareFactory_jset_instance = .true.
      HardwareFactory_jcell_instance => HardwareFactory_jnew_0()
    end if
    jresult => HardwareFactory_jcell_instance
  end function

  subroutine HardwareFactory_jsetstatic_instance(jvalue)
    class(HardwareFactory), target, optional :: jvalue
    HardwareFactory_jset_instance = .true.
    if (present(jvalue)) then
      HardwareFactory_jcell_instance => jvalue
    else
      HardwareFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function HardwareFactory_jnew_0() result(this)
    class(HardwareFactory), pointer :: this
    allocate(this)
    this%jclass = 'HardwareFactory'
        continue
  end function

  recursive function HardwareFactory_jm_getInstance_0() result(jresult)
    class(HardwareFactory), pointer :: jresult
        jresult => HardwareFactory_jstatic_instance()
        return
  end function

  recursive function HardwareFactory_jm_getInstance_1(j_os) result(jresult)
    class(GenericOperatingSystem), target, optional :: j_os
    class(HardwareInterface), pointer :: jresult
    class(OperatingSystems), pointer :: j_operatingSystems
    character(len=:), allocatable :: jtemp1
    character(len=:), allocatable :: jtemp2
        continue ! try
            j_operatingSystems => OperatingSystems_jm_getInstance_0()
            jtemp1 = j_os%jm_getName_0()
            if ((JR_compareTo(jtemp1, j_operatingSystems%f_LINUX) == 0)) then
                jresult => HardwareInterface_jcast(LinuxHardware_jnew_0())
                return
            else if ((JR_indexOf(jtemp2, j_operatingSystems%f_WINDOWS) >= 0)) then
                jresult => HardwareInterface_jcast(WindowsHardware_jnew_0())
                return
            end if
            error stop JR_toString(JR_newJObject('Exception'))
  end function
end module HardwareFactory_m

