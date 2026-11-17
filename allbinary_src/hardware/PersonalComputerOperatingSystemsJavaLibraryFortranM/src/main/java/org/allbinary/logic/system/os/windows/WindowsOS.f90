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
module WindowsOS_m
  use JR_m
  use GenericOperatingSystem_m
  implicit none

  type, extends(GenericOperatingSystem) :: WindowsOS
  contains
    procedure :: jm_isAutoHide_0 => WindowsOS_jm_isAutoHide_0
  end type


contains

  function WindowsOS_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WindowsOS), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WindowsOS)
      jresult => object
    end select
  end function

  recursive function WindowsOS_jnew_0() result(this)
    class(WindowsOS), pointer :: this
    allocate(this)
    this%jclass = 'WindowsOS'
        this%f_scalable = .true.
  end function

  recursive function WindowsOS_jm_isAutoHide_0(this) result(jresult)
    class(WindowsOS), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module WindowsOS_m

function WindowsOS_jnew_0_jext() result(this)
  use WindowsOS_m, only: JObject, WindowsOS_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => WindowsOS_jnew_0()
end function

