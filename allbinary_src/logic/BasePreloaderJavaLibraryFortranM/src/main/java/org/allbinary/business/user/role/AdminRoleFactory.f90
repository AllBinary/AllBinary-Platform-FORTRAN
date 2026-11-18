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
module AdminRoleFactory_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicUserRoleFactory_m
  implicit none

  type, extends(JObject) :: AdminRoleFactory
    class(BasicArrayList), pointer :: f_adminRoles => null()
    class(BasicArrayList), pointer :: f_storeAdminRoles => null()
    class(BasicArrayList), pointer :: f_storeManagementRoles => null()
    class(BasicArrayList), pointer :: f_productManagementRoles => null()
    class(BasicArrayList), pointer :: f_reviewManagementRoles => null()
    class(BasicArrayList), pointer :: f_customerManagementRoles => null()
    class(BasicArrayList), pointer :: f_workflowManagementRoles => null()
    class(BasicArrayList), pointer :: f_orderManagementRoles => null()
    class(BasicArrayList), pointer :: f_adjusterManagementRoles => null()
    class(BasicArrayList), pointer :: f_shippingManagementRoles => null()
    class(BasicArrayList), pointer :: f_webManagementRoles => null()
  contains
    procedure :: jm_getProductManagementRoles_0 => AdminRoleFactory_jm_getProductManagementRoles_0
    procedure :: jm_getAdminRoles_0 => AdminRoleFactory_jm_getAdminRoles_0
    procedure :: jm_getStoreAdminRoles_0 => AdminRoleFactory_jm_getStoreAdminRoles_0
    procedure :: jm_getStoreManagementRoles_0 => AdminRoleFactory_jm_getStoreManagementRoles_0
    procedure :: jm_getReviewManagementRoles_0 => AdminRoleFactory_jm_getReviewManagementRoles_0
    procedure :: jm_getCustomerManagementRoles_0 => AdminRoleFactory_jm_getCustomerManagementRoles_0
    procedure :: jm_getWorkflowManagementRoles_0 => AdminRoleFactory_jm_getWorkflowManagementRoles_0
    procedure :: jm_getWebManagementRoles_0 => AdminRoleFactory_jm_getWebManagementRoles_0
    procedure :: jm_getShippingManagementRoles_0 => AdminRoleFactory_jm_getShippingManagementRoles_0
    procedure :: jm_getAdjusterManagementRoles_0 => AdminRoleFactory_jm_getAdjusterManagementRoles_0
    procedure :: jm_getOrderManagementRoles_0 => AdminRoleFactory_jm_getOrderManagementRoles_0
  end type

  class(AdminRoleFactory), pointer, save :: AdminRoleFactory_jcell_instance => null()
  logical, save :: AdminRoleFactory_jset_instance = .false.

contains

  function AdminRoleFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdminRoleFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdminRoleFactory)
      jresult => object
    end select
  end function

  function AdminRoleFactory_jstatic_instance() result(jresult)
    class(AdminRoleFactory), pointer :: jresult
    if (.not. AdminRoleFactory_jset_instance) then
      AdminRoleFactory_jset_instance = .true.
      AdminRoleFactory_jcell_instance => AdminRoleFactory_jnew_0()
    end if
    jresult => AdminRoleFactory_jcell_instance
  end function

  subroutine AdminRoleFactory_jsetstatic_instance(jvalue)
    class(AdminRoleFactory), target, optional :: jvalue
    AdminRoleFactory_jset_instance = .true.
    if (present(jvalue)) then
      AdminRoleFactory_jcell_instance => jvalue
    else
      AdminRoleFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function AdminRoleFactory_jnew_0() result(this)
    class(AdminRoleFactory), pointer :: this
    class(BasicUserRoleFactory), pointer :: j_basicUserRoleFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdminRoleFactory'
    this%f_adminRoles => BasicArrayListD_jnew_0()
    this%f_storeAdminRoles => BasicArrayListD_jnew_0()
    this%f_storeManagementRoles => BasicArrayListD_jnew_0()
    this%f_productManagementRoles => BasicArrayListD_jnew_0()
    this%f_reviewManagementRoles => BasicArrayListD_jnew_0()
    this%f_customerManagementRoles => BasicArrayListD_jnew_0()
    this%f_workflowManagementRoles => BasicArrayListD_jnew_0()
    this%f_orderManagementRoles => BasicArrayListD_jnew_0()
    this%f_adjusterManagementRoles => BasicArrayListD_jnew_0()
    this%f_shippingManagementRoles => BasicArrayListD_jnew_0()
    this%f_webManagementRoles => BasicArrayListD_jnew_0()
        j_basicUserRoleFactory => BasicUserRoleFactory_jm_getInstance_0()
        jdiscardBoolean = this%f_adminRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_storeAdminRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_storeAdminRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_CUSTOMERMANAGER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADJUSTER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_PRODUCTMANAGER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_REVIEWER)
        jdiscardBoolean = this%f_storeManagementRoles%jm_add_1(j_basicUserRoleFactory%f_SHIPPING)
        jdiscardBoolean = this%f_productManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_productManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_productManagementRoles%jm_add_1(j_basicUserRoleFactory%f_PRODUCTMANAGER)
        jdiscardBoolean = this%f_reviewManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_reviewManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_reviewManagementRoles%jm_add_1(j_basicUserRoleFactory%f_REVIEWER)
        jdiscardBoolean = this%f_customerManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_customerManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_customerManagementRoles%jm_add_1(j_basicUserRoleFactory%f_CUSTOMERMANAGER)
        jdiscardBoolean = this%f_workflowManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_workflowManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_workflowManagementRoles%jm_add_1(j_basicUserRoleFactory%f_WORKFLOWEDITOR)
        jdiscardBoolean = this%f_orderManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_orderManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_adjusterManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_adjusterManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_adjusterManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADJUSTER)
        jdiscardBoolean = this%f_shippingManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_shippingManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_shippingManagementRoles%jm_add_1(j_basicUserRoleFactory%f_SHIPPING)
        jdiscardBoolean = this%f_webManagementRoles%jm_add_1(j_basicUserRoleFactory%f_ADMINISTRATOR)
        jdiscardBoolean = this%f_webManagementRoles%jm_add_1(j_basicUserRoleFactory%f_STOREMANAGER)
        jdiscardBoolean = this%f_webManagementRoles%jm_add_1(j_basicUserRoleFactory%f_WEBMANAGER)
        jdiscardBoolean = this%f_webManagementRoles%jm_add_1(j_basicUserRoleFactory%f_WORKFLOWEDITOR)
        jdiscardBoolean = this%f_webManagementRoles%jm_add_1(j_basicUserRoleFactory%f_VIEWEDITOR)
  end function

  recursive function AdminRoleFactory_jm_getInstance_0() result(jresult)
    class(AdminRoleFactory), pointer :: jresult
        jresult => AdminRoleFactory_jstatic_instance()
        return
  end function

  recursive function AdminRoleFactory_jm_getProductManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_productManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getAdminRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_adminRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getStoreAdminRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_storeAdminRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getStoreManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_storeManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getReviewManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_reviewManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getCustomerManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_customerManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getWorkflowManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_workflowManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getWebManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_webManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getShippingManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_shippingManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getAdjusterManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_adjusterManagementRoles
        return
  end function

  recursive function AdminRoleFactory_jm_getOrderManagementRoles_0(this) result(jresult)
    class(AdminRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_orderManagementRoles
        return
  end function
end module AdminRoleFactory_m

