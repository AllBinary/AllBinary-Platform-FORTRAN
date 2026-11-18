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
! package org.allbinary.logic.io.file
module AbFile_m
  use JR_m
  use File_m
  use FileFilter_m
  use FilenameFilter_m
  use IOException_m
  use URI_m
  use TsUtil_m
  use AbPath_m
  use StringUtil_m
  use AbFileInterface_m
  implicit none

  type, extends(AbFileInterface) :: AbFile
    class(File), pointer :: f_file => null()
  contains
    procedure :: jm_getFile_0 => AbFile_jm_getFile_0
    procedure :: jm_getName_0 => AbFile_jm_getName_0
    procedure :: jm_getParent_0 => AbFile_jm_getParent_0
    procedure :: jm_getParentFile_0 => AbFile_jm_getParentFile_0
    procedure :: jm_getPath_0 => AbFile_jm_getPath_0
    procedure :: jm_isAbsolute_0 => AbFile_jm_isAbsolute_0
    procedure :: jm_getAbsolutePath_0 => AbFile_jm_getAbsolutePath_0
    procedure :: jm_getAbsoluteFile_0 => AbFile_jm_getAbsoluteFile_0
    procedure :: jm_getCanonicalPath_0 => AbFile_jm_getCanonicalPath_0
    procedure :: jm_getCanonicalFile_0 => AbFile_jm_getCanonicalFile_0
    procedure :: jm_toURI_0 => AbFile_jm_toURI_0
    procedure :: jm_canRead_0 => AbFile_jm_canRead_0
    procedure :: jm_canWrite_0 => AbFile_jm_canWrite_0
    procedure :: jm_exists_0 => AbFile_jm_exists_0
    procedure :: jm_isDirectory_0 => AbFile_jm_isDirectory_0
    procedure :: jm_isFile_0 => AbFile_jm_isFile_0
    procedure :: jm_isHidden_0 => AbFile_jm_isHidden_0
    procedure :: jm_lastModified_0 => AbFile_jm_lastModified_0
    procedure :: jm_length_0 => AbFile_jm_length_0
    procedure :: jm_createNewFile_0 => AbFile_jm_createNewFile_0
    procedure :: jm_delete_0 => AbFile_jm_delete_0
    procedure :: jm_deleteOnExit_0 => AbFile_jm_deleteOnExit_0
    procedure :: jm_list_0 => AbFile_jm_list_0
    procedure :: jm_listWithFilter_1 => AbFile_jm_listWithFilter_1
    procedure :: jm_listFiles_0 => AbFile_jm_listFiles_0
    procedure :: jm_listFilesFileNameFilter_1 => AbFile_jm_listFilesFileNameFilter_1
    procedure :: jm_listFilesFileFilter_1 => AbFile_jm_listFilesFileFilter_1
    procedure :: jm_mkdir_0 => AbFile_jm_mkdir_0
    procedure :: jm_mkdirs_0 => AbFile_jm_mkdirs_0
    procedure :: jm_renameTo_1 => AbFile_jm_renameTo_1
    procedure :: jm_setLastModified_1 => AbFile_jm_setLastModified_1
    procedure :: jm_setReadOnly_0 => AbFile_jm_setReadOnly_0
    procedure :: jm_setWritable_2 => AbFile_jm_setWritable_2
    procedure :: jm_setWritable_1 => AbFile_jm_setWritable_1
    procedure :: jm_setReadable_2 => AbFile_jm_setReadable_2
    procedure :: jm_setReadable_1 => AbFile_jm_setReadable_1
    procedure :: jm_setExecutable_2 => AbFile_jm_setExecutable_2
    procedure :: jm_setExecutable_1 => AbFile_jm_setExecutable_1
    procedure :: jm_canExecute_0 => AbFile_jm_canExecute_0
    procedure :: jm_getTotalSpace_0 => AbFile_jm_getTotalSpace_0
    procedure :: jm_getFreeSpace_0 => AbFile_jm_getFreeSpace_0
    procedure :: jm_getUsableSpace_0 => AbFile_jm_getUsableSpace_0
    procedure :: jm_compareTo_1 => AbFile_jm_compareTo_1
    procedure :: jm_equals_1 => AbFile_jm_equals_1
    procedure :: jm_hashCode_0 => AbFile_jm_hashCode_0
    procedure :: jm_toString_0 => AbFile_jm_toString_0
  end type

  class(AbFile), pointer, save :: AbFile_jcell_NULL_FILE => null()
  logical, save :: AbFile_jset_NULL_FILE = .false.

