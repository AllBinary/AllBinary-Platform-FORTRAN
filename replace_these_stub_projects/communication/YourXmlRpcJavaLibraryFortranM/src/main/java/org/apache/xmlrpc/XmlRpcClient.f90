! Generated Code Do Not Modify
! package org.apache.xmlrpc
module XmlRpcClient_m
  use JR_m
  use IOException_m
  use MalformedURLException_m
  use URL_m
  use BasicArrayList_m
  use CryptInterface_m
  use NullUtil_m
  use XmlRpcHandler_m
  use XmlRpcException_m
  implicit none

  type, extends(XmlRpcHandler) :: XmlRpcClient
    class(URL), pointer :: f_url => null()
  contains
    procedure :: jm_getURL_0 => XmlRpcClient_jm_getURL_0
    procedure :: jm_setBasicAuthentication_2 => XmlRpcClient_jm_setBasicAuthentication_2
    procedure :: jm_execute_2 => XmlRpcClient_jm_execute_2
    procedure :: jm_executeWithCrypt_3 => XmlRpcClient_jm_executeWithCrypt_3
  end type


contains

  function XmlRpcClient_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(XmlRpcClient), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (XmlRpcClient)
      jresult => object
    end select
  end function

  recursive function XmlRpcClient_jnew_1(j_url) result(this)
    character(len=*), intent(in) :: j_url
    class(XmlRpcClient), pointer :: this
    allocate(this)
    this%jclass = 'XmlRpcClient'
    
        this%f_url = URL_jnew_1(j_url)
  end function

  recursive function XmlRpcClient_jm_getURL_0(this) result(jresult)
    class(XmlRpcClient), target :: this
    class(URL), pointer :: jresult
        jresult => this%f_url
        return
  end function

  recursive subroutine XmlRpcClient_jm_setBasicAuthentication_2(this, j_user, j_password)
    class(XmlRpcClient), target :: this
    character(len=*), intent(in) :: j_user
    character(len=*), intent(in) :: j_password
    continue
  end subroutine

  recursive function XmlRpcClient_jm_execute_2(this, j_method, j_params) result(jresult)
    class(XmlRpcClient), target :: this
    character(len=*), intent(in) :: j_method
    class(BasicArrayList), target, optional :: j_params
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult => jtemp1%f_NULL_OBJECT
        return
  end function

  recursive function XmlRpcClient_jm_executeWithCrypt_3(this, j_method, j_params, j_cryptInterface) result(jresult)
    class(XmlRpcClient), target :: this
    character(len=*), intent(in) :: j_method
    class(BasicArrayList), target, optional :: j_params
    class(CryptInterface), target, optional :: j_cryptInterface
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        jresult => jtemp2%f_NULL_OBJECT
        return
  end function
end module XmlRpcClient_m

