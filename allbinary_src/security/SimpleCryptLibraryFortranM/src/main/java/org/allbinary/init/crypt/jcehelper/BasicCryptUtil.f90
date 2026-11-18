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
! package org.allbinary.init.crypt.jcehelper
module BasicCryptUtil_m
  use JR_m
  use ByteArrayInputStream_m
  use ByteArrayOutputStream_m
  use InputStream_m
  use TsUtil_m
  use LogUtil_m
  use CryptInterface_m
  implicit none

  type, extends(JObject) :: BasicCryptUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    character(len=:), allocatable :: f_XML_START
  contains
    procedure :: jm_getDecryptedInputStream_2 => BasicCryptUtil_jm_getDecryptedInputStream_2
  end type

  class(BasicCryptUtil), pointer, save :: BasicCryptUtil_jcell_instance => null()
  logical, save :: BasicCryptUtil_jset_instance = .false.

contains

  function BasicCryptUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicCryptUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicCryptUtil)
      jresult => object
    end select
  end function

  function BasicCryptUtil_jstatic_instance() result(jresult)
    class(BasicCryptUtil), pointer :: jresult
    if (.not. BasicCryptUtil_jset_instance) then
      BasicCryptUtil_jset_instance = .true.
      BasicCryptUtil_jcell_instance => BasicCryptUtil_jnew_0()
    end if
    jresult => BasicCryptUtil_jcell_instance
  end function

  subroutine BasicCryptUtil_jsetstatic_instance(jvalue)
    class(BasicCryptUtil), target, optional :: jvalue
    BasicCryptUtil_jset_instance = .true.
    if (present(jvalue)) then
      BasicCryptUtil_jcell_instance => jvalue
    else
      BasicCryptUtil_jcell_instance => null()
    end if
  end subroutine

  function BasicCryptUtil_jnew_0() result(this)
    class(BasicCryptUtil), pointer :: this
    allocate(this)
    this%jclass = 'BasicCryptUtil'
    this%f_XML_START = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_XML_START = '<?xml'
  end function

  recursive function BasicCryptUtil_jm_getInstance_0() result(jresult)
    class(BasicCryptUtil), pointer :: jresult
        jresult => BasicCryptUtil_jstatic_instance()
        return
  end function

  recursive function BasicCryptUtil_jm_getDecryptedInputStream_2(this, j_inputStream, j_cryptInterface) result(jresult)
    class(BasicCryptUtil), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(CryptInterface), target, optional :: j_cryptInterface
    class(InputStream), pointer :: jresult
    class(ByteArrayOutputStream), pointer :: j_buffer
    integer(4) :: j_ch
    integer(4), allocatable :: j_decrypted(:)
    character(len=:), allocatable :: j_decryptedString
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_buffer => ByteArrayOutputStream_jnew_0()
        continue
        do while (.true.)
            j_ch = j_inputStream%jm_read_0()
            if ((j_ch == (-1))) then
                exit
            end if
            call j_buffer%jm_write_1(j_ch)
        end do
        j_decrypted = j_cryptInterface%jm_decrypt_1(j_buffer%jm_toByteArray_0())
        j_decryptedString = j_decrypted
        j_index = JR_indexOf(j_decryptedString, this%f_XML_START)
        if ((j_index > 0)) then
            j_decryptedString = JR_substring(j_decryptedString, j_index)
        end if
        jresult => ByteArrayInputStream_jnew_1(this%f_tsUtil%jm_getByteArray_1(j_decryptedString))
        return
  end function
end module BasicCryptUtil_m

