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
! package org.allbinary.graphics.color
module BasicColorUtilFactory_m
  use JR_m
  use BasicColorUtil_m
  implicit none

  type, extends(JObject) :: BasicColorUtilFactory
  end type


contains

  function BasicColorUtilFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorUtilFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorUtilFactory)
      jresult => object
    end select
  end function

  function BasicColorUtilFactory_jnew_0() result(this)
    class(BasicColorUtilFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicColorUtilFactory'
  end function

  recursive function BasicColorUtilFactory_jm_getInstance_0() result(jresult)
    class(BasicColorUtil), pointer :: jresult
        jresult => BasicColorUtil_jm_getInstance_0()
        return
  end function
end module BasicColorUtilFactory_m

