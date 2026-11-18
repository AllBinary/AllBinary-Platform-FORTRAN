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
! package org.allbinary.logic.io.path
module PathUtil_m
  use JR_m
  use FilePathData_m
  use StringUtil_m
  use StringValidationUtil_m
  use AbPathData_m
  use AbFilePath_m
  use AbPath_m
  implicit none

  type, extends(JObject) :: PathUtil
    class(AbPathData), pointer :: f_abPathData => null()
    class(FilePathData), pointer :: f_filePathData => null()
  contains
    procedure :: jm_getExtensionWithAbFilePath_1 => PathUtil_jm_getExtensionWithAbFilePath_1
    procedure :: jm_getExtensionWithAbPath_1 => PathUtil_jm_getExtensionWithAbPath_1
    procedure :: jm_getWithoutExtensionWithAbFilePath_1 => PathUtil_jm_getWithoutExtensionWithAbFilePath_1
    procedure :: jm_getWithoutExtensionWithAbPath_1 => PathUtil_jm_getWithoutExtensionWithAbPath_1
    procedure :: jm_getWithoutExtension_1 => PathUtil_jm_getWithoutExtension_1
    procedure :: jm_isValid_1 => PathUtil_jm_isValid_1
    procedure :: jm_isValidStart_1 => PathUtil_jm_isValidStart_1
    procedure :: jm_isValidEnd_1 => PathUtil_jm_isValidEnd_1
    procedure :: jm_adjustStart_1 => PathUtil_jm_adjustStart_1
    procedure :: jm_adjustEnd_1 => PathUtil_jm_adjustEnd_1
    procedure :: jm_adjust_1 => PathUtil_jm_adjust_1
    procedure :: jm_removeNameFromPath_1 => PathUtil_jm_removeNameFromPath_1
  end type

  class(PathUtil), pointer, save :: PathUtil_jcell_instance => null()
  logical, save :: PathUtil_jset_instance = .false.

