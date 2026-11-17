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
module ABHashtable_m
  use JR_m
  use Hashtable_m
  implicit none

  type, extends(Hashtable) :: ABHashtable
  end type


contains

  function ABHashtable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABHashtable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABHashtable)
      jresult => object
    end select
  end function

  recursive function ABHashtable_jnew_1(j_initialCapacity) result(this)
    integer(4), value :: j_initialCapacity
    class(ABHashtable), pointer :: this
    allocate(this)
    this%jclass = 'ABHashtable'
        continue ! super()
  end function

  recursive function ABHashtable_jnew_0() result(this)
    class(ABHashtable), pointer :: this
    allocate(this)
    this%jclass = 'ABHashtable'
        continue ! super()
  end function
end module ABHashtable_m

function ABHashtable_jnew_1_jext(p1) result(this)
  use ABHashtable_m, only: JObject, ABHashtable_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => ABHashtable_jnew_1(p1)
end function

function ABHashtable_jnew_0_jext() result(this)
  use ABHashtable_m, only: JObject, ABHashtable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ABHashtable_jnew_0()
end function

