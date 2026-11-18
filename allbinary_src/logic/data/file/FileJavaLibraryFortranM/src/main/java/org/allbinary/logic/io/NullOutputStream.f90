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
module NullOutputStream_m
  use JR_m
  use IOException_m
  use OutputStream_m
  implicit none

  type, extends(OutputStream) :: NullOutputStream
  contains
    procedure :: jm_write_1 => NullOutputStream_jm_write_1
    procedure :: jm_write_3 => NullOutputStream_jm_write_3
    procedure :: jm_close_0 => NullOutputStream_jm_close_0
  end type

  class(NullOutputStream), pointer, save :: NullOutputStream_jcell_NULL_OUTPUT_STREAM => null()
  logical, save :: NullOutputStream_jset_NULL_OUTPUT_STREAM = .false.

contains

  function NullOutputStream_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullOutputStream), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullOutputStream)
      jresult => object
    end select
  end function

  function NullOutputStream_jstatic_NULL_OUTPUT_STREAM() result(jresult)
    class(NullOutputStream), pointer :: jresult
    if (.not. NullOutputStream_jset_NULL_OUTPUT_STREAM) then
      NullOutputStream_jset_NULL_OUTPUT_STREAM = .true.
      NullOutputStream_jcell_NULL_OUTPUT_STREAM => NullOutputStream_jnew_0()
    end if
    jresult => NullOutputStream_jcell_NULL_OUTPUT_STREAM
  end function

  subroutine NullOutputStream_jsetstatic_NULL_OUTPUT_STREAM(jvalue)
    class(NullOutputStream), target, optional :: jvalue
    NullOutputStream_jset_NULL_OUTPUT_STREAM = .true.
    if (present(jvalue)) then
      NullOutputStream_jcell_NULL_OUTPUT_STREAM => jvalue
    else
      NullOutputStream_jcell_NULL_OUTPUT_STREAM => null()
    end if
  end subroutine

  function NullOutputStream_jnew_0() result(this)
    class(NullOutputStream), pointer :: this
    allocate(this)
    this%jclass = 'NullOutputStream'
  end function

  recursive subroutine NullOutputStream_jm_write_1(this, j_b)
    class(NullOutputStream), target :: this
    integer(4), value :: j_b
    continue
  end subroutine

  recursive subroutine NullOutputStream_jm_write_3(this, j_b, j_off, j_len)
    class(NullOutputStream), target :: this
    integer(4) :: j_b(:)
    integer(4), value :: j_off
    integer(4), value :: j_len
    continue
  end subroutine

  recursive subroutine NullOutputStream_jm_close_0(this)
    class(NullOutputStream), target :: this
    continue
  end subroutine
end module NullOutputStream_m

function NullOutputStream_jnew_0_jext() result(this)
  use NullOutputStream_m, only: JObject, NullOutputStream_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullOutputStream_jnew_0()
end function