contains

  function PathUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PathUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PathUtil)
      jresult => object
    end select
  end function

  function PathUtil_jstatic_instance() result(jresult)
    class(PathUtil), pointer :: jresult
    if (.not. PathUtil_jset_instance) then
      PathUtil_jset_instance = .true.
      PathUtil_jcell_instance => PathUtil_jnew_0()
    end if
    jresult => PathUtil_jcell_instance
  end function

  subroutine PathUtil_jsetstatic_instance(jvalue)
    class(PathUtil), target, optional :: jvalue
    PathUtil_jset_instance = .true.
    if (present(jvalue)) then
      PathUtil_jcell_instance => jvalue
    else
      PathUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function PathUtil_jnew_0() result(this)
    class(PathUtil), pointer :: this
    allocate(this)
    this%jclass = 'PathUtil'
    this%f_abPathData => AbPathData_jm_getInstance_0()
    this%f_filePathData => FilePathData_jm_getInstance_0()
        continue
  end function

  recursive function PathUtil_jm_getInstance_0() result(jresult)
    class(PathUtil), pointer :: jresult
        jresult => PathUtil_jstatic_instance()
        return
  end function

  recursive function PathUtil_jm_getExtensionWithAbFilePath_1(this, j_abFilePath) result(jresult)
    class(PathUtil), target :: this
    class(AbFilePath), target, optional :: j_abFilePath
    character(len=:), allocatable :: jresult
        jresult = this%f_abPathData%jm_getExtension_1(j_abFilePath%jm_toString_0())
        return
  end function

  recursive function PathUtil_jm_getExtensionWithAbPath_1(this, j_abPath) result(jresult)
    class(PathUtil), target :: this
    class(AbPath), target, optional :: j_abPath
    character(len=:), allocatable :: jresult
        jresult = this%f_abPathData%jm_getExtension_1(j_abPath%jm_toString_0())
        return
  end function

  recursive function PathUtil_jm_getWithoutExtensionWithAbFilePath_1(this, j_abFilePath) result(jresult)
    class(PathUtil), target :: this
    class(AbFilePath), target, optional :: j_abFilePath
    character(len=:), allocatable :: jresult
        jresult = this%jm_getWithoutExtension_1(j_abFilePath%jm_toString_0())
        return
  end function

  recursive function PathUtil_jm_getWithoutExtensionWithAbPath_1(this, j_abPath) result(jresult)
    class(PathUtil), target :: this
    class(AbPath), target, optional :: j_abPath
    character(len=:), allocatable :: jresult
        jresult = this%jm_getWithoutExtension_1(j_abPath%jm_toString_0())
        return
  end function

  recursive function PathUtil_jm_getWithoutExtension_1(this, j_filePath) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_filePath
    character(len=:), allocatable :: jresult
    integer(4) :: j_indexOfFileExtensionDelmiter
    character(len=:), allocatable :: j_pathWithoutExtension
        j_indexOfFileExtensionDelmiter = this%f_abPathData%jm_getExtensionIndex_1(j_filePath)
        j_pathWithoutExtension = j_filePath
        if ((j_indexOfFileExtensionDelmiter >= 0)) then
            j_pathWithoutExtension = JR_substring(j_filePath, 0, j_indexOfFileExtensionDelmiter)
        end if
        jresult = j_pathWithoutExtension
        return
  end function

  recursive function PathUtil_jm_isValid_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
        if (this%jm_isValidStart_1(j_path)) then
            if (this%jm_isValidEnd_1(j_path)) then
                jresult = .true.
                return
            end if
        end if
        jresult = .false.
        return
  end function

  recursive function PathUtil_jm_isValidStart_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
        if (((JR_charAt(j_path, 0) == this%f_abPathData%f_SEPARATORCHAR) .or. (JR_charAt(j_path, 0) == iachar('.')))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function PathUtil_jm_isValidEnd_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    logical :: jresult
    class(StringValidationUtil), pointer :: j_stringValidationUtil
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        if (j_stringValidationUtil%jm_isEmpty_1(j_path)) then
            jresult = .false.
            return
        end if
        if ((JR_charAt(j_path, (len(j_path) - 1)) == this%f_abPathData%f_SEPARATORCHAR)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function PathUtil_jm_adjustStart_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
        if ((.not. this%jm_isValidStart_1(j_path))) then
            j_path = (this%f_abPathData%f_SEPARATOR // j_path)
        end if
        jresult = j_path
        return
  end function

  recursive function PathUtil_jm_adjustEnd_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
        if ((.not. this%jm_isValidEnd_1(j_path))) then
            j_path = (j_path // this%f_abPathData%f_SEPARATOR)
        end if
        jresult = j_path
        return
  end function

  recursive function PathUtil_jm_adjust_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
    class(StringValidationUtil), pointer :: j_stringValidationUtil
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        if (j_stringValidationUtil%jm_isEmpty_1(j_path)) then
            jresult = this%f_abPathData%f_SEPARATOR
            return
        end if
        if ((JR_indexOf(j_path, JR_unescape('\\')) >= 0)) then
            j_path = JR_replace(j_path, 92, this%f_abPathData%f_SEPARATORCHAR)
        end if
        jresult = j_path
        return
  end function

  recursive function PathUtil_jm_removeNameFromPath_1(this, j_path) result(jresult)
    class(PathUtil), target :: this
    character(len=*), intent(in) :: j_path
    class(AbPath), pointer :: jresult
    integer(4) :: j_endIndex
    character(len=:), allocatable :: j_pathWithoutName
    class(StringUtil), pointer :: jtemp1
        j_endIndex = JR_lastIndexOf(j_path, this%f_abPathData%f_SEPARATOR)
        if ((j_endIndex < 0)) then
            j_endIndex = JR_lastIndexOf(j_path, this%f_filePathData%f_SEPARATORCHAR)
        end if
        if ((j_endIndex < 0)) then
            jresult => AbPath_jm_createAbPath_0()
            return
        end if
        if ((len(j_path) == (j_endIndex + 1))) then
            jresult => this%jm_removeNameFromPath_1(JR_substring(j_path, 0, (j_endIndex - 1)))
            return
        else
            j_pathWithoutName = JR_substring(j_path, 0, j_endIndex)
            jtemp1 => StringUtil_jm_getInstance_0()
            jresult => AbPath_jnew_2(j_pathWithoutName, jtemp1%f_EMPTY_STRING)
            return
        end if
  end function
end module PathUtil_m

