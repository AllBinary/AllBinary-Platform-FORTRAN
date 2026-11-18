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
module NoThirdPartyStore_m
  use JR_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use ThirdPartyStore_m
  implicit none

  type, extends(ThirdPartyStore) :: NoThirdPartyStore
  contains
    procedure :: jm_authorize_1 => NoThirdPartyStore_jm_authorize_1
  end type


contains

  function NoThirdPartyStore_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoThirdPartyStore), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoThirdPartyStore)
      jresult => object
    end select
  end function

  recursive function NoThirdPartyStore_jnew_0() result(this)
    class(NoThirdPartyStore), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'NoThirdPartyStore'
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine NoThirdPartyStore_jm_authorize_1(this, j_clientInformationInterface)
    class(NoThirdPartyStore), target :: this
    class(AbeClientInformationInterface), target, optional :: j_clientInformationInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setAuthorized_1(.true.)
  end subroutine
end module NoThirdPartyStore_m

function NoThirdPartyStore_jnew_0_jext() result(this)
  use NoThirdPartyStore_m, only: JObject, NoThirdPartyStore_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoThirdPartyStore_jnew_0()
end function

