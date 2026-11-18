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
! package org.allbinary.business.init
module LicenseInitInfoUtil_m
  use JR_m
  use TsUtil_m
  use PATH_GLOBALS_m
  use URLGLOBALS_m
  use LogUtil_m
  use AbDataInputStream_m
  use AbDataOutputStream_m
  use AbFileInputStream_m
  use DataOutputStreamFactory_m
  use FileStreamFactory_m
  use StringMaker_m
  use StringUtil_m
  use DatabaseEncoder_m
  use WeakCrypt_m
  use CommonLabels_m
  use LicenseInitInfo_m
  implicit none

  type, extends(JObject) :: LicenseInitInfoUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(StringUtil), pointer :: f_stringUtil => null()
    character(len=:), allocatable :: f_INITFILENAME
    character(len=:), allocatable :: f_ABOUT
    character(len=:), allocatable :: f_PRIVACY_POLICY
    character(len=:), allocatable :: f_filePath
  contains
    procedure :: jm_setFilePath_1 => LicenseInitInfoUtil_jm_setFilePath_1
    procedure :: jm_write_1 => LicenseInitInfoUtil_jm_write_1
    procedure :: jm_read_0 => LicenseInitInfoUtil_jm_read_0
    procedure :: jm_readAgain_1 => LicenseInitInfoUtil_jm_readAgain_1
    procedure :: jm_getFilePath_0 => LicenseInitInfoUtil_jm_getFilePath_0
  end type

  class(LicenseInitInfoUtil), pointer, save :: LicenseInitInfoUtil_jcell_instance => null()
  logical, save :: LicenseInitInfoUtil_jset_instance = .false.

