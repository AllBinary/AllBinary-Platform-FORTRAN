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
module NullReader_m
  use JR_m
  use IOException_m
  use Reader_m
  implicit none

  type, extends(Reader) :: NullReader
  contains
    procedure :: jm_read_0 => NullReader_jm_read_0
    procedure :: jm_read_3 => NullReader_jm_read_3
    procedure :: jm_ready_0 => NullReader_jm_ready_0
    procedure :: jm_skip_1 => NullReader_jm_skip_1
    procedure :: jm_close_0 => NullReader_jm_close_0
  end type

  class(NullReader), pointer, save :: NullReader_jcell_NULL_READER => null()
  logical, save :: NullReader_jset_NULL_READER = .false.

contains

  function NullReader_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullReader), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullReader)
      jresult => object
    end select
  end function

  function NullReader_jstatic_NULL_READER() result(jresult)
    class(NullReader), pointer :: jresult
    if (.not. NullReader_jset_NULL_READER) then
      NullReader_jset_NULL_READER = .true.
      NullReader_jcell_NULL_READER => NullReader_jnew_0()
    end if
    jresult => NullReader_jcell_NULL_READER
  end function

  subroutine NullReader_jsetstatic_NULL_READER(jvalue)
    class(NullReader), target, optional :: jvalue
    NullReader_jset_NULL_READER = .true.
    if (present(jvalue)) then
      NullReader_jcell_NULL_READER => jvalue
    else
      NullReader_jcell_NULL_READER => null()
    end if
  end subroutine

  function NullReader_jnew_0() result(this)
    class(NullReader), pointer :: this
    allocate(this)
    this%jclass = 'NullReader'
  end function

  recursive function NullReader_jm_read_0(this) result(jresult)
    class(NullReader), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function NullReader_jm_read_3(this, j_cbuf, j_off, j_len) result(jresult)
    class(NullReader), target :: this
    integer(4) :: j_cbuf(:)
    integer(4), value :: j_off
    integer(4), value :: j_len
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function NullReader_jm_ready_0(this) result(jresult)
    class(NullReader), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function NullReader_jm_skip_1(this, j_n) result(jresult)
    class(NullReader), target :: this
    integer(8), value :: j_n
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive subroutine NullReader_jm_close_0(this)
    class(NullReader), target :: this
    continue
  end subroutine
end module NullReader_m

function NullReader_jnew_0_jext() result(this)
  use NullReader_m, only: JObject, NullReader_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullReader_jnew_0()
end function

