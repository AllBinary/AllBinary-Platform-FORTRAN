! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module NoCrypt_m
  use JR_m
  use CryptInterface_m
  implicit none

  type, extends(CryptInterface) :: NoCrypt
  contains
    procedure :: jm_encrypt_1 => NoCrypt_jm_encrypt_1
    procedure :: jm_decrypt_1 => NoCrypt_jm_decrypt_1
  end type


contains

  function NoCrypt_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoCrypt), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoCrypt)
      jresult => object
    end select
  end function

  function NoCrypt_jnew_0() result(this)
    class(NoCrypt), pointer :: this
    allocate(this)
    this%jclass = 'NoCrypt'
  end function

  recursive function NoCrypt_jm_encrypt_1(this, j_array) result(jresult)
    class(NoCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
        jresult = j_array
        return
  end function

  recursive function NoCrypt_jm_decrypt_1(this, j_array) result(jresult)
    class(NoCrypt), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
        jresult = j_array
        return
  end function
end module NoCrypt_m

