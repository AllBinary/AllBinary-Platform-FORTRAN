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
module PrimitiveIntUtil_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: PrimitiveIntUtil
  end type


contains

  function PrimitiveIntUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PrimitiveIntUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PrimitiveIntUtil)
      jresult => object
    end select
  end function

  recursive function PrimitiveIntUtil_jnew_0() result(this)
    class(PrimitiveIntUtil), pointer :: this
    allocate(this)
    this%jclass = 'PrimitiveIntUtil'
        continue
  end function

  recursive function PrimitiveIntUtil_jm_getArrayInstance_0() result(jresult)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_INT_ARRAY
        return
  end function

  recursive function PrimitiveIntUtil_jm_getTwoDimensionalArrayInstance_0() result(jresult)
    integer(4), allocatable :: jresult(:,:)
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        jresult = jtemp2%f_NULL_INT_ARRAY_ARRAY
        return
  end function
end module PrimitiveIntUtil_m

