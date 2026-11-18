! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.media.graphics.geography.pathfinding
module MultipassState_m
  use JR_m
  implicit none

  type, extends(JObject) :: MultipassState
    integer(4) :: f_step = 0
    integer(4) :: f_iteration = 0
    integer(4) :: f_iteration2 = 0
  end type


contains

  function MultipassState_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultipassState), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultipassState)
      jresult => object
    end select
  end function

  function MultipassState_jnew_0() result(this)
    class(MultipassState), pointer :: this
    allocate(this)
    this%jclass = 'MultipassState'
    
    
    
  end function
end module MultipassState_m

