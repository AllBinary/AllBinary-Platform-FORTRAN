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
! package org.allbinary.logic.system.security.crypt.jcehelper
module BasicCrypt_m
  use JR_m
  use TsUtil_m
  use CryptInterface_m
  use NullUtil_m
  use PreLogUtil_m
  use ByteUtil_m
  use CommonStrings_m
  implicit none

  type, extends(CryptInterface) :: BasicCrypt
    class(ByteUtil), pointer :: f_byteUtil => null()
    integer(4), allocatable :: f_key(:)
  contains
    procedure :: jm_encrypt_1 => BasicCrypt_jm_encrypt_1
    procedure :: jm_decrypt_1 => BasicCrypt_jm_decrypt_1
    procedure :: jm_mutilate_1 => BasicCrypt_jm_mutilate_1
  end type


contains

  function BasicCrypt_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicCrypt), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicCrypt)
      jresult => object
    end select
  end function

  recursive function BasicCrypt_jnew_1(j_keyAsString) result(this)
    character(len=*), intent(in) :: j_keyAsString
    class(BasicCrypt), pointer :: this
    integer(4), allocatable :: j_key(:)
    class(CommonStrings), pointer :: j_commonStrings
    class(NullUtil), pointer :: jtemp1
    class(TsUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicCrypt'
    this%f_byteUtil => ByteUtil_jm_getInstance_0()
    
        jtemp1 => NullUtil_jm_getInstance_0()
        j_key = jtemp1%f_NULL_BYTE_ARRAY
        continue ! try
            jtemp2 => TsUtil_jm_getInstance_0()
            j_key = jtemp2%jm_getByteArray_1(j_keyAsString)
        this%f_key = j_key
  end function

  recursive function BasicCrypt_jm_encrypt_1(this, j_array) result(jresult)
    class(BasicCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult = this%jm_mutilate_1(j_array)
            return
  end function

  recursive function BasicCrypt_jm_decrypt_1(this, j_array) result(jresult)
    class(BasicCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult = this%jm_mutilate_1(j_array)
            return
  end function

  recursive function BasicCrypt_jm_mutilate_1(this, j_array) result(jresult)
    class(BasicCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    integer(4) :: j_value
    integer(4) :: j_index
        continue
        j_index = 0
        do while ((j_index < size(this%f_key, 1)))
            j_value = this%f_key((j_index) + 1)
            j_array = this%f_byteUtil%jm_xor_2(j_array, j_value)
            j_index = j_index + 1
        end do
        jresult = j_array
        return
  end function
end module BasicCrypt_m

