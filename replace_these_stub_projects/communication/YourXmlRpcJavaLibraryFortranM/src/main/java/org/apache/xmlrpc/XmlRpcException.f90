! Generated Code Do Not Modify
! package org.apache.xmlrpc
module XmlRpcException_m
  use JR_m
  implicit none

  type, extends(JObject) :: XmlRpcException
  end type


contains

  function XmlRpcException_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(XmlRpcException), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (XmlRpcException)
      jresult => object
    end select
  end function

  recursive function XmlRpcException_jnew_2(j_code, j_message) result(this)
    integer(4), value :: j_code
    character(len=*), intent(in) :: j_message
    class(XmlRpcException), pointer :: this
    allocate(this)
    this%jclass = 'XmlRpcException'
        continue ! super()
  end function
end module XmlRpcException_m

function XmlRpcException_jnew_2_jext(p1, p2) result(this)
  use XmlRpcException_m, only: JObject, XmlRpcException_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => XmlRpcException_jnew_2(p1, p2)
end function

