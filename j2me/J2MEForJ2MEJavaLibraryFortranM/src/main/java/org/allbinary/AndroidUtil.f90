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
module AndroidUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: AndroidUtil
  end type


contains

  function AndroidUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AndroidUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AndroidUtil)
      jresult => object
    end select
  end function

  recursive function AndroidUtil_jnew_0() result(this)
    class(AndroidUtil), pointer :: this
    allocate(this)
    this%jclass = 'AndroidUtil'
        continue
  end function

  recursive function AndroidUtil_jm_isMemoryRestrictive_0() result(jresult)
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function AndroidUtil_jm_isAndroid_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function
end module AndroidUtil_m

