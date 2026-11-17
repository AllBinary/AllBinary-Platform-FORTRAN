! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module BasicArrayListD_m
  use JR_m
  use BasicArrayListS_m
  implicit none

  type, extends(BasicArrayListS) :: BasicArrayListD
  end type


contains

  function BasicArrayListD_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListD), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListD)
      jresult => object
    end select
  end function

  recursive function BasicArrayListD_jnew_0() result(this)
    class(BasicArrayListD), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListD'
        continue ! super()
  end function
end module BasicArrayListD_m

function BasicArrayListD_jnew_0_jext() result(this)
  use BasicArrayListD_m, only: JObject, BasicArrayListD_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicArrayListD_jnew_0()
end function

