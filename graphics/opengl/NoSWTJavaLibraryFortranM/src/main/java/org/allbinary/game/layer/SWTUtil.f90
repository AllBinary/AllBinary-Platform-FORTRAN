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
! package org.allbinary.game.layer
module SWTUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: SWTUtil
  end type

  logical, save :: SWTUtil_jcell_isSWT
  logical, save :: SWTUtil_jset_isSWT = .false.
  character(len=:), allocatable, save :: SWTUtil_jcell_SWT
  logical, save :: SWTUtil_jset_SWT = .false.

contains

  function SWTUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTUtil)
      jresult => object
    end select
  end function

  function SWTUtil_jstatic_isSWT() result(jresult)
    logical :: jresult
    if (.not. SWTUtil_jset_isSWT) then
      SWTUtil_jset_isSWT = .true.
      SWTUtil_jcell_isSWT = .false.
    end if
    jresult = SWTUtil_jcell_isSWT
  end function

  subroutine SWTUtil_jsetstatic_isSWT(jvalue)
    logical, value :: jvalue
    SWTUtil_jset_isSWT = .true.
    SWTUtil_jcell_isSWT = jvalue
  end subroutine

  function SWTUtil_jstatic_SWT() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. SWTUtil_jset_SWT) then
      SWTUtil_jset_SWT = .true.
      SWTUtil_jcell_SWT = 'SWT'
    end if
    jresult = SWTUtil_jcell_SWT
  end function

  subroutine SWTUtil_jsetstatic_SWT(jvalue)
    character(len=*), intent(in) :: jvalue
    SWTUtil_jset_SWT = .true.
    SWTUtil_jcell_SWT = jvalue
  end subroutine

  function SWTUtil_jnew_0() result(this)
    class(SWTUtil), pointer :: this
    allocate(this)
    this%jclass = 'SWTUtil'
  end function
end module SWTUtil_m

