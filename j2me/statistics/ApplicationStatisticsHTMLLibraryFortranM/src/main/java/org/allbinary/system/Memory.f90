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
! package org.allbinary.system
module Memory_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: Memory
  end type


contains

  function Memory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Memory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Memory)
      jresult => object
    end select
  end function

  function Memory_jnew_0() result(this)
    class(Memory), pointer :: this
    allocate(this)
    this%jclass = 'Memory'
  end function

  recursive function Memory_jm_getInfo_0() result(jresult)
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function
end module Memory_m

