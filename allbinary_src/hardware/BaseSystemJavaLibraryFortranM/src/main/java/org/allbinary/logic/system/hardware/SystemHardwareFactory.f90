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
module SystemHardwareFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use GenericOperatingSystem_m
  use CommonStrings_m
  use NoHardware_m
  use HardwareInterface_m
  use HardwareFactory_m
  implicit none

  type, extends(JObject) :: SystemHardwareFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(HardwareInterface), pointer :: f_hardwareInterface => null()
  contains
    procedure :: jm_getInstance_1 => SystemHardwareFactory_jm_getInstance_1
  end type

  class(SystemHardwareFactory), pointer, save :: SystemHardwareFactory_jcell_instance => null()
  logical, save :: SystemHardwareFactory_jset_instance = .false.

contains

  function SystemHardwareFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SystemHardwareFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SystemHardwareFactory)
      jresult => object
    end select
  end function

  function SystemHardwareFactory_jstatic_instance() result(jresult)
    class(SystemHardwareFactory), pointer :: jresult
    if (.not. SystemHardwareFactory_jset_instance) then
      SystemHardwareFactory_jset_instance = .true.
      SystemHardwareFactory_jcell_instance => SystemHardwareFactory_jnew_0()
    end if
    jresult => SystemHardwareFactory_jcell_instance
  end function

  recursive function SystemHardwareFactory_jnew_0() result(this)
    class(SystemHardwareFactory), pointer :: this
    allocate(this)
    this%jclass = 'SystemHardwareFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_hardwareInterface => NoHardware_jm_getInstance_0()
        continue
  end function

  recursive function SystemHardwareFactory_jm_getInstance_0() result(jresult)
    class(SystemHardwareFactory), pointer :: jresult
        jresult => SystemHardwareFactory_jstatic_instance()
        return
  end function

  recursive function SystemHardwareFactory_jm_getInstance_1(this, j_operatingSystemInterface) result(jresult)
    class(SystemHardwareFactory), target :: this
    class(GenericOperatingSystem), target, optional :: j_operatingSystemInterface
    class(HardwareInterface), pointer :: jresult
    class(HardwareFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (JR_same(this%f_hardwareInterface, NoHardware_jm_getInstance_0())) then
                jtemp1 => HardwareFactory_jm_getInstance_0()
                this%f_hardwareInterface => jtemp1%jm_getInstance_1(j_operatingSystemInterface)
            end if
            call this%f_logUtil%jm_putF_3('Found Hardware', this, this%f_commonStrings%f_CONSTRUCTOR)
        jresult => this%f_hardwareInterface
        return
  end function

  recursive function SystemHardwareFactory_jm_static_toString_0() result(jresult)
    character(len=:), allocatable :: jresult
    class(SystemHardwareFactory), pointer :: j_systemHardwareFactory
    class(StringMaker), pointer :: j_osBuffer
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_systemHardwareFactory => SystemHardwareFactory_jm_getInstance_0()
        j_osBuffer => StringMaker_jnew_0()
        jdiscardRef => j_osBuffer%jm_append_1(JR_unescape('Hardware Info: \n'))
        if (associated(j_systemHardwareFactory%f_hardwareInterface)) then
            jdiscardRef => j_osBuffer%jm_append_1(JR_toString(j_systemHardwareFactory%f_hardwareInterface))
        else
            jtemp2 => StringUtil_jm_getInstance_0()
            jdiscardRef => j_osBuffer%jm_append_1(jtemp2%f_NULL_STRING)
        end if
        jresult = j_osBuffer%jm_toString_0()
        return
  end function
end module SystemHardwareFactory_m

