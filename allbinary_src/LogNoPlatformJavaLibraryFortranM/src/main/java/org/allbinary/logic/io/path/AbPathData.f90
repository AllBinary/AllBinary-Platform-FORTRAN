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
module AbPathData_m
  use JR_m
  use FilePathData_m
  use StringUtil_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: AbPathData
    character(len=:), allocatable :: f_EXTENSION_SEP
    integer(4) :: f_SEPARATORCHAR = 0
    character(len=:), allocatable :: f_SEPARATOR
  contains
    procedure :: jm_getExtensionIndex_1 => AbPathData_jm_getExtensionIndex_1
    procedure :: jm_getExtensionWithDot_1 => AbPathData_jm_getExtensionWithDot_1
    procedure :: jm_getExtension_1 => AbPathData_jm_getExtension_1
    procedure :: jm_getNameFromPath_1 => AbPathData_jm_getNameFromPath_1
    procedure :: jm_removeNameFromPath_1 => AbPathData_jm_removeNameFromPath_1
  end type

  class(AbPathData), pointer, save :: AbPathData_jcell_instance => null()
  logical, save :: AbPathData_jset_instance = .false.

contains

  function AbPathData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbPathData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbPathData)
      jresult => object
    end select
  end function

  function AbPathData_jstatic_instance() result(jresult)
    class(AbPathData), pointer :: jresult
    if (.not. AbPathData_jset_instance) then
      AbPathData_jset_instance = .true.
      AbPathData_jcell_instance => AbPathData_jnew_0()
    end if
    jresult => AbPathData_jcell_instance
  end function

  subroutine AbPathData_jsetstatic_instance(jvalue)
    class(AbPathData), target, optional :: jvalue
    AbPathData_jset_instance = .true.
    if (present(jvalue)) then
      AbPathData_jcell_instance => jvalue
    else
      AbPathData_jcell_instance => null()
    end if
  end subroutine

  recursive function AbPathData_jnew_0() result(this)
    class(AbPathData), pointer :: this
    class(CommonSeps), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    allocate(this)
    this%jclass = 'AbPathData'
    this%f_EXTENSION_SEP = ''
    this%f_SEPARATOR = ''
    jtemp1 => CommonSeps_jm_getInstance_0()
    this%f_EXTENSION_SEP = jtemp1%f_PERIOD
    this%f_SEPARATORCHAR = iachar('/')
    jtemp2 => CommonSeps_jm_getInstance_0()
    this%f_SEPARATOR = jtemp2%f_FORWARD_SLASH
        continue
  end function

  recursive function AbPathData_jm_getInstance_0() result(jresult)
    class(AbPathData), pointer :: jresult
        jresult => AbPathData_jstatic_instance()
        return
  end function

  recursive function AbPathData_jm_getExtensionIndex_1(this, j_filePath) result(jresult)
    class(AbPathData), target :: this
    character(len=*), intent(in) :: j_filePath
    integer(4) :: jresult
    integer(4) :: j_indexOfFileExtensionDelmiter
    integer(4) :: j_indexOfLatDelimiter
        j_indexOfFileExtensionDelmiter = JR_lastIndexOf(j_filePath, this%f_EXTENSION_SEP)
        j_indexOfLatDelimiter = JR_lastIndexOf(j_filePath, this%f_SEPARATORCHAR)
        if ((j_indexOfFileExtensionDelmiter < 0)) then
            jresult = (-1)
            return
        end if
        if ((j_indexOfFileExtensionDelmiter < j_indexOfLatDelimiter)) then
            jresult = (-1)
            return
        end if
        jresult = j_indexOfFileExtensionDelmiter
        return
  end function

  recursive function AbPathData_jm_getExtensionWithDot_1(this, j_filePath) result(jresult)
    class(AbPathData), target :: this
    character(len=*), intent(in) :: j_filePath
    character(len=:), allocatable :: jresult
    integer(4) :: j_indexOfFileExtensionDelmiter
    character(len=:), allocatable :: j_extension
    class(StringUtil), pointer :: jtemp3
        j_indexOfFileExtensionDelmiter = this%jm_getExtensionIndex_1(j_filePath)
        jtemp3 => StringUtil_jm_getInstance_0()
        j_extension = jtemp3%f_EMPTY_STRING
        if ((j_indexOfFileExtensionDelmiter >= 0)) then
            j_extension = JR_substring(j_filePath, j_indexOfFileExtensionDelmiter)
        end if
        jresult = j_extension
        return
  end function

  recursive function AbPathData_jm_getExtension_1(this, j_filePath) result(jresult)
    class(AbPathData), target :: this
    character(len=*), intent(in) :: j_filePath
    character(len=:), allocatable :: jresult
    integer(4) :: j_indexOfFileExtensionDelmiter
    character(len=:), allocatable :: j_extension
    class(StringUtil), pointer :: jtemp4
        j_indexOfFileExtensionDelmiter = this%jm_getExtensionIndex_1(j_filePath)
        jtemp4 => StringUtil_jm_getInstance_0()
        j_extension = jtemp4%f_EMPTY_STRING
        if ((j_indexOfFileExtensionDelmiter >= 0)) then
            j_extension = JR_substring(j_filePath, (j_indexOfFileExtensionDelmiter + 1))
        end if
        jresult = j_extension
        return
  end function

  recursive function AbPathData_jm_getNameFromPath_1(this, j_path) result(jresult)
    class(AbPathData), target :: this
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
    integer(4) :: j_endIndex
    character(len=:), allocatable :: j_categoryName
    class(FilePathData), pointer :: jtemp5
        j_endIndex = JR_lastIndexOf(j_path, this%f_SEPARATORCHAR)
        if ((j_endIndex < 0)) then
            jtemp5 => FilePathData_jm_getInstance_0()
            j_endIndex = JR_lastIndexOf(j_path, jtemp5%f_SEPARATORCHAR)
        end if
        if ((j_endIndex < 0)) then
            jresult = j_path
            return
        end if
        if ((len(j_path) == (j_endIndex + 1))) then
            j_categoryName = JR_substring(j_path, 0, j_endIndex)
            jresult = this%jm_getNameFromPath_1(j_categoryName)
            return
        else
            j_categoryName = JR_substring(j_path, (j_endIndex + 1))
            jresult = j_categoryName
            return
        end if
  end function

  recursive function AbPathData_jm_removeNameFromPath_1(this, j_path) result(jresult)
    class(AbPathData), target :: this
    character(len=*), intent(in) :: j_path
    character(len=:), allocatable :: jresult
    integer(4) :: j_endIndex
    character(len=:), allocatable :: j_pathWithoutName
    class(FilePathData), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
        j_endIndex = JR_lastIndexOf(j_path, this%f_SEPARATORCHAR)
        if ((j_endIndex < 0)) then
            jtemp6 => FilePathData_jm_getInstance_0()
            j_endIndex = JR_lastIndexOf(j_path, jtemp6%f_SEPARATORCHAR)
        end if
        if ((j_endIndex < 0)) then
            jtemp7 => StringUtil_jm_getInstance_0()
            jresult = jtemp7%f_EMPTY_STRING
            return
        end if
        if ((len(j_path) == (j_endIndex + 1))) then
            jresult = this%jm_removeNameFromPath_1(JR_substring(j_path, 0, (j_endIndex - 1)))
            return
        else
            j_pathWithoutName = JR_substring(j_path, 0, j_endIndex)
            jresult = j_pathWithoutName
            return
        end if
  end function
end module AbPathData_m

