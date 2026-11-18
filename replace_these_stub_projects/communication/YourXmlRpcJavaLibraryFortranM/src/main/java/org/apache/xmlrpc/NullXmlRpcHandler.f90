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
! package org.apache.xmlrpc
module NullXmlRpcHandler_m
  use JR_m
  use BasicArrayList_m
  use NullUtil_m
  use XmlRpcHandler_m
  implicit none

  type, extends(XmlRpcHandler) :: NullXmlRpcHandler
  contains
    procedure :: jm_execute_2 => NullXmlRpcHandler_jm_execute_2
  end type

  class(NullXmlRpcHandler), pointer, save :: NullXmlRpcHandler_jcell_NULL_XML_RPC_HANDLER => null()
  logical, save :: NullXmlRpcHandler_jset_NULL_XML_RPC_HANDLER = .false.

contains

  function NullXmlRpcHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullXmlRpcHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullXmlRpcHandler)
      jresult => object
    end select
  end function

  function NullXmlRpcHandler_jstatic_NULL_XML_RPC_HANDLER() result(jresult)
    class(NullXmlRpcHandler), pointer :: jresult
    if (.not. NullXmlRpcHandler_jset_NULL_XML_RPC_HANDLER) then
      NullXmlRpcHandler_jset_NULL_XML_RPC_HANDLER = .true.
      NullXmlRpcHandler_jcell_NULL_XML_RPC_HANDLER => NullXmlRpcHandler_jnew_0()
    end if
    jresult => NullXmlRpcHandler_jcell_NULL_XML_RPC_HANDLER
  end function

  subroutine NullXmlRpcHandler_jsetstatic_NULL_XML_RPC_HANDLER(jvalue)
    class(NullXmlRpcHandler), target, optional :: jvalue
    NullXmlRpcHandler_jset_NULL_XML_RPC_HANDLER = .true.
    if (present(jvalue)) then
      NullXmlRpcHandler_jcell_NULL_XML_RPC_HANDLER => jvalue
    else
      NullXmlRpcHandler_jcell_NULL_XML_RPC_HANDLER => null()
    end if
  end subroutine

  function NullXmlRpcHandler_jnew_0() result(this)
    class(NullXmlRpcHandler), pointer :: this
    allocate(this)
    this%jclass = 'NullXmlRpcHandler'
  end function

  recursive function NullXmlRpcHandler_jm_execute_2(this, j_method, j_params) result(jresult)
    class(NullXmlRpcHandler), target :: this
    character(len=*), intent(in) :: j_method
    class(BasicArrayList), target, optional :: j_params
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult => jtemp1%f_NULL_OBJECT
        return
  end function
end module NullXmlRpcHandler_m

