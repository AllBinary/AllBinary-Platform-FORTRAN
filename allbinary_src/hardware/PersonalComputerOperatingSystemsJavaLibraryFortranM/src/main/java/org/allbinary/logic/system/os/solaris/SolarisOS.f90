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
! package org.allbinary.logic.system.os.solaris
module SolarisOS_m
  use JR_m
  use GenericOperatingSystem_m
  implicit none

  type, extends(GenericOperatingSystem) :: SolarisOS
  contains
    procedure :: jm_isAutoHide_0 => SolarisOS_jm_isAutoHide_0
  end type


contains

  function SolarisOS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SolarisOS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SolarisOS)
      jresult => object
    end select
  end function

  recursive function SolarisOS_jnew_0() result(this)
    class(SolarisOS), pointer :: this
    allocate(this)
    this%jclass = 'SolarisOS'
        this%f_scalable = .true.
  end function

  recursive function SolarisOS_jm_isAutoHide_0(this) result(jresult)
    class(SolarisOS), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module SolarisOS_m

function SolarisOS_jnew_0_jext() result(this)
  use SolarisOS_m, only: JObject, SolarisOS_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SolarisOS_jnew_0()
end function

