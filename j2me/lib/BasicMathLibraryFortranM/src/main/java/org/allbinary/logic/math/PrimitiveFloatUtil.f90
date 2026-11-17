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
! package org.allbinary.logic.math
module PrimitiveFloatUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: PrimitiveFloatUtil
  end type


contains

  function PrimitiveFloatUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimitiveFloatUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimitiveFloatUtil)
      jresult => object
    end select
  end function

  recursive function PrimitiveFloatUtil_jnew_0() result(this)
    class(PrimitiveFloatUtil), pointer :: this
    allocate(this)
    this%jclass = 'PrimitiveFloatUtil'
        continue
  end function

  recursive function PrimitiveFloatUtil_jm_getArrayInstance_0() result(jresult)
    real(4), allocatable :: jresult(:)
        jresult = JR_newFloatArray(0)
        return
  end function
end module PrimitiveFloatUtil_m

