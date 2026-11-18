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
module BaseSecretComposite_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: BaseSecretComposite
  contains
    procedure :: jm_encrypt_1 => BaseSecretComposite_jm_encrypt_1
    procedure :: jm_decrypt_1 => BaseSecretComposite_jm_decrypt_1
  end type

  class(BaseSecretComposite), pointer, save :: BaseSecretComposite_jcell_NULL_SECRET_COMPOSITE => null()
  logical, save :: BaseSecretComposite_jset_NULL_SECRET_COMPOSITE = .false.

contains

  function BaseSecretComposite_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseSecretComposite), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseSecretComposite)
      jresult => object
    end select
  end function

  function BaseSecretComposite_jstatic_NULL_SECRET_COMPOSITE() result(jresult)
    class(BaseSecretComposite), pointer :: jresult
    if (.not. BaseSecretComposite_jset_NULL_SECRET_COMPOSITE) then
      BaseSecretComposite_jset_NULL_SECRET_COMPOSITE = .true.
      BaseSecretComposite_jcell_NULL_SECRET_COMPOSITE => BaseSecretComposite_jnew_0()
    end if
    jresult => BaseSecretComposite_jcell_NULL_SECRET_COMPOSITE
  end function

  subroutine BaseSecretComposite_jsetstatic_NULL_SECRET_COMPOSITE(jvalue)
    class(BaseSecretComposite), target, optional :: jvalue
    BaseSecretComposite_jset_NULL_SECRET_COMPOSITE = .true.
    if (present(jvalue)) then
      BaseSecretComposite_jcell_NULL_SECRET_COMPOSITE => jvalue
    else
      BaseSecretComposite_jcell_NULL_SECRET_COMPOSITE => null()
    end if
  end subroutine

  function BaseSecretComposite_jnew_0() result(this)
    class(BaseSecretComposite), pointer :: this
    allocate(this)
    this%jclass = 'BaseSecretComposite'
  end function

  recursive function BaseSecretComposite_jm_encrypt_1(this, j_array) result(jresult)
    class(BaseSecretComposite), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_BYTE_ARRAY
        return
  end function

  recursive function BaseSecretComposite_jm_decrypt_1(this, j_array) result(jresult)
    class(BaseSecretComposite), target :: this
    integer(4) :: j_array(:)
    integer(4), allocatable :: jresult(:)
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        jresult = jtemp2%f_NULL_BYTE_ARRAY
        return
  end function
end module BaseSecretComposite_m

