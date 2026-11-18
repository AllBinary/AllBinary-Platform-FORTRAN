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
module DataOutputStreamFactory_m
  use JR_m
  use AbFile_m
  use AbFileOutputStream_m
  use AbDataOutputStream_m
  use FileStreamFactory_m
  implicit none

  type, extends(JObject) :: DataOutputStreamFactory
  contains
    procedure :: jm_getInstanceForAbFile_1 => DataOutputStreamFactory_jm_getInstanceForAbFile_1
    procedure :: jm_getInstance_2 => DataOutputStreamFactory_jm_getInstance_2
  end type

  class(DataOutputStreamFactory), pointer, save :: DataOutputStreamFactory_jcell_instance => null()
  logical, save :: DataOutputStreamFactory_jset_instance = .false.

contains

  function DataOutputStreamFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DataOutputStreamFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DataOutputStreamFactory)
      jresult => object
    end select
  end function

  function DataOutputStreamFactory_jstatic_instance() result(jresult)
    class(DataOutputStreamFactory), pointer :: jresult
    if (.not. DataOutputStreamFactory_jset_instance) then
      DataOutputStreamFactory_jset_instance = .true.
      DataOutputStreamFactory_jcell_instance => DataOutputStreamFactory_jnew_0()
    end if
    jresult => DataOutputStreamFactory_jcell_instance
  end function

  subroutine DataOutputStreamFactory_jsetstatic_instance(jvalue)
    class(DataOutputStreamFactory), target, optional :: jvalue
    DataOutputStreamFactory_jset_instance = .true.
    if (present(jvalue)) then
      DataOutputStreamFactory_jcell_instance => jvalue
    else
      DataOutputStreamFactory_jcell_instance => null()
    end if
  end subroutine

  function DataOutputStreamFactory_jnew_0() result(this)
    class(DataOutputStreamFactory), pointer :: this
    allocate(this)
    this%jclass = 'DataOutputStreamFactory'
  end function

  recursive function DataOutputStreamFactory_jm_getInstance_0() result(jresult)
    class(DataOutputStreamFactory), pointer :: jresult
        jresult => DataOutputStreamFactory_jstatic_instance()
        return
  end function

  recursive function DataOutputStreamFactory_jm_getInstanceForAbFile_1(this, j_file) result(jresult)
    class(DataOutputStreamFactory), target :: this
    class(AbFile), target, optional :: j_file
    class(AbDataOutputStream), pointer :: jresult
    class(AbFileOutputStream), pointer :: j_idFileOutputStream
    class(AbDataOutputStream), pointer :: j_idOutData
        j_idFileOutputStream => AbFileOutputStream_jm_createFromAbFile_1(j_file)
        j_idOutData => AbDataOutputStream_jnew_1(j_idFileOutputStream)
        jresult => j_idOutData
        return
  end function

  recursive function DataOutputStreamFactory_jm_getInstance_2(this, j_filePath, j_fileName) result(jresult)
    class(DataOutputStreamFactory), target :: this
    character(len=*), intent(in) :: j_filePath
    character(len=*), intent(in) :: j_fileName
    class(AbDataOutputStream), pointer :: jresult
    class(FileStreamFactory), pointer :: j_fileStreamFactory
    class(AbFileOutputStream), pointer :: j_fileOutputStream
    class(AbDataOutputStream), pointer :: j_idOutData
        j_fileStreamFactory => FileStreamFactory_jm_getInstance_0()
        j_fileOutputStream => j_fileStreamFactory%jm_getFileOutputStreamInstance_2(j_filePath, j_fileName)
        j_idOutData => AbDataOutputStream_jnew_1(j_fileOutputStream)
        jresult => j_idOutData
        return
  end function
end module DataOutputStreamFactory_m

