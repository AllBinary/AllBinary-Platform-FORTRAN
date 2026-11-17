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
module ABHashSet_m
  use JR_m
  use HashSet_m
  implicit none

  type, extends(HashSet) :: ABHashSet
  end type


contains

  function ABHashSet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABHashSet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABHashSet)
      jresult => object
    end select
  end function

  function ABHashSet_jnew_0() result(this)
    class(ABHashSet), pointer :: this
    allocate(this)
    this%jclass = 'ABHashSet'
  end function
end module ABHashSet_m

function ABHashSet_jnew_0_jext() result(this)
  use ABHashSet_m, only: JObject, ABHashSet_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABHashSet_jnew_0()
end function

