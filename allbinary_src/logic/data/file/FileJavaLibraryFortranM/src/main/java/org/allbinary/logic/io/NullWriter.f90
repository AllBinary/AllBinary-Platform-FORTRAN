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
module NullWriter_m
  use JR_m
  use IOException_m
  use Writer_m
  implicit none

  type, extends(Writer) :: NullWriter
  contains
    procedure :: jm_write_1 => NullWriter_jm_write_1
    procedure :: jm_write_3 => NullWriter_jm_write_3
    procedure :: jm_write_1b => NullWriter_jm_write_1b
    procedure :: jm_write_3b => NullWriter_jm_write_3b
    procedure :: jm_flush_0 => NullWriter_jm_flush_0
    procedure :: jm_close_0 => NullWriter_jm_close_0
  end type

  class(NullWriter), pointer, save :: NullWriter_jcell_NULL_WRITER => null()
  logical, save :: NullWriter_jset_NULL_WRITER = .false.

contains

  function NullWriter_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullWriter), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullWriter)
      jresult => object
    end select
  end function

  function NullWriter_jstatic_NULL_WRITER() result(jresult)
    class(NullWriter), pointer :: jresult
    if (.not. NullWriter_jset_NULL_WRITER) then
      NullWriter_jset_NULL_WRITER = .true.
      NullWriter_jcell_NULL_WRITER => NullWriter_jnew_0()
    end if
    jresult => NullWriter_jcell_NULL_WRITER
  end function

  subroutine NullWriter_jsetstatic_NULL_WRITER(jvalue)
    class(NullWriter), target, optional :: jvalue
    NullWriter_jset_NULL_WRITER = .true.
    if (present(jvalue)) then
      NullWriter_jcell_NULL_WRITER => jvalue
    else
      NullWriter_jcell_NULL_WRITER => null()
    end if
  end subroutine

  function NullWriter_jnew_0() result(this)
    class(NullWriter), pointer :: this
    allocate(this)
    this%jclass = 'NullWriter'
  end function

  recursive subroutine NullWriter_jm_write_1(this, j_c)
    class(NullWriter), target :: this
    integer(4), value :: j_c
    continue
  end subroutine

  recursive subroutine NullWriter_jm_write_3(this, j_cbuf, j_off, j_len)
    class(NullWriter), target :: this
    integer(4) :: j_cbuf(:)
    integer(4), value :: j_off
    integer(4), value :: j_len
    continue
  end subroutine

  recursive subroutine NullWriter_jm_write_1b(this, j_str)
    class(NullWriter), target :: this
    character(len=*), intent(in) :: j_str
    continue
  end subroutine

  recursive subroutine NullWriter_jm_write_3b(this, j_str, j_off, j_len)
    class(NullWriter), target :: this
    character(len=*), intent(in) :: j_str
    integer(4), value :: j_off
    integer(4), value :: j_len
    continue
  end subroutine

  recursive subroutine NullWriter_jm_flush_0(this)
    class(NullWriter), target :: this
    continue
  end subroutine

  recursive subroutine NullWriter_jm_close_0(this)
    class(NullWriter), target :: this
    continue
  end subroutine
end module NullWriter_m

function NullWriter_jnew_0_jext() result(this)
  use NullWriter_m, only: JObject, NullWriter_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullWriter_jnew_0()
end function

