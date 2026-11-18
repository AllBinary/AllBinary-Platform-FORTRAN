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
! package org.allbinary.logic.system.security.licensing
module LicenseServerInitFileUtil_m
  use JR_m
  use InputStream_m
  use OutputStream_m
  use LicenseInitInfoUtil_m
  use ResourceUtil_m
  use LogUtil_m
  use FileStreamFactory_m
  use StreamUtil_m
  use FileFactory_m
  use SimpleFileUtil_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: LicenseServerInitFileUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(OutputStream), pointer :: f_NULL_OUTPUT_STREAM => null()
  contains
    procedure :: jm_init_0 => LicenseServerInitFileUtil_jm_init_0
    procedure :: jm_write_0 => LicenseServerInitFileUtil_jm_write_0
  end type


contains

  function LicenseServerInitFileUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseServerInitFileUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseServerInitFileUtil)
      jresult => object
    end select
  end function

  function LicenseServerInitFileUtil_jnew_0() result(this)
    class(LicenseServerInitFileUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseServerInitFileUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_NULL_OUTPUT_STREAM => SimpleFileUtil_jm_nullOutputStream_0()
  end function

  recursive subroutine LicenseServerInitFileUtil_jm_init_0(this)
    class(LicenseServerInitFileUtil), target :: this
    character(len=:), allocatable :: j_filePath
    class(LicenseInitInfoUtil), pointer :: jtemp1
    class(LicenseInitInfoUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(FileFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp1 => LicenseInitInfoUtil_jm_getInstance_0()
            j_filePath = jtemp1%f_INITFILENAME
            jtemp3 => StringUtil_jm_getInstance_0()
            jtemp2 => LicenseInitInfoUtil_jm_getInstance_0()
            call jtemp2%jm_setFilePath_1(jtemp3%f_EMPTY_STRING)
            jtemp4 => FileFactory_jm_getInstance_0()
            if (jtemp4%jm_isFile_1(j_filePath)) then
                call this%f_logUtil%jm_putF_3('Using Existing License File', this, this%f_commonStrings%f_INIT)
            else
                call this%jm_write_0()
            end if
  end subroutine

  recursive subroutine LicenseServerInitFileUtil_jm_write_0(this)
    class(LicenseServerInitFileUtil), target :: this
    class(OutputStream), pointer :: j_fileOutputStream
    class(ResourceUtil), pointer :: j_resourceUtil
    character(len=:), allocatable :: j_filePath
    class(InputStream), pointer :: j_inputStream
    class(FileStreamFactory), pointer :: j_fileStreamFactory
    integer(4) :: j_b
    integer(4) :: j_index
    class(StreamUtil), pointer :: jtemp5
    class(LicenseInitInfoUtil), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_fileOutputStream => this%f_NULL_OUTPUT_STREAM
        continue ! try
            j_resourceUtil => ResourceUtil_jm_getInstance_0()
            jtemp6 => LicenseInitInfoUtil_jm_getInstance_0()
            j_filePath = jtemp6%f_INITFILENAME
            j_inputStream => j_resourceUtil%jm_getResourceAsStream_1(j_filePath)
            call this%f_logUtil%jm_putF_3('Writing Default License File', this, this%f_commonStrings%f_INIT)
            j_fileStreamFactory => FileStreamFactory_jm_getInstance_0()
            jtemp7 => StringUtil_jm_getInstance_0()
            j_fileOutputStream => j_fileStreamFactory%jm_getFileOutputStreamInstance_2(jtemp7%f_EMPTY_STRING, j_filePath)
            continue
            j_index = 0
            do while (.true.)
                j_b = j_inputStream%jm_read_0()
                if ((j_b == (-1))) then
                    exit
                end if
                call j_fileOutputStream%jm_write_1(j_b)
                j_index = j_index + 1
            end do
            call this%f_logUtil%jm_putF_3(('Wrote Bytes: ' // JR_intString(j_index)), this, this%f_commonStrings%f_INIT)
            call j_fileOutputStream%jm_flush_0()
            jtemp5 => StreamUtil_jm_getInstance_0()
            jdiscardBoolean = jtemp5%jm_close_1(j_fileOutputStream)
  end subroutine
end module LicenseServerInitFileUtil_m

