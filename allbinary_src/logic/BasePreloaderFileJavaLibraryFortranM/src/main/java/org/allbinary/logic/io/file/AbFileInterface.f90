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
module AbFileInterface_m
  use JR_m
  use FilenameFilter_m
  use IOException_m
  use URI_m
  implicit none

  type, extends(JObject) :: AbFileInterface
  contains
    procedure :: jm_canRead_0 => AbFileInterface_jm_canRead_0
    procedure :: jm_canWrite_0 => AbFileInterface_jm_canWrite_0
    procedure :: jm_createNewFile_0 => AbFileInterface_jm_createNewFile_0
    procedure :: jm_delete_0 => AbFileInterface_jm_delete_0
    procedure :: jm_deleteOnExit_0 => AbFileInterface_jm_deleteOnExit_0
    procedure :: jm_exists_0 => AbFileInterface_jm_exists_0
    procedure :: jm_getAbsolutePath_0 => AbFileInterface_jm_getAbsolutePath_0
    procedure :: jm_getCanonicalPath_0 => AbFileInterface_jm_getCanonicalPath_0
    procedure :: jm_getParent_0 => AbFileInterface_jm_getParent_0
    procedure :: jm_getPath_0 => AbFileInterface_jm_getPath_0
    procedure :: jm_isAbsolute_0 => AbFileInterface_jm_isAbsolute_0
    procedure :: jm_isDirectory_0 => AbFileInterface_jm_isDirectory_0
    procedure :: jm_isFile_0 => AbFileInterface_jm_isFile_0
    procedure :: jm_isHidden_0 => AbFileInterface_jm_isHidden_0
    procedure :: jm_lastModified_0 => AbFileInterface_jm_lastModified_0
    procedure :: jm_length_0 => AbFileInterface_jm_length_0
    procedure :: jm_list_0 => AbFileInterface_jm_list_0
    procedure :: jm_listWithFilter_1 => AbFileInterface_jm_listWithFilter_1
    procedure :: jm_mkdir_0 => AbFileInterface_jm_mkdir_0
    procedure :: jm_mkdirs_0 => AbFileInterface_jm_mkdirs_0
    procedure :: jm_setLastModified_1 => AbFileInterface_jm_setLastModified_1
    procedure :: jm_setReadOnly_0 => AbFileInterface_jm_setReadOnly_0
    procedure :: jm_toString_0 => AbFileInterface_jm_toString_0
    procedure :: jm_toURI_0 => AbFileInterface_jm_toURI_0
  end type


contains

  function AbFileInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbFileInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbFileInterface)
      jresult => object
    end select
  end function

  function AbFileInterface_jnew_0() result(this)
    class(AbFileInterface), pointer :: this
    allocate(this)
    this%jclass = 'AbFileInterface'
  end function

  recursive function AbFileInterface_jm_canRead_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.canRead'
  end function

  recursive function AbFileInterface_jm_canWrite_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.canWrite'
  end function

  recursive function AbFileInterface_jm_createNewFile_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.createNewFile'
  end function

  recursive function AbFileInterface_jm_delete_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.delete'
  end function

  recursive subroutine AbFileInterface_jm_deleteOnExit_0(this)
    class(AbFileInterface), target :: this
    error stop 'AbstractMethodError: AbFileInterface.deleteOnExit'
  end subroutine

  recursive function AbFileInterface_jm_exists_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.exists'
  end function

  recursive function AbFileInterface_jm_getAbsolutePath_0(this) result(jresult)
    class(AbFileInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbFileInterface.getAbsolutePath'
  end function

  recursive function AbFileInterface_jm_getCanonicalPath_0(this) result(jresult)
    class(AbFileInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbFileInterface.getCanonicalPath'
  end function

  recursive function AbFileInterface_jm_getParent_0(this) result(jresult)
    class(AbFileInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbFileInterface.getParent'
  end function

  recursive function AbFileInterface_jm_getPath_0(this) result(jresult)
    class(AbFileInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbFileInterface.getPath'
  end function

  recursive function AbFileInterface_jm_isAbsolute_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.isAbsolute'
  end function

  recursive function AbFileInterface_jm_isDirectory_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.isDirectory'
  end function

  recursive function AbFileInterface_jm_isFile_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.isFile'
  end function

  recursive function AbFileInterface_jm_isHidden_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.isHidden'
  end function

  recursive function AbFileInterface_jm_lastModified_0(this) result(jresult)
    class(AbFileInterface), target :: this
    integer(8) :: jresult
    error stop 'AbstractMethodError: AbFileInterface.lastModified'
  end function

  recursive function AbFileInterface_jm_length_0(this) result(jresult)
    class(AbFileInterface), target :: this
    integer(8) :: jresult
    error stop 'AbstractMethodError: AbFileInterface.length'
  end function

  recursive function AbFileInterface_jm_list_0(this) result(jresult)
    class(AbFileInterface), target :: this
    type(JString), allocatable :: jresult(:)
    error stop 'AbstractMethodError: AbFileInterface.list'
  end function

  recursive function AbFileInterface_jm_listWithFilter_1(this, j_filter) result(jresult)
    class(AbFileInterface), target :: this
    class(FilenameFilter), target, optional :: j_filter
    type(JString), allocatable :: jresult(:)
    error stop 'AbstractMethodError: AbFileInterface.listWithFilter'
  end function

  recursive function AbFileInterface_jm_mkdir_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.mkdir'
  end function

  recursive function AbFileInterface_jm_mkdirs_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.mkdirs'
  end function

  recursive function AbFileInterface_jm_setLastModified_1(this, j_time) result(jresult)
    class(AbFileInterface), target :: this
    integer(8), value :: j_time
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.setLastModified'
  end function

  recursive function AbFileInterface_jm_setReadOnly_0(this) result(jresult)
    class(AbFileInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: AbFileInterface.setReadOnly'
  end function

  recursive function AbFileInterface_jm_toString_0(this) result(jresult)
    class(AbFileInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: AbFileInterface.toString'
  end function

  recursive function AbFileInterface_jm_toURI_0(this) result(jresult)
    class(AbFileInterface), target :: this
    class(URI), pointer :: jresult
    error stop 'AbstractMethodError: AbFileInterface.toURI'
  end function
end module AbFileInterface_m

