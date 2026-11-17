! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary
module AvianUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: AvianUtil
  end type


contains

  function AvianUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AvianUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AvianUtil)
      jresult => object
    end select
  end function

  function AvianUtil_jnew_0() result(this)
    class(AvianUtil), pointer :: this
    allocate(this)
    this%jclass = 'AvianUtil'
  end function

  recursive function AvianUtil_jm_isAvian_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function
end module AvianUtil_m

