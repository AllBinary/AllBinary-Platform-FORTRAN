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
module ABPriorityQueue_m
  use JR_m
  use PriorityQueue_m
  implicit none

  type, extends(PriorityQueue) :: ABPriorityQueue
  end type


contains

  function ABPriorityQueue_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABPriorityQueue), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABPriorityQueue)
      jresult => object
    end select
  end function

  function ABPriorityQueue_jnew_0() result(this)
    class(ABPriorityQueue), pointer :: this
    allocate(this)
    this%jclass = 'ABPriorityQueue'
  end function
end module ABPriorityQueue_m

function ABPriorityQueue_jnew_0_jext() result(this)
  use ABPriorityQueue_m, only: JObject, ABPriorityQueue_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABPriorityQueue_jnew_0()
end function

