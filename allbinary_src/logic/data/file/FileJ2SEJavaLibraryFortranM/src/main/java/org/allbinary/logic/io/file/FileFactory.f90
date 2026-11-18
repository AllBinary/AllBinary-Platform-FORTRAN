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
module FileFactory_m
  use JR_m
  use AbFile_m
  implicit none

  type, extends(JObject) :: FileFactory
  contains
    procedure :: jm_getInstance_1 => FileFactory_jm_getInstance_1
    procedure :: jm_getInstance_2 => FileFactory_jm_getInstance_2
    procedure :: jm_isFile_1 => FileFactory_jm_isFile_1
  end type

  class(FileFactory), pointer, save :: FileFactory_jcell_instance => null()
  logical, save :: FileFactory_jset_instance = .false.

contains

  function FileFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FileFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FileFactory)
      jresult => object
    end select
  end function

  function FileFactory_jstatic_instance() result(jresult)
    class(FileFactory), pointer :: jresult
    if (.not. FileFactory_jset_instance) then
      FileFactory_jset_instance = .true.
      FileFactory_jcell_instance => FileFactory_jnew_0()
    end if
    jresult => FileFactory_jcell_instance
  end function

  subroutine FileFactory_jsetstatic_instance(jvalue)
    class(FileFactory), target, optional :: jvalue
    FileFactory_jset_instance = .true.
    if (present(jvalue)) then
      FileFactory_jcell_instance => jvalue
    else
      FileFactory_jcell_instance => null()
    end if
  end subroutine

  function FileFactory_jnew_0() result(this)
    class(FileFactory), pointer :: this
    allocate(this)
    this%jclass = 'FileFactory'
  end function

  recursive function FileFactory_jm_getInstance_0() result(jresult)
    class(FileFactory), pointer :: jresult
        jresult => FileFactory_jstatic_instance()
        return
  end function

  recursive function FileFactory_jm_getInstance_1(this, j_filePath) result(jresult)
    class(FileFactory), target :: this
    character(len=*), intent(in) :: j_filePath
    class(AbFile), pointer :: jresult
        jresult => AbFile_jm_createAbFileFromRawPath_1(j_filePath)
        return
  end function

  recursive function FileFactory_jm_getInstance_2(this, j_file, j_childFilePath) result(jresult)
    class(FileFactory), target :: this
    class(AbFile), target, optional :: j_file
    character(len=*), intent(in) :: j_childFilePath
    class(AbFile), pointer :: jresult
        jresult => AbFile_jm_createAbFileWithChild_2(j_file, j_childFilePath)
        return
  end function

  recursive function FileFactory_jm_isFile_1(this, j_path) result(jresult)
    class(FileFactory), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
    class(AbFile), pointer :: j_file
        j_file => AbFile_jm_createAbFile_1(j_path)
        if (j_file%jm_exists_0()) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module FileFactory_m

