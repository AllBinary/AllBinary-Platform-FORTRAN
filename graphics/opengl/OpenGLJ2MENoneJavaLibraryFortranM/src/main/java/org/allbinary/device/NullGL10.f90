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
! package org.allbinary.device
module NullGL10_m
  use JR_m
  use GL10_m
  implicit none

  type, extends(GL10) :: NullGL10
  end type

  class(NullGL10), pointer, save :: NullGL10_jcell_NULL_GL10 => null()
  logical, save :: NullGL10_jset_NULL_GL10 = .false.

contains

  function NullGL10_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullGL10), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullGL10)
      jresult => object
    end select
  end function

  function NullGL10_jstatic_NULL_GL10() result(jresult)
    class(NullGL10), pointer :: jresult
    if (.not. NullGL10_jset_NULL_GL10) then
      NullGL10_jset_NULL_GL10 = .true.
      NullGL10_jcell_NULL_GL10 => NullGL10_jnew_0()
    end if
    jresult => NullGL10_jcell_NULL_GL10
  end function

  subroutine NullGL10_jsetstatic_NULL_GL10(jvalue)
    class(NullGL10), target, optional :: jvalue
    NullGL10_jset_NULL_GL10 = .true.
    if (present(jvalue)) then
      NullGL10_jcell_NULL_GL10 => jvalue
    else
      NullGL10_jcell_NULL_GL10 => null()
    end if
  end subroutine

  function NullGL10_jnew_0() result(this)
    class(NullGL10), pointer :: this
    allocate(this)
    this%jclass = 'NullGL10'
  end function
end module NullGL10_m

