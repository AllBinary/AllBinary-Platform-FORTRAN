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
module ABStack_m
  use JR_m
  use Stack_m
  implicit none

  type, extends(Stack) :: ABStack
  end type


contains

  function ABStack_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABStack), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABStack)
      jresult => object
    end select
  end function

  function ABStack_jnew_0() result(this)
    class(ABStack), pointer :: this
    allocate(this)
    this%jclass = 'ABStack'
  end function
end module ABStack_m

function ABStack_jnew_0_jext() result(this)
  use ABStack_m, only: JObject, ABStack_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABStack_jnew_0()
end function

