! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
! package org.allbinary.logic.io.file
module AbFileSystem_m
  use JR_m
  use File_m
  use FileInputStream_m
  use InputStream_m
  use NullUtil_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: AbFileSystem
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_isDirectoryOrFile_1 => AbFileSystem_jm_isDirectoryOrFile_1
    procedure :: jm_isDirectory_1 => AbFileSystem_jm_isDirectory_1
    procedure :: jm_getFilesAsStringArrayForPath_1 => AbFileSystem_jm_getFilesAsStringArrayForPath_1
    procedure :: jm_readAsString_1 => AbFileSystem_jm_readAsString_1
    procedure :: jm_readAsString_2 => AbFileSystem_jm_readAsString_2
    procedure :: jm_close_1 => AbFileSystem_jm_close_1
  end type

  class(AbFileSystem), pointer, save :: AbFileSystem_jcell_instance => null()
  logical, save :: AbFileSystem_jset_instance = .false.

contains

  function AbFileSystem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileSystem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileSystem)
      jresult => object
    end select
  end function

  function AbFileSystem_jstatic_instance() result(jresult)
    class(AbFileSystem), pointer :: jresult
    if (.not. AbFileSystem_jset_instance) then
      AbFileSystem_jset_instance = .true.
      AbFileSystem_jcell_instance => AbFileSystem_jnew_0()
    end if
    jresult => AbFileSystem_jcell_instance
  end function

  subroutine AbFileSystem_jsetstatic_instance(jvalue)
    class(AbFileSystem), target, optional :: jvalue
    AbFileSystem_jset_instance = .true.
    if (present(jvalue)) then
      AbFileSystem_jcell_instance => jvalue
    else
      AbFileSystem_jcell_instance => null()
    end if
  end subroutine

  function AbFileSystem_jnew_0() result(this)
    class(AbFileSystem), pointer :: this
    allocate(this)
    this%jclass = 'AbFileSystem'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive function AbFileSystem_jm_getInstance_0() result(jresult)
    class(AbFileSystem), pointer :: jresult
        jresult => AbFileSystem_jstatic_instance()
        return
  end function

  recursive function AbFileSystem_jm_isDirectoryOrFile_1(this, j_path) result(jresult)
    class(AbFileSystem), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
    class(File), pointer :: j_file
        j_file => File_jnew_1(j_path)
        jresult = (j_file%jm_isDirectory_0() .or. j_file%jm_isFile_0())
        return
  end function

  recursive function AbFileSystem_jm_isDirectory_1(this, j_path) result(jresult)
    class(AbFileSystem), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
    class(File), pointer :: jtemp1
        jtemp1 => File_jnew_1(j_path)
        jresult = jtemp1%jm_isDirectory_0()
        return
  end function

  recursive function AbFileSystem_jm_getFilesAsStringArrayForPath_1(this, j_currentDirPath) result(jresult)
    class(AbFileSystem), target :: this
    character(len=*), intent(in) :: j_currentDirPath
    type(JString), allocatable :: jresult(:)
    class(File), pointer :: j_file
    class(StringUtil), pointer :: jtemp2
        j_file => File_jnew_1(j_currentDirPath)
        if (j_file%jm_exists_0()) then
            jresult = j_file%jm_list_0()
            return
        else
            jtemp2 => StringUtil_jm_getInstance_0()
            jresult = jtemp2%jm_getArrayInstance_0()
            return
        end if
  end function

  recursive function AbFileSystem_jm_readAsString_1(this, j_fileName) result(jresult)
    class(AbFileSystem), target :: this
    character(len=*), intent(in) :: j_fileName
    character(len=:), allocatable :: jresult
    integer(4), allocatable :: j_bytes(:)
        j_bytes = JR_newIntArray(1000000)
        jresult = this%jm_readAsString_2(j_fileName, j_bytes)
        return
  end function

  recursive function AbFileSystem_jm_readAsString_2(this, j_fileName, j_bytes) result(jresult)
    class(AbFileSystem), target :: this
    character(len=*), intent(in) :: j_fileName
    integer(4) :: j_bytes(:)
    character(len=:), allocatable :: jresult
    class(JObject), pointer :: j_closeable
    class(InputStream), pointer :: j_idFile
    integer(4) :: j_size
    class(NullUtil), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => NullUtil_jm_getInstance_0()
        j_closeable => jtemp3%f_NULL_OBJECT
        continue ! try
            j_idFile => FileInputStream_jnew_1(j_fileName)
            j_closeable => j_idFile
            j_size = j_idFile%jm_read_1(j_bytes)
            if ((j_size > 0)) then
                jresult = JR_fromChars(j_bytes, 0, j_size)
                return
            end if
            jdiscardBoolean = this%jm_close_1(j_closeable)
        jtemp4 => StringUtil_jm_getInstance_0()
        jresult = jtemp4%f_EMPTY_STRING
        return
  end function

  recursive function AbFileSystem_jm_close_1(this, j_closeable) result(jresult)
    class(AbFileSystem), target :: this
    class(JObject), target, optional :: j_closeable
    logical :: jresult
    class(InputStream), pointer :: j_inputStream
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (present(j_closeable)) then
                j_inputStream => InputStream_jcast(j_closeable)
                call j_inputStream%jm_close_0()
            end if
            jresult = .true.
            return
  end function
end module AbFileSystem_m

