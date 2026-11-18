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
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use System_m
  use NoOperatingSystem_m
  use GenericOperatingSystem_m
  implicit none

  type, extends(JObject) :: OperatingSystemFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(GenericOperatingSystem), pointer :: f_genericOperatingSystem => null()
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
    this%f_genericOperatingSystem => NoOperatingSystem_jstatic_NO_OPERATING_SYSTEM()
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
    class(CommonStrings), pointer :: j_commonStrings
    character(len=:), allocatable :: j_osString
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! try
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1('OperatingSystem Info: ')
            jtemp1 => jtemp2%jm_append_1(this%f_genericOperatingSystem%jm_toString_0())
            j_osString = jtemp1%jm_toString_0()
            call JR_println(j_osString)
            call this%f_logUtil%jm_putF_3(j_osString, this, j_commonStrings%f_GET_INSTANCE)
        jresult => this%f_genericOperatingSystem
        return
  end function
end module OperatingSystemFactory_m

