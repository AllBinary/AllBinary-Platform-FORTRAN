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
module BufferedWriterUtil_m
  use JR_m
  use BufferedWriter_m
  use FileWriter_m
  use LogUtil_m
  use AbFile_m
  use AbFileNativeUtil_m
  use AbPathData_m
  use StringMaker_m
  use CommonLabels_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: BufferedWriterUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CommonLabels), pointer :: f_commonLabels => null()
    character(len=:), allocatable :: f_REMOVING_OLD
  contains
    procedure :: jm_overwrite_2 => BufferedWriterUtil_jm_overwrite_2
    procedure :: jm_overwrite_2b => BufferedWriterUtil_jm_overwrite_2b
    procedure :: jm_write_2 => BufferedWriterUtil_jm_write_2
  end type

  class(BufferedWriterUtil), pointer, save :: BufferedWriterUtil_jcell_instance => null()
  logical, save :: BufferedWriterUtil_jset_instance = .false.

contains

  function BufferedWriterUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BufferedWriterUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BufferedWriterUtil)
      jresult => object
    end select
  end function

  function BufferedWriterUtil_jstatic_instance() result(jresult)
    class(BufferedWriterUtil), pointer :: jresult
    if (.not. BufferedWriterUtil_jset_instance) then
      BufferedWriterUtil_jset_instance = .true.
      BufferedWriterUtil_jcell_instance => BufferedWriterUtil_jnew_0()
    end if
    jresult => BufferedWriterUtil_jcell_instance
  end function

  subroutine BufferedWriterUtil_jsetstatic_instance(jvalue)
    class(BufferedWriterUtil), target, optional :: jvalue
    BufferedWriterUtil_jset_instance = .true.
    if (present(jvalue)) then
      BufferedWriterUtil_jcell_instance => jvalue
    else
      BufferedWriterUtil_jcell_instance => null()
    end if
  end subroutine

  function BufferedWriterUtil_jnew_0() result(this)
    class(BufferedWriterUtil), pointer :: this
    allocate(this)
    this%jclass = 'BufferedWriterUtil'
    this%f_REMOVING_OLD = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_commonLabels => CommonLabels_jm_getInstance_0()
    this%f_REMOVING_OLD = 'Remove old for overwriting: '
  end function

  recursive function BufferedWriterUtil_jm_getInstance_0() result(jresult)
    class(BufferedWriterUtil), pointer :: jresult
        jresult => BufferedWriterUtil_jstatic_instance()
        return
  end function

  recursive subroutine BufferedWriterUtil_jm_overwrite_2(this, j_path, j_data)
    class(BufferedWriterUtil), target :: this
    character(len=*), intent(in) :: j_path
    character(len=*), intent(in) :: j_data
    class(AbFile), pointer :: j_abFile
    character(len=:), allocatable :: j_name
    class(AbFile), pointer :: j_abFileDirectory
    class(StringMaker), pointer :: j_stringBuilder
    logical :: j_result
    class(AbPathData), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_abFile => AbFile_jm_createAbFile_1(j_path)
        if (j_abFile%jm_exists_0()) then
            call this%f_logUtil%jm_putF_3((this%f_REMOVING_OLD // j_path), this, this%f_commonStrings%f_CREATE)
            jdiscardBoolean = j_abFile%jm_delete_0()
        else
            jtemp1 => AbPathData_jm_getInstance_0()
            j_name = jtemp1%jm_removeNameFromPath_1(j_path)
            j_abFileDirectory => AbFile_jm_createAbFile_1(j_name)
            if (j_abFileDirectory%jm_exists_0()) then
                continue
            else
                j_stringBuilder => StringMaker_jnew_0()
                jtemp4 => j_stringBuilder%jm_append_1(this%f_commonStrings%f_CREATE)
                jtemp3 => jtemp4%jm_append_1(this%f_commonLabels%f_COLON_SEP)
                jtemp2 => jtemp3%jm_append_1(j_name)
                call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, this%f_commonStrings%f_CREATE)
                j_result = j_abFileDirectory%jm_mkdirs_0()
                jdiscardRef => j_stringBuilder%jm_delete_2(0, j_stringBuilder%jm_length_0())
                jtemp6 => j_stringBuilder%jm_append_1(this%f_commonLabels%f_RESULT_)
                jtemp5 => jtemp6%jm_appendboolean_1(j_result)
                call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_commonStrings%f_CREATE)
            end if
        end if
        call this%jm_write_2(j_abFile, j_data)
  end subroutine

  recursive subroutine BufferedWriterUtil_jm_overwrite_2b(this, j_abFile, j_data)
    class(BufferedWriterUtil), target :: this
    class(AbFile), target, optional :: j_abFile
    character(len=*), intent(in) :: j_data
    character(len=:), allocatable :: j_name
    class(AbFile), pointer :: j_abFileDirectory
    class(StringMaker), pointer :: j_stringBuilder
    logical :: j_result
    class(AbPathData), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_abFile%jm_exists_0()) then
            call this%f_logUtil%jm_putF_3((this%f_REMOVING_OLD // j_abFile%jm_getPath_0()), this, this%f_commonStrings%f_CREATE)
            jdiscardBoolean = j_abFile%jm_delete_0()
        else
            jtemp7 => AbPathData_jm_getInstance_0()
            j_name = jtemp7%jm_removeNameFromPath_1(j_abFile%jm_getAbsolutePath_0())
            j_abFileDirectory => AbFile_jm_createAbFile_1(j_name)
            if (j_abFileDirectory%jm_exists_0()) then
                continue
            else
                j_stringBuilder => StringMaker_jnew_0()
                jtemp10 => j_stringBuilder%jm_append_1(this%f_commonStrings%f_CREATE)
                jtemp9 => jtemp10%jm_append_1(this%f_commonLabels%f_COLON_SEP)
                jtemp8 => jtemp9%jm_append_1(j_name)
                call this%f_logUtil%jm_putF_3(jtemp8%jm_toString_0(), this, this%f_commonStrings%f_CREATE)
                j_result = j_abFileDirectory%jm_mkdirs_0()
                jdiscardRef => j_stringBuilder%jm_delete_2(0, j_stringBuilder%jm_length_0())
                jtemp12 => j_stringBuilder%jm_append_1(this%f_commonLabels%f_RESULT_)
                jtemp11 => jtemp12%jm_appendboolean_1(j_result)
                call this%f_logUtil%jm_putF_3(jtemp11%jm_toString_0(), this, this%f_commonStrings%f_CREATE)
            end if
        end if
        call this%jm_write_2(j_abFile, j_data)
  end subroutine

  recursive subroutine BufferedWriterUtil_jm_write_2(this, j_abFile, j_data)
    class(BufferedWriterUtil), target :: this
    class(AbFile), target, optional :: j_abFile
    character(len=*), intent(in) :: j_data
    class(BufferedWriter), pointer :: j_fileOut
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_fileOut => BufferedWriter_jnew_1(FileWriter_jnew_1(AbFileNativeUtil_jm_get_1(j_abFile)))
        call j_fileOut%jm_write_3(j_data, 0, len(j_data))
        call j_fileOut%jm_newLine_0()
        call j_fileOut%jm_flush_0()
  end subroutine
end module BufferedWriterUtil_m

