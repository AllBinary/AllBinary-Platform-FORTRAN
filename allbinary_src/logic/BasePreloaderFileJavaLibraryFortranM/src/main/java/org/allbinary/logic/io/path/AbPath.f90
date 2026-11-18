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
module AbPath_m
  use JR_m
  use FilePathData_m
  use FilePathUtil_m
  use StringMaker_m
  use StringUtil_m
  use StringValidationUtil_m
  use CommonSeps_m
  use AbPathData_m
  use PathUtil_m
  implicit none

  type, extends(JObject) :: AbPath
    class(CommonSeps), pointer :: f_commonSeps => null()
    class(AbPathData), pointer :: f_abPathData => null()
    class(PathUtil), pointer :: f_abPathUtil => null()
    character(len=:), allocatable :: f_EMPTY_STRING
    character(len=:), allocatable :: f_schema
    character(len=:), allocatable :: f_path
    character(len=:), allocatable :: f_nameP
    logical :: f_hasSchemaP = .false.
    integer(4) :: f_numberOfSeps = 0
  contains
    procedure :: jm_init_0 => AbPath_jm_init_0
    procedure :: jm_getSchema_1 => AbPath_jm_getSchema_1
    procedure :: jm_hasSchema_0 => AbPath_jm_hasSchema_0
    procedure :: jm_getPathFromPath_1 => AbPath_jm_getPathFromPath_1
    procedure :: jm_setName_1 => AbPath_jm_setName_1
    procedure :: jm_getName_0 => AbPath_jm_getName_0
    procedure :: jm_toString_0 => AbPath_jm_toString_0
    procedure :: jm_toFileSystemString_0 => AbPath_jm_toFileSystemString_0
    procedure :: jm_getPath_0 => AbPath_jm_getPath_0
    procedure :: jm_setPath_1 => AbPath_jm_setPath_1
  end type

  character(len=:), allocatable, save :: AbPath_jcell_NETWORK_SEP
  logical, save :: AbPath_jset_NETWORK_SEP = .false.

