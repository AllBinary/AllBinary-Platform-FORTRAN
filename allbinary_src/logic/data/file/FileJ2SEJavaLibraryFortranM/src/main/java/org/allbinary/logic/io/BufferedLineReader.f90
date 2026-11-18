!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
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
module BufferedLineReader_m
  use JR_m
  use BufferedReader_m
  use FileReader_m
  use AbFile_m
  use AbFileNativeUtil_m
  implicit none

  type, extends(JObject) :: BufferedLineReader
    class(BufferedReader), pointer :: f_tmpIn => null()
  contains
    procedure :: jm_readUpToLines_1 => BufferedLineReader_jm_readUpToLines_1
    procedure :: jm_readLine_0 => BufferedLineReader_jm_readLine_0
    procedure :: jm_ready_0 => BufferedLineReader_jm_ready_0
    procedure :: jm_getSize_0 => BufferedLineReader_jm_getSize_0
    procedure :: jm_getCurrent_0 => BufferedLineReader_jm_getCurrent_0
  end type


contains

  function BufferedLineReader_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BufferedLineReader), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BufferedLineReader)
      jresult => object
    end select
  end function

  recursive function BufferedLineReader_jnew_1(j_file) result(this)
    class(AbFile), target, optional :: j_file
    class(BufferedLineReader), pointer :: this
    allocate(this)
    this%jclass = 'BufferedLineReader'
    
        this%f_tmpIn => BufferedReader_jnew_1(FileReader_jnew_1(AbFileNativeUtil_jm_get_1(j_file)))
  end function

  recursive subroutine BufferedLineReader_jm_readUpToLines_1(this, j_readAheadIndex)
    class(BufferedLineReader), target :: this
    integer(8), value :: j_readAheadIndex
    continue
  end subroutine

  recursive function BufferedLineReader_jm_readLine_0(this) result(jresult)
    class(BufferedLineReader), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_tmpIn%jm_readLine_0()
        return
  end function

  recursive function BufferedLineReader_jm_ready_0(this) result(jresult)
    class(BufferedLineReader), target :: this
    logical :: jresult
        jresult = this%f_tmpIn%jm_ready_0()
        return
  end function

  recursive function BufferedLineReader_jm_getSize_0(this) result(jresult)
    class(BufferedLineReader), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive function BufferedLineReader_jm_getCurrent_0(this) result(jresult)
    class(BufferedLineReader), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module BufferedLineReader_m

