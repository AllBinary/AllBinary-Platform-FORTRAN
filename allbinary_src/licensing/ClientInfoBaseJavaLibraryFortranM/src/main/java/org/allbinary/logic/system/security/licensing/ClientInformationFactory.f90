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
! package org.allbinary.logic.system.security.licensing
module ClientInformationFactory_m
  use JR_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  use ClientInformation_m
  implicit none

  type, extends(JObject) :: ClientInformationFactory
  contains
    procedure :: jm_getInstance_0 => ClientInformationFactory_jm_getInstance_0
  end type


contains

  function ClientInformationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ClientInformationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ClientInformationFactory)
      jresult => object
    end select
  end function

  function ClientInformationFactory_jnew_0() result(this)
    class(ClientInformationFactory), pointer :: this
    allocate(this)
    this%jclass = 'ClientInformationFactory'
  end function

  recursive function ClientInformationFactory_jm_getInstance_0(this) result(jresult)
    class(ClientInformationFactory), target :: this
    class(ClientInformation), pointer :: jresult
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: j_stringUtil
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_logUtil => LogUtil_jm_getInstance_0()
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call j_logUtil%jm_putF_3(j_commonStrings%f_NOT_IMPLEMENTED, this, j_commonStrings%f_GET_INSTANCE)
        j_stringUtil => StringUtil_jm_getInstance_0()
        jresult => ClientInformation_jnew_4(j_stringUtil%f_NULL_STRING, j_stringUtil%f_NULL_STRING, j_stringUtil%f_NULL_STRING, j_stringUtil%f_NULL_STRING)
        return
  end function
end module ClientInformationFactory_m

