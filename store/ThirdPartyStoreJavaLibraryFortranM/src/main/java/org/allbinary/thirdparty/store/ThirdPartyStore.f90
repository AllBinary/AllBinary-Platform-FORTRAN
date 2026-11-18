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
! package org.allbinary.thirdparty.store
module ThirdPartyStore_m
  use JR_m
  use AbeClientInformationInterface_m
  implicit none

  type, extends(JObject) :: ThirdPartyStore
    logical :: f_authorized = .false.
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_authorize_1 => ThirdPartyStore_jm_authorize_1
    procedure :: jm_isAuthorized_0 => ThirdPartyStore_jm_isAuthorized_0
    procedure :: jm_setAuthorized_1 => ThirdPartyStore_jm_setAuthorized_1
    procedure :: jm_getName_0 => ThirdPartyStore_jm_getName_0
  end type


contains

  function ThirdPartyStore_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThirdPartyStore), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThirdPartyStore)
      jresult => object
    end select
  end function

  recursive function ThirdPartyStore_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(ThirdPartyStore), pointer :: this
    allocate(this)
    this%jclass = 'ThirdPartyStore'
    this%f_name = ''
    
    
        this%f_name = j_name
  end function

  recursive subroutine ThirdPartyStore_jm_authorize_1(this, j_clientInformationInterface)
    class(ThirdPartyStore), target :: this
    class(AbeClientInformationInterface), target, optional :: j_clientInformationInterface
    continue
  end subroutine

  recursive function ThirdPartyStore_jm_isAuthorized_0(this) result(jresult)
    class(ThirdPartyStore), target :: this
    logical :: jresult
        jresult = this%f_authorized
        return
  end function

  recursive subroutine ThirdPartyStore_jm_setAuthorized_1(this, j_authorized)
    class(ThirdPartyStore), target :: this
    logical, value :: j_authorized
        this%f_authorized = j_authorized
  end subroutine

  recursive function ThirdPartyStore_jm_getName_0(this) result(jresult)
    class(ThirdPartyStore), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module ThirdPartyStore_m

