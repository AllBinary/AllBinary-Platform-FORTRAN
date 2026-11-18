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
! package org.allbinary.media.audio
module NullControl_m
  use JR_m
  implicit none

  type, extends(Control) :: NullControl
  end type


contains

  function NullControl_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullControl), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullControl)
      jresult => object
    end select
  end function

  function NullControl_jnew_0() result(this)
    class(NullControl), pointer :: this
    allocate(this)
    this%jclass = 'NullControl'
  end function
end module NullControl_m

