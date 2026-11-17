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
module LinuxOS_m
  use JR_m
  use GenericOperatingSystem_m
  implicit none

  type, extends(GenericOperatingSystem) :: LinuxOS
  contains
    procedure :: jm_isAutoHide_0 => LinuxOS_jm_isAutoHide_0
  end type


contains

  function LinuxOS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LinuxOS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LinuxOS)
      jresult => object
    end select
  end function

  recursive function LinuxOS_jnew_0() result(this)
    class(LinuxOS), pointer :: this
    allocate(this)
    this%jclass = 'LinuxOS'
        this%f_scalable = .true.
  end function

  recursive function LinuxOS_jm_isAutoHide_0(this) result(jresult)
    class(LinuxOS), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module LinuxOS_m

function LinuxOS_jnew_0_jext() result(this)
  use LinuxOS_m, only: JObject, LinuxOS_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LinuxOS_jnew_0()
end function

