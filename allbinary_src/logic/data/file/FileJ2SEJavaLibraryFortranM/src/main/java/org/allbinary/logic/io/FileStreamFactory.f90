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
module FileStreamFactory_m
  use JR_m
  use NullUtil_m
  use AbFile_m
  use AbPath_m
  use AbFileInputStream_m
  use AbFileOutputStream_m
  implicit none

  type, extends(JObject) :: FileStreamFactory
  contains
    procedure :: jm_getFileInputStreamInstance_2 => FileStreamFactory_jm_getFileInputStreamInstance_2
    procedure :: jm_getFileOutputStreamInstance_2 => FileStreamFactory_jm_getFileOutputStreamInstance_2
    procedure :: jm_delete_2 => FileStreamFactory_jm_delete_2
  end type

  class(JObject), pointer, save :: FileStreamFactory_jcell_SINGLETON => null()
  logical, save :: FileStreamFactory_jset_SINGLETON = .false.

contains

  function FileStreamFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FileStreamFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FileStreamFactory)
      jresult => object
    end select
  end function

  function FileStreamFactory_jstatic_SINGLETON() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. FileStreamFactory_jset_SINGLETON) then
      FileStreamFactory_jset_SINGLETON = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    FileStreamFactory_jcell_SINGLETON => jtemp1%f_NULL_OBJECT
    end if
    jresult => FileStreamFactory_jcell_SINGLETON
  end function

  subroutine FileStreamFactory_jsetstatic_SINGLETON(jvalue)
    class(JObject), target, optional :: jvalue
    FileStreamFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      FileStreamFactory_jcell_SINGLETON => jvalue
    else
      FileStreamFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function FileStreamFactory_jnew_0() result(this)
    class(FileStreamFactory), pointer :: this
    allocate(this)
    this%jclass = 'FileStreamFactory'
        continue
  end function

  recursive function FileStreamFactory_jm_getInstance_0() result(jresult)
    class(FileStreamFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(FileStreamFactory_jstatic_SINGLETON(), jtemp2%f_NULL_OBJECT)) then
            call FileStreamFactory_jsetstatic_SINGLETON(FileStreamFactory_jnew_0())
        end if
        jresult => FileStreamFactory_jcast(FileStreamFactory_jstatic_SINGLETON())
        return
  end function

  recursive function FileStreamFactory_jm_getFileInputStreamInstance_2(this, j_path, j_fileName) result(jresult)
    class(FileStreamFactory), target :: this
    character(len=*), intent(in) :: j_path
    character(len=*), intent(in) :: j_fileName
    class(AbFileInputStream), pointer :: jresult
    class(AbPath), pointer :: j_FILEABPATH
    class(AbFile), pointer :: j_file
        j_FILEABPATH => AbPath_jnew_2(j_path, j_fileName)
        j_file => AbFile_jm_createAbFileFromAbPath_1(j_FILEABPATH)
        jresult => AbFileInputStream_jm_createFromAbFile_1(j_file)
        return
  end function

  recursive function FileStreamFactory_jm_getFileOutputStreamInstance_2(this, j_path, j_fileName) result(jresult)
    class(FileStreamFactory), target :: this
    character(len=*), intent(in) :: j_path
    character(len=*), intent(in) :: j_fileName
    class(AbFileOutputStream), pointer :: jresult
    class(AbPath), pointer :: j_FILEABPATH
    class(AbFile), pointer :: j_file
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_FILEABPATH => AbPath_jnew_2(j_path, j_fileName)
        j_file => AbFile_jm_createAbFileFromAbPath_1(j_FILEABPATH)
        if (j_file%jm_exists_0()) then
            jdiscardBoolean = j_file%jm_delete_0()
            jdiscardBoolean = j_file%jm_createNewFile_0()
        end if
        jresult => AbFileOutputStream_jm_createFromAbFile_1(j_file)
        return
  end function

  recursive subroutine FileStreamFactory_jm_delete_2(this, j_path, j_fileName)
    class(FileStreamFactory), target :: this
    character(len=*), intent(in) :: j_path
    character(len=*), intent(in) :: j_fileName
    class(AbPath), pointer :: j_FILEABPATH
    class(AbFile), pointer :: j_file
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_FILEABPATH => AbPath_jnew_2(j_path, j_fileName)
        j_file => AbFile_jm_createAbFileFromAbPath_1(j_FILEABPATH)
        jdiscardBoolean = j_file%jm_delete_0()
  end subroutine
end module FileStreamFactory_m

