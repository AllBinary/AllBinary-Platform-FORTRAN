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
module NoOperatingSystem_m
  use JR_m
  use GenericOperatingSystem_m
  implicit none

  type, extends(GenericOperatingSystem) :: NoOperatingSystem
  end type

  class(GenericOperatingSystem), pointer, save :: NoOperatingSystem_jcell_NO_OPERATING_SYSTEM => null()
  logical, save :: NoOperatingSystem_jset_NO_OPERATING_SYSTEM = .false.

contains

  function NoOperatingSystem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoOperatingSystem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoOperatingSystem)
      jresult => object
    end select
  end function

  function NoOperatingSystem_jstatic_NO_OPERATING_SYSTEM() result(jresult)
    class(GenericOperatingSystem), pointer :: jresult
    if (.not. NoOperatingSystem_jset_NO_OPERATING_SYSTEM) then
      NoOperatingSystem_jset_NO_OPERATING_SYSTEM = .true.
      NoOperatingSystem_jcell_NO_OPERATING_SYSTEM => GenericOperatingSystem_jnew_0()
    end if
    jresult => NoOperatingSystem_jcell_NO_OPERATING_SYSTEM
  end function

  subroutine NoOperatingSystem_jsetstatic_NO_OPERATING_SYSTEM(jvalue)
    class(GenericOperatingSystem), target, optional :: jvalue
    NoOperatingSystem_jset_NO_OPERATING_SYSTEM = .true.
    if (present(jvalue)) then
      NoOperatingSystem_jcell_NO_OPERATING_SYSTEM => jvalue
    else
      NoOperatingSystem_jcell_NO_OPERATING_SYSTEM => null()
    end if
  end subroutine

  recursive function NoOperatingSystem_jnew_0() result(this)
    class(NoOperatingSystem), pointer :: this
    allocate(this)
    this%jclass = 'NoOperatingSystem'
        continue
  end function
end module NoOperatingSystem_m

function NoOperatingSystem_jnew_0_jext() result(this)
  use NoOperatingSystem_m, only: JObject, NoOperatingSystem_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoOperatingSystem_jnew_0()
end function

