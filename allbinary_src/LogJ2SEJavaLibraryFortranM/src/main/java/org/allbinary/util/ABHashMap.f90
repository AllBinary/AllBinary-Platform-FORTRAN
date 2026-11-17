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
module ABHashMap_m
  use JR_m
  use HashMap_m
  implicit none

  type, extends(HashMap) :: ABHashMap
  end type


contains

  function ABHashMap_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABHashMap), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABHashMap)
      jresult => object
    end select
  end function

  function ABHashMap_jnew_0() result(this)
    class(ABHashMap), pointer :: this
    allocate(this)
    this%jclass = 'ABHashMap'
  end function
end module ABHashMap_m

function ABHashMap_jnew_0_jext() result(this)
  use ABHashMap_m, only: JObject, ABHashMap_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABHashMap_jnew_0()
end function