contains

  function AbFile_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFile), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFile)
      jresult => object
    end select
  end function

  function AbFile_jstatic_NULL_FILE() result(jresult)
    class(AbFile), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. AbFile_jset_NULL_FILE) then
      AbFile_jset_NULL_FILE = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    AbFile_jcell_NULL_FILE => AbFile_jm_createAbFileFromRawPath_1(jtemp1%f_EMPTY_STRING)
    end if
    jresult => AbFile_jcell_NULL_FILE
  end function

  subroutine AbFile_jsetstatic_NULL_FILE(jvalue)
    class(AbFile), target, optional :: jvalue
    AbFile_jset_NULL_FILE = .true.
    if (present(jvalue)) then
      AbFile_jcell_NULL_FILE => jvalue
    else
      AbFile_jcell_NULL_FILE => null()
    end if
  end subroutine

  recursive function AbFile_jnew_1(j_file) result(this)
    class(File), target, optional :: j_file
    class(AbFile), pointer :: this
    allocate(this)
    this%jclass = 'AbFile'
    
        this%f_file => j_file
  end function

  recursive function AbFile_jm_createAbFileWithChild_2(j_file, j_childPathName) result(jresult)
    class(AbFile), target, optional :: j_file
    character(len=*), intent(in) :: j_childPathName
    class(AbFile), pointer :: jresult
        jresult => AbFile_jnew_1(File_jnew_2(j_file%jm_getFile_0(), j_childPathName))
        return
  end function

  recursive function AbFile_jm_createAbFile_1(j_filePath) result(jresult)
    character(len=*), intent(in) :: j_filePath
    class(AbFile), pointer :: jresult
    class(AbPath), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
        jtemp3 => StringUtil_jm_getInstance_0()
        jtemp2 => AbPath_jnew_2(j_filePath, jtemp3%f_EMPTY_STRING)
        jresult => AbFile_jnew_1(File_jnew_1(jtemp2%jm_toFileSystemString_0()))
        return
  end function

  recursive function AbFile_jm_createAbFilePathAndName_2(j_filePath, j_fileName) result(jresult)
    character(len=*), intent(in) :: j_filePath
    character(len=*), intent(in) :: j_fileName
    class(AbFile), pointer :: jresult
    class(AbPath), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
        jtemp5 => StringUtil_jm_getInstance_0()
        jtemp4 => AbPath_jnew_2(j_filePath, jtemp5%f_EMPTY_STRING)
        jresult => AbFile_jnew_1(File_jnew_2(jtemp4%jm_toFileSystemString_0(), j_fileName))
        return
  end function

  recursive function AbFile_jm_createAbFileFromAbPath_1(j_abPath) result(jresult)
    class(AbPath), target, optional :: j_abPath
    class(AbFile), pointer :: jresult
        jresult => AbFile_jnew_1(File_jnew_1(j_abPath%jm_toFileSystemString_0()))
        return
  end function

  recursive function AbFile_jm_createAbFileFromRawPath_1(j_filePath) result(jresult)
    character(len=*), intent(in) :: j_filePath
    class(AbFile), pointer :: jresult
        jresult => AbFile_jnew_1(File_jnew_1(j_filePath))
        return
  end function

  recursive function AbFile_jm_getFile_0(this) result(jresult)
    class(AbFile), target :: this
    class(File), pointer :: jresult
        jresult => this%f_file
        return
  end function

  recursive function AbFile_jm_getName_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_getName_0()
        return
  end function

  recursive function AbFile_jm_getParent_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_getParent_0()
        return
  end function

  recursive function AbFile_jm_getParentFile_0(this) result(jresult)
    class(AbFile), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_file%jm_getParentFile_0()
        return
  end function

  recursive function AbFile_jm_getPath_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_getPath_0()
        return
  end function

  recursive function AbFile_jm_isAbsolute_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_isAbsolute_0()
        return
  end function

  recursive function AbFile_jm_getAbsolutePath_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_getAbsolutePath_0()
        return
  end function

  recursive function AbFile_jm_getAbsoluteFile_0(this) result(jresult)
    class(AbFile), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_file%jm_getAbsoluteFile_0()
        return
  end function

  recursive function AbFile_jm_getCanonicalPath_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_getCanonicalPath_0()
        return
  end function

  recursive function AbFile_jm_getCanonicalFile_0(this) result(jresult)
    class(AbFile), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_file%jm_getCanonicalFile_0()
        return
  end function

  recursive function AbFile_jm_toURI_0(this) result(jresult)
    class(AbFile), target :: this
    class(URI), pointer :: jresult
        jresult => this%f_file%jm_toURI_0()
        return
  end function

  recursive function AbFile_jm_canRead_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_canRead_0()
        return
  end function

  recursive function AbFile_jm_canWrite_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_canWrite_0()
        return
  end function

  recursive function AbFile_jm_exists_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_exists_0()
        return
  end function

  recursive function AbFile_jm_isDirectory_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_isDirectory_0()
        return
  end function

  recursive function AbFile_jm_isFile_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_isFile_0()
        return
  end function

  recursive function AbFile_jm_isHidden_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_isHidden_0()
        return
  end function

  recursive function AbFile_jm_lastModified_0(this) result(jresult)
    class(AbFile), target :: this
    integer(8) :: jresult
        jresult = this%f_file%jm_lastModified_0()
        return
  end function

  recursive function AbFile_jm_length_0(this) result(jresult)
    class(AbFile), target :: this
    integer(8) :: jresult
        jresult = int(this%f_file%jm_length_0(), 8)
        return
  end function

  recursive function AbFile_jm_createNewFile_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_createNewFile_0()
        return
  end function

  recursive function AbFile_jm_delete_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_delete_0()
        return
  end function

  recursive subroutine AbFile_jm_deleteOnExit_0(this)
    class(AbFile), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_file%jm_deleteOnExit_0()
  end subroutine

  recursive function AbFile_jm_list_0(this) result(jresult)
    class(AbFile), target :: this
    type(JString), allocatable :: jresult(:)
        jresult = this%f_file%jm_list_0()
        return
  end function

  recursive function AbFile_jm_listWithFilter_1(this, j_filter) result(jresult)
    class(AbFile), target :: this
    class(FilenameFilter), target, optional :: j_filter
    type(JString), allocatable :: jresult(:)
        jresult = this%f_file%jm_list_1(j_filter)
        return
  end function

  recursive function AbFile_jm_listFiles_0(this) result(jresult)
    class(AbFile), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_file%jm_listFiles_0()
        return
  end function

  recursive function AbFile_jm_listFilesFileNameFilter_1(this, j_filter) result(jresult)
    class(AbFile), target :: this
    class(FilenameFilter), target, optional :: j_filter
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_file%jm_listFiles_1(j_filter)
        return
  end function

  recursive function AbFile_jm_listFilesFileFilter_1(this, j_filter) result(jresult)
    class(AbFile), target :: this
    class(FileFilter), target, optional :: j_filter
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_file%jm_listFiles_1(j_filter)
        return
  end function

  recursive function AbFile_jm_mkdir_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_mkdir_0()
        return
  end function

  recursive function AbFile_jm_mkdirs_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_mkdirs_0()
        return
  end function

  recursive function AbFile_jm_renameTo_1(this, j_dest) result(jresult)
    class(AbFile), target :: this
    class(AbFile), target, optional :: j_dest
    logical :: jresult
        jresult = this%f_file%jm_renameTo_1(j_dest%jm_getFile_0())
        return
  end function

  recursive function AbFile_jm_setLastModified_1(this, j_time) result(jresult)
    class(AbFile), target :: this
    integer(8), value :: j_time
    logical :: jresult
        jresult = this%f_file%jm_setLastModified_1(j_time)
        return
  end function

  recursive function AbFile_jm_setReadOnly_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_setReadOnly_0()
        return
  end function

  recursive function AbFile_jm_setWritable_2(this, j_writable, j_ownerOnly) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_writable
    logical, value :: j_ownerOnly
    logical :: jresult
        jresult = this%f_file%jm_setExecutable_2(j_writable, j_ownerOnly)
        return
  end function

  recursive function AbFile_jm_setWritable_1(this, j_writable) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_writable
    logical :: jresult
        jresult = this%f_file%jm_setWritable_1(j_writable)
        return
  end function

  recursive function AbFile_jm_setReadable_2(this, j_readable, j_ownerOnly) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_readable
    logical, value :: j_ownerOnly
    logical :: jresult
        jresult = this%f_file%jm_setReadable_2(j_readable, j_ownerOnly)
        return
  end function

  recursive function AbFile_jm_setReadable_1(this, j_readable) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_readable
    logical :: jresult
        jresult = this%f_file%jm_setReadable_1(j_readable)
        return
  end function

  recursive function AbFile_jm_setExecutable_2(this, j_executable, j_ownerOnly) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_executable
    logical, value :: j_ownerOnly
    logical :: jresult
        jresult = this%f_file%jm_setExecutable_2(j_executable, j_ownerOnly)
        return
  end function

  recursive function AbFile_jm_setExecutable_1(this, j_executable) result(jresult)
    class(AbFile), target :: this
    logical, value :: j_executable
    logical :: jresult
        jresult = this%f_file%jm_setExecutable_1(j_executable)
        return
  end function

  recursive function AbFile_jm_canExecute_0(this) result(jresult)
    class(AbFile), target :: this
    logical :: jresult
        jresult = this%f_file%jm_canExecute_0()
        return
  end function

  recursive function AbFile_jm_getTotalSpace_0(this) result(jresult)
    class(AbFile), target :: this
    integer(8) :: jresult
        jresult = this%f_file%jm_getTotalSpace_0()
        return
  end function

  recursive function AbFile_jm_getFreeSpace_0(this) result(jresult)
    class(AbFile), target :: this
    integer(8) :: jresult
        jresult = this%f_file%jm_getFreeSpace_0()
        return
  end function

  recursive function AbFile_jm_getUsableSpace_0(this) result(jresult)
    class(AbFile), target :: this
    integer(8) :: jresult
        jresult = this%f_file%jm_getUsableSpace_0()
        return
  end function

  recursive function AbFile_jm_compareTo_1(this, j_pathname) result(jresult)
    class(AbFile), target :: this
    class(File), target, optional :: j_pathname
    integer(4) :: jresult
        jresult = this%f_file%jm_compareTo_1(j_pathname)
        return
  end function

  recursive function AbFile_jm_equals_1(this, j_obj) result(jresult)
    class(AbFile), target :: this
    class(JObject), target, optional :: j_obj
    logical :: jresult
    class(TsUtil), pointer :: jtemp6
        jtemp6 => TsUtil_jm_getInstance_0()
        jresult = jtemp6%jm_equalsNotstring_2(this%f_file, j_obj)
        return
  end function

  recursive function AbFile_jm_hashCode_0(this) result(jresult)
    class(AbFile), target :: this
    integer(4) :: jresult
        jresult = this%f_file%jm_hashCode_0()
        return
  end function

  recursive function AbFile_jm_toString_0(this) result(jresult)
    class(AbFile), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_file%jm_toString_0()
        return
  end function
end module AbFile_m

