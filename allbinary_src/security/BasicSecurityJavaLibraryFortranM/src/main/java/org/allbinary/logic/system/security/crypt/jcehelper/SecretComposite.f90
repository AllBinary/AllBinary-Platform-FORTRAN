! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module SecretComposite_m
  use JR_m
  use ByteUtil_m
  use BaseSecretComposite_m
  implicit none

  type, extends(BaseSecretComposite) :: SecretComposite
    class(ByteUtil), pointer :: f_byteUtil => null()
    class(Cipher), pointer :: f_cipher => null()
    class(SecretKey), pointer :: f_secretKey => null()
    integer(4), allocatable :: f_key(:)
  contains
    procedure :: jm_encrypt_1 => SecretComposite_jm_encrypt_1
    procedure :: jm_decrypt_1 => SecretComposite_jm_decrypt_1
    procedure :: jm_mutilate_1 => SecretComposite_jm_mutilate_1
  end type


contains

  function SecretComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SecretComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SecretComposite)
      jresult => object
    end select
  end function

  recursive function SecretComposite_jnew_3(j_secretKey, j_cipher, j_key) result(this)
    class(SecretKey), target, optional :: j_secretKey
    class(Cipher), target, optional :: j_cipher
    integer(4) :: j_key(:)
    class(SecretComposite), pointer :: this
    allocate(this)
    this%jclass = 'SecretComposite'
    this%f_byteUtil => ByteUtil_jm_getInstance_0()
    
    
    
        this%f_secretKey => j_secretKey
        this%f_cipher => j_cipher
        this%f_key = j_key
  end function

  recursive function SecretComposite_jm_encrypt_1(this, j_array) result(jresult)
    class(SecretComposite), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_array = this%jm_mutilate_1(j_array)
        call this%f_cipher%jm_init_2(Cipher_jstatic_ENCRYPT_MODE(), this%f_secretKey)
        jresult = this%f_cipher%jm_doFinal_1(j_array)
        return
  end function

  recursive function SecretComposite_jm_decrypt_1(this, j_array) result(jresult)
    class(SecretComposite), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_cipher%jm_init_2(Cipher_jstatic_DECRYPT_MODE(), this%f_secretKey)
        jresult = this%jm_mutilate_1(this%f_cipher%jm_doFinal_1(j_array))
        return
  end function

  recursive function SecretComposite_jm_mutilate_1(this, j_array) result(jresult)
    class(SecretComposite), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    integer(4) :: j_value
    integer(4) :: j_index
        j_index = 0
        do while ((j_index < size(this%f_key, 1)))
            j_value = this%f_key((j_index) + 1)
            if (((j_value < 8) .and. (j_value > 0))) then
                j_array = this%f_byteUtil%jm_xorByte_2(j_array, j_value)
            end if
            j_index = j_index + 1
        end do
        jresult = j_array
        return
  end function
end module SecretComposite_m

