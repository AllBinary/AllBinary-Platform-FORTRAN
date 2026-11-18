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
! package org.eclipse.swt.widgets
module SwtDisplay_m
  use JR_m
  implicit none

  type, extends(JObject) :: SwtDisplay
  contains
    procedure :: jm_sleep_0 => SwtDisplay_jm_sleep_0
  end type


contains

  function SwtDisplay_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SwtDisplay), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SwtDisplay)
      jresult => object
    end select
  end function

  function SwtDisplay_jnew_0() result(this)
    class(SwtDisplay), pointer :: this
    allocate(this)
    this%jclass = 'SwtDisplay'
  end function

  recursive subroutine SwtDisplay_jm_sleep_0(this)
    class(SwtDisplay), target :: this
    continue
  end subroutine
end module SwtDisplay_m

