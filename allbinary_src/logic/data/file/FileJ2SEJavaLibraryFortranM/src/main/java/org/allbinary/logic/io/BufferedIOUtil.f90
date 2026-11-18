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
module BufferedIOUtil_m
  use JR_m
  use BufferedReader_m
  use BufferedWriter_m
  use FileReader_m
  use FileWriter_m
  use AbFile_m
  use AbFileNativeUtil_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: BufferedIOUtil
  end type


contains

  function BufferedIOUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BufferedIOUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BufferedIOUtil)
      jresult => object
    end select
  end function

  function BufferedIOUtil_jnew_0() result(this)
    class(BufferedIOUtil), pointer :: this
    allocate(this)
    this%jclass = 'BufferedIOUtil'
  end function

  recursive subroutine BufferedIOUtil_jm_copy_2(j_backupFile, j_backupFileBak)
    class(AbFile), target, optional :: j_backupFile
    class(AbFile), target, optional :: j_backupFileBak
    character(len=:), allocatable :: j_line
    class(BufferedWriter), pointer :: j_tmpOut
    class(BufferedReader), pointer :: j_tmpIn
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => StringUtil_jm_getInstance_0()
        j_line = jtemp1%f_EMPTY_STRING
        j_tmpOut => BufferedWriter_jnew_1(FileWriter_jnew_1(AbFileNativeUtil_jm_get_1(j_backupFileBak)))
        j_tmpIn => BufferedReader_jnew_1(FileReader_jnew_1(AbFileNativeUtil_jm_get_1(j_backupFile)))
        do while (j_tmpIn%jm_ready_0())
            j_line = j_tmpIn%jm_readLine_0()
            call j_tmpOut%jm_write_3(j_line, 0, len(j_line))
            call j_tmpOut%jm_newLine_0()
        end do
        call j_tmpOut%jm_flush_0()
  end subroutine
end module BufferedIOUtil_m

