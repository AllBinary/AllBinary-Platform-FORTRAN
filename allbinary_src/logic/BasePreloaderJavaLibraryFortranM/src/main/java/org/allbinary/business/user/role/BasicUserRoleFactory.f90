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
! package org.allbinary.business.user.role
module BasicUserRoleFactory_m
  use JR_m
  use BasicUserRole_m
  implicit none

  type, extends(JObject) :: BasicUserRoleFactory
    integer(8) :: f_INACTIVITYTIMEOUT = 0_8
    integer(8) :: f_CUSTOMERTIMEOUT = 0_8
    integer(8) :: f_CUSTOMERMAXSESSIONTIME = 0_8
    integer(8) :: f_MAXSESSIONTIME = 0_8
    class(BasicUserRole), pointer :: f_INSTALLER => null()
    class(BasicUserRole), pointer :: f_ADMINISTRATOR => null()
    class(BasicUserRole), pointer :: f_CUSTOMER => null()
    class(BasicUserRole), pointer :: f_SUBSCRIBERCUSTOMER => null()
    class(BasicUserRole), pointer :: f_WHOLESALECUSTOMER => null()
    class(BasicUserRole), pointer :: f_STOREMANAGER => null()
    class(BasicUserRole), pointer :: f_PRODUCTMANAGER => null()
    class(BasicUserRole), pointer :: f_CUSTOMERMANAGER => null()
    class(BasicUserRole), pointer :: f_PAYMENTMANAGER => null()
    class(BasicUserRole), pointer :: f_ORDERMANAGER => null()
    class(BasicUserRole), pointer :: f_WEBMANAGER => null()
    class(BasicUserRole), pointer :: f_REVIEWER => null()
    class(BasicUserRole), pointer :: f_SHIPPING => null()
    class(BasicUserRole), pointer :: f_ADJUSTER => null()
    class(BasicUserRole), pointer :: f_WORKFLOWEDITOR => null()
    class(BasicUserRole), pointer :: f_WIZARD => null()
    class(BasicUserRole), pointer :: f_VIEWEDITOR => null()
  end type

  class(BasicUserRoleFactory), pointer, save :: BasicUserRoleFactory_jcell_instance => null()
  logical, save :: BasicUserRoleFactory_jset_instance = .false.

contains

  function BasicUserRoleFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicUserRoleFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicUserRoleFactory)
      jresult => object
    end select
  end function

  function BasicUserRoleFactory_jstatic_instance() result(jresult)
    class(BasicUserRoleFactory), pointer :: jresult
    if (.not. BasicUserRoleFactory_jset_instance) then
      BasicUserRoleFactory_jset_instance = .true.
      BasicUserRoleFactory_jcell_instance => BasicUserRoleFactory_jnew_0()
    end if
    jresult => BasicUserRoleFactory_jcell_instance
  end function

  subroutine BasicUserRoleFactory_jsetstatic_instance(jvalue)
    class(BasicUserRoleFactory), target, optional :: jvalue
    BasicUserRoleFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicUserRoleFactory_jcell_instance => jvalue
    else
      BasicUserRoleFactory_jcell_instance => null()
    end if
  end subroutine

  function BasicUserRoleFactory_jnew_0() result(this)
    class(BasicUserRoleFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicUserRoleFactory'
    this%f_INACTIVITYTIMEOUT = 360000000_8
    this%f_CUSTOMERTIMEOUT = 360000000_8
    this%f_CUSTOMERMAXSESSIONTIME = 360000000_8
    this%f_MAXSESSIONTIME = 360000000_8
    this%f_INSTALLER => BasicUserRole_jnew_4('Installer', 16, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_ADMINISTRATOR => BasicUserRole_jnew_4('Administrator', 0, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_CUSTOMER => BasicUserRole_jnew_5('CustomerUser', 'Customer User', 1, this%f_CUSTOMERTIMEOUT, this%f_CUSTOMERMAXSESSIONTIME)
    this%f_SUBSCRIBERCUSTOMER => BasicUserRole_jnew_5('SubscriberUser', 'Subscriber User', 2, this%f_CUSTOMERTIMEOUT, this%f_CUSTOMERMAXSESSIONTIME)
    this%f_WHOLESALECUSTOMER => BasicUserRole_jnew_5('WholesaleUser', 'Wholesale User', 3, this%f_CUSTOMERTIMEOUT, this%f_CUSTOMERMAXSESSIONTIME)
    this%f_STOREMANAGER => BasicUserRole_jnew_5('StoreManager', 'Store Manager', 4, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_PRODUCTMANAGER => BasicUserRole_jnew_5('ProductManager', 'Product Manager', 5, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_CUSTOMERMANAGER => BasicUserRole_jnew_5('UserManager', 'User Manager', 6, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_PAYMENTMANAGER => BasicUserRole_jnew_5('PaymentManager', 'Payment Manager', 7, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_ORDERMANAGER => BasicUserRole_jnew_5('OrderManager', 'Order Manager', 8, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_WEBMANAGER => BasicUserRole_jnew_5('WebManager', 'Web Manager', 9, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_REVIEWER => BasicUserRole_jnew_4('Reviewer', 10, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_SHIPPING => BasicUserRole_jnew_4('Shipping', 11, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_ADJUSTER => BasicUserRole_jnew_4('Adjuster', 12, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_WORKFLOWEDITOR => BasicUserRole_jnew_5('WorkFlowEditor', 'WorkFlow Editor', 13, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_WIZARD => BasicUserRole_jnew_5('WizardUser', 'Wizard User', 14, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
    this%f_VIEWEDITOR => BasicUserRole_jnew_5('ViewEditor', 'View Editor', 15, this%f_MAXSESSIONTIME, this%f_INACTIVITYTIMEOUT)
  end function

  recursive function BasicUserRoleFactory_jm_getInstance_0() result(jresult)
    class(BasicUserRoleFactory), pointer :: jresult
        jresult => BasicUserRoleFactory_jstatic_instance()
        return
  end function
end module BasicUserRoleFactory_m

