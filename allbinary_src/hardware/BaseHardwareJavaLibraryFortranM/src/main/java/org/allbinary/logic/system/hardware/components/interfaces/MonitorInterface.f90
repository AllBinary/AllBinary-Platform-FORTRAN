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
! package org.allbinary.logic.system.hardware.components.interfaces
module MonitorInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: MonitorInterface
  end type


contains

  function MonitorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MonitorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MonitorInterface)
      jresult => object
    end select
  end function

  function MonitorInterface_jnew_0() result(this)
    class(MonitorInterface), pointer :: this
    allocate(this)
    this%jclass = 'MonitorInterface'
  end function
end module MonitorInterface_m

