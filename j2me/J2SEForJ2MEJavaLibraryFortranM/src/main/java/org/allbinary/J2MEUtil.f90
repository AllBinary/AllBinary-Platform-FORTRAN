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
! package org.allbinary
module J2MEUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: J2MEUtil
  end type


contains

  function J2MEUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2MEUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2MEUtil)
      jresult => object
    end select
  end function

  recursive function J2MEUtil_jnew_0() result(this)
    class(J2MEUtil), pointer :: this
    allocate(this)
    this%jclass = 'J2MEUtil'
        continue
  end function

  recursive function J2MEUtil_jm_isJ2ME_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function J2MEUtil_jm_isJ2SE_0() result(jresult)
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function J2MEUtil_jm_isHTML_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function
end module J2MEUtil_m

