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
! package org.allbinary.logic.io
module NullCloseable_m
  use JR_m
  use Closeable_m
  use IOException_m
  implicit none

  type, extends(JObject) :: NullCloseable
  contains
    procedure :: jm_close_0 => NullCloseable_jm_close_0
  end type

  class(NullCloseable), pointer, save :: NullCloseable_jcell_NULL_CLOSEABLE => null()
  logical, save :: NullCloseable_jset_NULL_CLOSEABLE = .false.

contains

  function NullCloseable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullCloseable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullCloseable)
      jresult => object
    end select
  end function

  function NullCloseable_jstatic_NULL_CLOSEABLE() result(jresult)
    class(NullCloseable), pointer :: jresult
    if (.not. NullCloseable_jset_NULL_CLOSEABLE) then
      NullCloseable_jset_NULL_CLOSEABLE = .true.
      NullCloseable_jcell_NULL_CLOSEABLE => NullCloseable_jnew_0()
    end if
    jresult => NullCloseable_jcell_NULL_CLOSEABLE
  end function

  subroutine NullCloseable_jsetstatic_NULL_CLOSEABLE(jvalue)
    class(NullCloseable), target, optional :: jvalue
    NullCloseable_jset_NULL_CLOSEABLE = .true.
    if (present(jvalue)) then
      NullCloseable_jcell_NULL_CLOSEABLE => jvalue
    else
      NullCloseable_jcell_NULL_CLOSEABLE => null()
    end if
  end subroutine

  function NullCloseable_jnew_0() result(this)
    class(NullCloseable), pointer :: this
    allocate(this)
    this%jclass = 'NullCloseable'
  end function

  recursive subroutine NullCloseable_jm_close_0(this)
    class(NullCloseable), target :: this
    continue
  end subroutine
end module NullCloseable_m

