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
module AbCrypt_m
  use JR_m
  use Security_m
  use KeySpec_m
  use TsUtil_m
  use CryptInterface_m
  use NullUtil_m
  use PreLogUtil_m
  use CommonStrings_m
  use BouncyCastleProvider_m
  use BaseSecretComposite_m
  use KeySpecFactory_m
  use SecretComposite_m
  implicit none

  type, extends(CryptInterface) :: AbCrypt
    class(TsUtil), pointer :: f_tsUtil => null()
    class(BaseSecretComposite), pointer :: f_secretComposite => null()
    character(len=:), allocatable :: f_algorithm
  contains
    procedure :: jm_init_1 => AbCrypt_jm_init_1
    procedure :: jm_encrypt_1 => AbCrypt_jm_encrypt_1
    procedure :: jm_decrypt_1 => AbCrypt_jm_decrypt_1
  end type


contains

  function AbCrypt_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbCrypt), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbCrypt)
      jresult => object
    end select
  end function

  recursive function AbCrypt_jnew_1(j_algorithm) result(this)
    character(len=*), intent(in) :: j_algorithm
    class(AbCrypt), pointer :: this
    allocate(this)
    this%jclass = 'AbCrypt'
    this%f_algorithm = ''
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_secretComposite => BaseSecretComposite_jstatic_NULL_SECRET_COMPOSITE()
    
        this%f_algorithm = j_algorithm
  end function

  recursive subroutine AbCrypt_jm_init_1(this, j_keyAsString)
    class(AbCrypt), target :: this
    character(len=*), intent(in) :: j_keyAsString
    class(CommonStrings), pointer :: j_commonStrings
    integer(4), allocatable :: j_key(:)
    class(KeySpec), pointer :: j_keySpec
    class(SecretKeyFactory), pointer :: j_keyFactory
    class(SecretKey), pointer :: j_secretKey
    class(Cipher), pointer :: j_cipher
    class(KeySpecFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! try
            continue ! try
                call Security_jm_addProvider_1(BouncyCastleProvider_jnew_0())
            j_key = this%f_tsUtil%jm_getByteArray_1(j_keyAsString)
            jtemp1 => KeySpecFactory_jm_getInstance_0()
            j_keySpec => jtemp1%jm_getInstance_2(this%f_algorithm, j_key)
            j_keyFactory => SecretKeyFactory_jm_getInstance_1(this%f_algorithm)
            j_secretKey => j_keyFactory%jm_generateSecret_1(j_keySpec)
            j_cipher => Cipher_jm_getInstance_1(this%f_algorithm)
            this%f_secretComposite => SecretComposite_jnew_3(j_secretKey, j_cipher, j_key)
  end subroutine

  recursive function AbCrypt_jm_encrypt_1(this, j_array) result(jresult)
    class(AbCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult = this%f_secretComposite%jm_encrypt_1(j_array)
            return
  end function

  recursive function AbCrypt_jm_decrypt_1(this, j_array) result(jresult)
    class(AbCrypt), target :: this
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
            jresult = this%f_secretComposite%jm_decrypt_1(j_array)
            return
  end function
end module AbCrypt_m

