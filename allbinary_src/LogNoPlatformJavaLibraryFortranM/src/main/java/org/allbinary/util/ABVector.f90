! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.util
module ABVector_m
  use JR_m
  use Vector_m
  implicit none

  type, extends(Vector) :: ABVector
  end type


contains

  function ABVector_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABVector), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABVector)
      jresult => object
    end select
  end function

  function ABVector_jnew_0() result(this)
    class(ABVector), pointer :: this
    allocate(this)
    this%jclass = 'ABVector'
  end function
end module ABVector_m

function ABVector_jnew_0_jext() result(this)
  use ABVector_m, only: JObject, ABVector_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABVector_jnew_0()
end function