contains

  function LicenseInitInfoUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseInitInfoUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseInitInfoUtil)
      jresult => object
    end select
  end function

  function LicenseInitInfoUtil_jstatic_instance() result(jresult)
    class(LicenseInitInfoUtil), pointer :: jresult
    if (.not. LicenseInitInfoUtil_jset_instance) then
      LicenseInitInfoUtil_jset_instance = .true.
      LicenseInitInfoUtil_jcell_instance => LicenseInitInfoUtil_jnew_0()
    end if
    jresult => LicenseInitInfoUtil_jcell_instance
  end function

  subroutine LicenseInitInfoUtil_jsetstatic_instance(jvalue)
    class(LicenseInitInfoUtil), target, optional :: jvalue
    LicenseInitInfoUtil_jset_instance = .true.
    if (present(jvalue)) then
      LicenseInitInfoUtil_jcell_instance => jvalue
    else
      LicenseInitInfoUtil_jcell_instance => null()
    end if
  end subroutine

  function LicenseInitInfoUtil_jnew_0() result(this)
    class(LicenseInitInfoUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseInitInfoUtil'
    this%f_INITFILENAME = ''
    this%f_ABOUT = ''
    this%f_PRIVACY_POLICY = ''
    this%f_filePath = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_INITFILENAME = 'licenseinitdata.dat'
    this%f_ABOUT = 'about'
    this%f_PRIVACY_POLICY = 'privacy_policy'
    this%f_filePath = this%f_stringUtil%f_EMPTY_STRING
  end function

  recursive function LicenseInitInfoUtil_jm_getInstance_0() result(jresult)
    class(LicenseInitInfoUtil), pointer :: jresult
        jresult => LicenseInitInfoUtil_jstatic_instance()
        return
  end function

  recursive subroutine LicenseInitInfoUtil_jm_setFilePath_1(this, j_filePath)
    class(LicenseInitInfoUtil), target :: this
    character(len=*), intent(in) :: j_filePath
        this%f_filePath = j_filePath
  end subroutine

  recursive subroutine LicenseInitInfoUtil_jm_write_1(this, j_initData)
    class(LicenseInitInfoUtil), target :: this
    class(LicenseInitInfo), target, optional :: j_initData
    class(TsUtil), pointer :: j_tsUtil
    class(AbDataOutputStream), pointer :: j_dataOutputStream
    integer(4), allocatable :: j_licenseIdCrypted(:)
    integer(4) :: j_numberOfLicenseServers
    integer(4), allocatable :: j_licenseServerCrypted(:)
    integer(4) :: j_index
    class(PATH_GLOBALS), pointer :: jtemp1
    class(DataOutputStreamFactory), pointer :: jtemp2
    class(WeakCrypt), pointer :: jtemp3
    class(WeakCrypt), pointer :: jtemp4
    class(FileStreamFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (JR_strEquals(this%f_filePath, this%f_stringUtil%f_EMPTY_STRING)) then
            jtemp1 => PATH_GLOBALS_jm_getInstance_0()
            this%f_filePath = (URLGLOBALS_jm_getMainPath_0() // jtemp1%f_INIT_PATH)
        end if
        continue ! try
            j_tsUtil => TsUtil_jm_getInstance_0()
            jtemp2 => DataOutputStreamFactory_jm_getInstance_0()
            j_dataOutputStream => jtemp2%jm_getInstance_2(this%f_filePath, this%f_INITFILENAME)
            jtemp3 => WeakCrypt_jnew_1(1)
            j_licenseIdCrypted = j_tsUtil%jm_getByteArray_1(jtemp3%jm_encrypt_1(j_initData%jm_getLicenseId_0()))
            call j_dataOutputStream%jm_writeUTF_1(DatabaseEncoder_jm_encode_1(j_licenseIdCrypted))
            j_numberOfLicenseServers = j_initData%jm_getNumberOfServers_0()
            call j_dataOutputStream%jm_writeInt_1(j_numberOfLicenseServers)
            continue
            j_index = 0
            do while ((j_index < j_numberOfLicenseServers))
                jtemp4 => WeakCrypt_jnew_1(3)
                j_licenseServerCrypted = j_tsUtil%jm_getByteArray_1(jtemp4%jm_encrypt_1(j_initData%jm_getServer_1(j_index)))
                call j_dataOutputStream%jm_writeUTF_1(DatabaseEncoder_jm_encode_1(j_licenseServerCrypted))
                j_index = j_index + 1
            end do
  end subroutine

  recursive function LicenseInitInfoUtil_jm_read_0(this) result(jresult)
    class(LicenseInitInfoUtil), target :: this
    class(LicenseInitInfo), pointer :: jresult
        jresult => this%jm_readAgain_1(0)
        return
  end function

  recursive function LicenseInitInfoUtil_jm_readAgain_1(this, j_initializeCounter) result(jresult)
    class(LicenseInitInfoUtil), target :: this
    integer(4), value :: j_initializeCounter
    class(LicenseInitInfo), pointer :: jresult
    character(len=:), allocatable :: j_METHOD_NAME
    class(FileStreamFactory), pointer :: j_fileStreamFactory
    class(AbFileInputStream), pointer :: j_iFile
    class(AbDataInputStream), pointer :: j_iData
    class(LicenseInitInfo), pointer :: j_initInfo
    integer(4), allocatable :: j_decodedByteArray(:)
    character(len=:), allocatable :: j_licenseIdDecoded
    integer(4) :: j_numberOfLicenseServers
    character(len=:), allocatable :: j_NEXT_FILE
    character(len=:), allocatable :: j_licenseServerDecoded
    integer(4) :: j_index
    class(PATH_GLOBALS), pointer :: jtemp6
    class(WeakCrypt), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(CommonLabels), pointer :: jtemp11
    class(WeakCrypt), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'readAgain'
        if (JR_strEquals(this%f_filePath, this%f_stringUtil%f_EMPTY_STRING)) then
            jtemp6 => PATH_GLOBALS_jm_getInstance_0()
            this%f_filePath = (URLGLOBALS_jm_getMainPath_0() // jtemp6%f_INIT_PATH)
        end if
        continue ! try
            call this%f_logUtil%jm_putF_3(('LicenseInitInfo File: ' // this%f_INITFILENAME), this, j_METHOD_NAME)
            j_fileStreamFactory => FileStreamFactory_jm_getInstance_0()
            j_iFile => j_fileStreamFactory%jm_getFileInputStreamInstance_2(this%f_filePath, this%f_INITFILENAME)
            if (associated(j_iFile)) then
                j_iData => AbDataInputStream_jnew_1(j_iFile)
                j_initInfo => LicenseInitInfo_jnew_0()
                j_decodedByteArray = DatabaseEncoder_jm_decode_1(j_iData%jm_readUTF_0())
                j_licenseIdDecoded = j_decodedByteArray
                jtemp7 => WeakCrypt_jnew_1(1)
                call j_initInfo%jm_setLicenseId_1(jtemp7%jm_decrypt_1(j_licenseIdDecoded))
                j_numberOfLicenseServers = j_iData%jm_readInt_0()
                jtemp11 => CommonLabels_jm_getInstance_0()
                jtemp10 => StringMaker_jnew_0()
                jtemp9 => jtemp10%jm_append_1(jtemp11%f_NEXT)
                jtemp8 => jtemp9%jm_append_1(' License Server From File: ')
                j_NEXT_FILE = jtemp8%jm_toString_0()
                continue
                j_index = 0
                do while ((j_index < j_numberOfLicenseServers))
                    j_decodedByteArray = DatabaseEncoder_jm_decode_1(j_iData%jm_readUTF_0())
                    j_licenseServerDecoded = j_decodedByteArray
                    jtemp12 => WeakCrypt_jnew_1(3)
                    call j_initInfo%jm_setServer_2(jtemp12%jm_decrypt_1(j_licenseServerDecoded), j_index)
                    call this%f_logUtil%jm_putF_3((j_NEXT_FILE // j_initInfo%jm_getServer_1(j_index)), this, j_METHOD_NAME)
                    j_index = j_index + 1
                end do
                jresult => j_initInfo
                return
            else
                error stop JR_toString(JR_newJObject('Exception'))
            end if
  end function

  recursive function LicenseInitInfoUtil_jm_getFilePath_0(this) result(jresult)
    class(LicenseInitInfoUtil), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_filePath
        return
  end function
end module LicenseInitInfoUtil_m

