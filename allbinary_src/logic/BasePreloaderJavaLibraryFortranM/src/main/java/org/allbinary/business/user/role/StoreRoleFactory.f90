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
module StoreRoleFactory_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicUserRoleFactory_m
  implicit none

  type, extends(JObject) :: StoreRoleFactory
    class(BasicArrayList), pointer :: f_roles => null()
    class(BasicArrayList), pointer :: f_subscriberRoles => null()
    class(BasicArrayList), pointer :: f_wholesaleRoles => null()
  contains
    procedure :: jm_getRoles_0 => StoreRoleFactory_jm_getRoles_0
    procedure :: jm_getSubscriberRoles_0 => StoreRoleFactory_jm_getSubscriberRoles_0
    procedure :: jm_getWholesaleRoles_0 => StoreRoleFactory_jm_getWholesaleRoles_0
  end type

  class(StoreRoleFactory), pointer, save :: StoreRoleFactory_jcell_instance => null()
  logical, save :: StoreRoleFactory_jset_instance = .false.

contains

  function StoreRoleFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StoreRoleFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StoreRoleFactory)
      jresult => object
    end select
  end function

  function StoreRoleFactory_jstatic_instance() result(jresult)
    class(StoreRoleFactory), pointer :: jresult
    if (.not. StoreRoleFactory_jset_instance) then
      StoreRoleFactory_jset_instance = .true.
      StoreRoleFactory_jcell_instance => StoreRoleFactory_jnew_0()
    end if
    jresult => StoreRoleFactory_jcell_instance
  end function

  subroutine StoreRoleFactory_jsetstatic_instance(jvalue)
    class(StoreRoleFactory), target, optional :: jvalue
    StoreRoleFactory_jset_instance = .true.
    if (present(jvalue)) then
      StoreRoleFactory_jcell_instance => jvalue
    else
      StoreRoleFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function StoreRoleFactory_jnew_0() result(this)
    class(StoreRoleFactory), pointer :: this
    class(BasicUserRoleFactory), pointer :: j_basicUserRoleFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'StoreRoleFactory'
    this%f_roles => BasicArrayListD_jnew_0()
    this%f_subscriberRoles => BasicArrayListD_jnew_0()
    this%f_wholesaleRoles => BasicArrayListD_jnew_0()
        j_basicUserRoleFactory => BasicUserRoleFactory_jm_getInstance_0()
        jdiscardBoolean = this%f_roles%jm_add_1(j_basicUserRoleFactory%f_CUSTOMER)
        jdiscardBoolean = this%f_roles%jm_add_1(j_basicUserRoleFactory%f_SUBSCRIBERCUSTOMER)
        jdiscardBoolean = this%f_roles%jm_add_1(j_basicUserRoleFactory%f_WHOLESALECUSTOMER)
        jdiscardBoolean = this%f_subscriberRoles%jm_add_1(j_basicUserRoleFactory%f_SUBSCRIBERCUSTOMER)
        jdiscardBoolean = this%f_wholesaleRoles%jm_add_1(j_basicUserRoleFactory%f_WHOLESALECUSTOMER)
  end function

  recursive function StoreRoleFactory_jm_getInstance_0() result(jresult)
    class(StoreRoleFactory), pointer :: jresult
        jresult => StoreRoleFactory_jstatic_instance()
        return
  end function

  recursive function StoreRoleFactory_jm_getRoles_0(this) result(jresult)
    class(StoreRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_roles
        return
  end function

  recursive function StoreRoleFactory_jm_getSubscriberRoles_0(this) result(jresult)
    class(StoreRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_subscriberRoles
        return
  end function

  recursive function StoreRoleFactory_jm_getWholesaleRoles_0(this) result(jresult)
    class(StoreRoleFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_wholesaleRoles
        return
  end function
end module StoreRoleFactory_m

