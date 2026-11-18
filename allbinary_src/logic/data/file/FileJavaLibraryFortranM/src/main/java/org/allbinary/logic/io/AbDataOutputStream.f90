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
! package org.allbinary.logic.io
module AbDataOutputStream_m
  use JR_m
  use DataOutputStream_m
  use OutputStream_m
  implicit none

  type, extends(DataOutputStream) :: AbDataOutputStream
  end type


contains

  function AbDataOutputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbDataOutputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbDataOutputStream)
      jresult => object
    end select
  end function

  recursive function AbDataOutputStream_jnew_1(j_out) result(this)
    class(OutputStream), target, optional :: j_out
    class(AbDataOutputStream), pointer :: this
    allocate(this)
    this%jclass = 'AbDataOutputStream'
        continue ! super()
  end function
end module AbDataOutputStream_m

