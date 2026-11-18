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
module AbDataInputStream_m
  use JR_m
  use DataInputStream_m
  use InputStream_m
  implicit none

  type, extends(DataInputStream) :: AbDataInputStream
  end type


contains

  function AbDataInputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbDataInputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbDataInputStream)
      jresult => object
    end select
  end function

  recursive function AbDataInputStream_jnew_1(j_out) result(this)
    class(InputStream), target, optional :: j_out
    class(AbDataInputStream), pointer :: this
    allocate(this)
    this%jclass = 'AbDataInputStream'
        continue ! super()
  end function
end module AbDataInputStream_m

