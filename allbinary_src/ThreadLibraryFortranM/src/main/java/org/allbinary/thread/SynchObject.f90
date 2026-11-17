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
! package org.allbinary.thread
module SynchObject_m
  use JR_m
  implicit none

  type, extends(JObject) :: SynchObject
  end type


contains

  function SynchObject_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SynchObject), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SynchObject)
      jresult => object
    end select
  end function

  function SynchObject_jnew_0() result(this)
    class(SynchObject), pointer :: this
    allocate(this)
    this%jclass = 'SynchObject'
  end function
end module SynchObject_m

