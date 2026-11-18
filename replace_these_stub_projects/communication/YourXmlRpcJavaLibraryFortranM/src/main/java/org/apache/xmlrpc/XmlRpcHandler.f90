! Generated Code Do Not Modify
! package org.apache.xmlrpc
module XmlRpcHandler_m
  use JR_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: XmlRpcHandler
  contains
    procedure :: jm_execute_2 => XmlRpcHandler_jm_execute_2
  end type


contains

  function XmlRpcHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(XmlRpcHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (XmlRpcHandler)
      jresult => object
    end select
  end function

  function XmlRpcHandler_jnew_0() result(this)
    class(XmlRpcHandler), pointer :: this
    allocate(this)
    this%jclass = 'XmlRpcHandler'
  end function

  recursive function XmlRpcHandler_jm_execute_2(this, j_method, j_params) result(jresult)
    class(XmlRpcHandler), target :: this
    character(len=*), intent(in) :: j_method
    class(BasicArrayList), target, optional :: j_params
    class(JObject), pointer :: jresult
    error stop 'AbstractMethodError: XmlRpcHandler.execute'
  end function
end module XmlRpcHandler_m