contains

  function AbPath_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbPath), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbPath)
      jresult => object
    end select
  end function

  function AbPath_jstatic_NETWORK_SEP() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. AbPath_jset_NETWORK_SEP) then
      AbPath_jset_NETWORK_SEP = .true.
      AbPath_jcell_NETWORK_SEP = ':/'
    end if
    jresult = AbPath_jcell_NETWORK_SEP
  end function

  subroutine AbPath_jsetstatic_NETWORK_SEP(jvalue)
    character(len=*), intent(in) :: jvalue
    AbPath_jset_NETWORK_SEP = .true.
    AbPath_jcell_NETWORK_SEP = jvalue
  end subroutine

  recursive function AbPath_jnew_2(j_aPath, j_name) result(this)
    character(len=*), intent(in) :: j_aPath
    character(len=*), intent(in) :: j_name
    class(AbPath), pointer :: this
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AbPath'
    this%f_EMPTY_STRING = ''
    this%f_schema = ''
    this%f_path = ''
    this%f_nameP = ''
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
    this%f_abPathData => AbPathData_jm_getInstance_0()
    this%f_abPathUtil => PathUtil_jm_getInstance_0()
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp2%f_EMPTY_STRING
    this%f_schema = this%f_EMPTY_STRING
    this%f_path = this%f_EMPTY_STRING
    this%f_nameP = this%f_EMPTY_STRING
    this%f_hasSchemaP = .false.
    this%f_numberOfSeps = 0
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        if ((.not. j_stringValidationUtil%jm_isEmpty_1(j_aPath))) then
            this%f_schema = this%jm_getSchema_1(j_aPath)
            this%f_nameP = j_name
            this%f_path = this%f_abPathUtil%jm_adjustEnd_1(this%f_abPathUtil%jm_adjust_1(this%jm_getPathFromPath_1(j_aPath)))
        else
            call this%jm_init_0()
            if ((.not. j_stringValidationUtil%jm_isEmpty_1(j_name))) then
                this%f_nameP = j_name
            end if
        end if
  end function

  recursive function AbPath_jm_createAbPath_0() result(jresult)
    class(AbPath), pointer :: jresult
    character(len=:), allocatable :: j_EMPTY_STRING
    class(StringUtil), pointer :: jtemp1
        continue ! try
            jtemp1 => StringUtil_jm_getInstance_0()
            j_EMPTY_STRING = jtemp1%f_EMPTY_STRING
            jresult => AbPath_jnew_2(j_EMPTY_STRING, j_EMPTY_STRING)
            return
  end function

  recursive subroutine AbPath_jm_init_0(this)
    class(AbPath), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_schema = this%f_EMPTY_STRING
        call this%jm_setPath_1(this%f_abPathData%f_SEPARATOR)
        this%f_nameP = this%f_EMPTY_STRING
  end subroutine

  recursive function AbPath_jm_getSchema_1(this, j_aPath) result(jresult)
    class(AbPath), target :: this
    character(len=*), intent(in) :: j_aPath
    character(len=:), allocatable :: jresult
    integer(4) :: j_beginIndex
        j_beginIndex = JR_indexOf(j_aPath, this%f_commonSeps%f_COLON)
        if ((j_beginIndex >= 0)) then
            this%f_hasSchemaP = .true.
            jresult = JR_substring(j_aPath, 0, j_beginIndex)
            return
        end if
        this%f_hasSchemaP = .false.
        jresult = this%f_EMPTY_STRING
        return
  end function

  recursive function AbPath_jm_hasSchema_0(this) result(jresult)
    class(AbPath), target :: this
    logical :: jresult
        jresult = this%f_hasSchemaP
        return
  end function

  recursive function AbPath_jm_getPathFromPath_1(this, j_aPath) result(jresult)
    class(AbPath), target :: this
    character(len=*), intent(in) :: j_aPath
    character(len=:), allocatable :: jresult
    class(FilePathData), pointer :: j_filePathData
    character(len=:), allocatable :: j_tempPath
    integer(4) :: j_beginIndex
        j_filePathData => FilePathData_jm_getInstance_0()
        j_tempPath = j_aPath
        if ((.not. this%jm_hasSchema_0())) then
            j_tempPath = this%f_abPathUtil%jm_adjustStart_1(j_tempPath)
        else
            j_beginIndex = JR_indexOf(j_tempPath, this%f_commonSeps%f_COLON)
            if ((j_beginIndex >= 0)) then
                j_beginIndex = j_beginIndex + 1
                do while (((JR_charAt(j_tempPath, j_beginIndex) == this%f_abPathData%f_SEPARATORCHAR) .or. (JR_charAt(j_tempPath, j_beginIndex) == j_filePathData%f_SEPARATORCHAR)))
                    j_beginIndex = j_beginIndex + 1
                    this%f_numberOfSeps = this%f_numberOfSeps + 1
                    if ((this%f_numberOfSeps > 2)) then
                        error stop JR_toString(JR_newJObject('Exception'))
                    end if
                end do
                j_tempPath = JR_substring(j_tempPath, j_beginIndex, len(j_tempPath))
            end if
        end if
        jresult = j_tempPath
        return
  end function

  recursive subroutine AbPath_jm_setName_1(this, j_name)
    class(AbPath), target :: this
    character(len=*), intent(in) :: j_name
        this%f_nameP = j_name
  end subroutine

  recursive function AbPath_jm_getName_0(this) result(jresult)
    class(AbPath), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_nameP
        return
  end function

  recursive function AbPath_jm_toString_0(this) result(jresult)
    class(AbPath), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        if (this%jm_hasSchema_0()) then
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_schema)
            jdiscardRef => j_stringBuffer%jm_append_1(AbPath_jstatic_NETWORK_SEP())
        end if
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getPath_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_nameP)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function AbPath_jm_toFileSystemString_0(this) result(jresult)
    class(AbPath), target :: this
    character(len=:), allocatable :: jresult
    class(FilePathData), pointer :: j_filePathData
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%jm_hasSchema_0()) then
            j_filePathData => FilePathData_jm_getInstance_0()
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_schema)
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_COLON)
            jdiscardRef => j_stringBuffer%jm_append_1(j_filePathData%f_PATH_START)
            jdiscardRef => j_stringBuffer%jm_append_1(FilePathUtil_jm_adjust_1(this%jm_getPath_0()))
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_nameP)
            jresult = j_stringBuffer%jm_toString_0()
            return
        else
            jresult = (FilePathUtil_jm_adjust_1(this%jm_getPath_0()) // this%f_nameP)
            return
        end if
  end function

  recursive function AbPath_jm_getPath_0(this) result(jresult)
    class(AbPath), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_path
        return
  end function

  recursive subroutine AbPath_jm_setPath_1(this, j_path)
    class(AbPath), target :: this
    character(len=*), intent(in) :: j_path
        this%f_path = j_path
  end subroutine
end module AbPath_m

