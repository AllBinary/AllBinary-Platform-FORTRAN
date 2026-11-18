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
module CryptInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: CryptInterface
  contains
    procedure :: jm_encrypt_1 => CryptInterface_jm_encrypt_1
    procedure :: jm_decrypt_1 => CryptInterface_jm_decrypt_1
  end type


contains

  function CryptInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CryptInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CryptInterface)
      jresult => object
    end select
  end function

  function CryptInterface_jnew_0() result(this)
    class(CryptInterface), pointer :: this
    allocate(this)
    this%jclass = 'CryptInterface'
  end function

  recursive function CryptInterface_jm_encrypt_1(this, j_array) result(jresult)
    class(CryptInterface), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    error stop 'AbstractMethodError: CryptInterface.encrypt'
  end function

  recursive function CryptInterface_jm_decrypt_1(this, j_array) result(jresult)
    class(CryptInterface), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    error stop 'AbstractMethodError: CryptInterface.decrypt'
  end function
end module CryptInterface_m

