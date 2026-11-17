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
module ARunnable_m
  use JR_m
  implicit none

  type, extends(JObject) :: ARunnable
  contains
    procedure :: jm_run_0 => ARunnable_jm_run_0
  end type


contains

  function ARunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ARunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ARunnable)
      jresult => object
    end select
  end function

  function ARunnable_jnew_0() result(this)
    class(ARunnable), pointer :: this
    allocate(this)
    this%jclass = 'ARunnable'
  end function

  recursive subroutine ARunnable_jm_run_0(this)
    class(ARunnable), target :: this
    continue
  end subroutine
end module ARunnable_m

