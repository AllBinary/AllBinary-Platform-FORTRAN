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
module BasicUserRole_m
  use JR_m
  use Serializable_m
  use BasicUserRoles_m
  implicit none

  type, extends(JObject) :: BasicUserRole
    integer(4) :: f_m_int_RoleId = 0
    character(len=:), allocatable :: f_role
    character(len=:), allocatable :: f_displayValue
    integer(8) :: f_sessionTimeout = 0_8
    integer(8) :: f_sessionInactivityTimeout = 0_8
  contains
    procedure :: jm_getRoleId_0 => BasicUserRole_jm_getRoleId_0
    procedure :: jm_getRole_0 => BasicUserRole_jm_getRole_0
    procedure :: jm_getSessionTimeout_0 => BasicUserRole_jm_getSessionTimeout_0
    procedure :: jm_getSessionInactivityTimeout_0 => BasicUserRole_jm_getSessionInactivityTimeout_0
    procedure :: jm_equals_1 => BasicUserRole_jm_equals_1
    procedure :: jm_toString_0 => BasicUserRole_jm_toString_0
  end type


contains

  function BasicUserRole_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicUserRole), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicUserRole)
      jresult => object
    end select
  end function

  recursive function BasicUserRole_jnew_4(j_aRole, j_a_int_RoleId, j_aSessionTimeout, j_aSessionInactivityTimeout) result(this)
    character(len=*), intent(in) :: j_aRole
    integer(4), value :: j_a_int_RoleId
    integer(8), value :: j_aSessionTimeout
    integer(8), value :: j_aSessionInactivityTimeout
    class(BasicUserRole), pointer :: this
    allocate(this)
    this%jclass = 'BasicUserRole'
    this%f_role = ''
    this%f_displayValue = ''
    
    
    
    
    
        this => BasicUserRole_jnew_5(j_aRole, j_aRole, j_a_int_RoleId, j_aSessionTimeout, j_aSessionInactivityTimeout)
  end function

  recursive function BasicUserRole_jnew_5(j_aRole, j_aDisplayValue, j_a_int_RoleId, j_aSessionTimeout, j_aSessionInactivityTimeout) result(this)
    character(len=*), intent(in) :: j_aRole
    character(len=*), intent(in) :: j_aDisplayValue
    integer(4), value :: j_a_int_RoleId
    integer(8), value :: j_aSessionTimeout
    integer(8), value :: j_aSessionInactivityTimeout
    class(BasicUserRole), pointer :: this
    class(BasicUserRoles), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicUserRole'
    this%f_role = ''
    this%f_displayValue = ''
    
    
    
    
    
        this%f_m_int_RoleId = j_a_int_RoleId
        this%f_role = j_aRole
        this%f_displayValue = j_aDisplayValue
        this%f_sessionTimeout = j_aSessionTimeout
        this%f_sessionInactivityTimeout = j_aSessionInactivityTimeout
        jtemp1 => BasicUserRoles_jm_getInstance_0()
        jdiscardBoolean = jtemp1%f_roleVector%jm_add_1(this)
  end function

  recursive function BasicUserRole_jm_getRoleId_0(this) result(jresult)
    class(BasicUserRole), target :: this
    integer(4) :: jresult
        jresult = this%f_m_int_RoleId
        return
  end function

  recursive function BasicUserRole_jm_getRole_0(this) result(jresult)
    class(BasicUserRole), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_role
        return
  end function

  recursive function BasicUserRole_jm_getSessionTimeout_0(this) result(jresult)
    class(BasicUserRole), target :: this
    integer(8) :: jresult
        jresult = this%f_sessionTimeout
        return
  end function

  recursive function BasicUserRole_jm_getSessionInactivityTimeout_0(this) result(jresult)
    class(BasicUserRole), target :: this
    integer(8) :: jresult
        jresult = this%f_sessionInactivityTimeout
        return
  end function

  recursive function BasicUserRole_jm_equals_1(this, j_basicUserRole) result(jresult)
    class(BasicUserRole), target :: this
    class(BasicUserRole), target, optional :: j_basicUserRole
    logical :: jresult
        if ((this%jm_getRoleId_0() == j_basicUserRole%jm_getRoleId_0())) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function BasicUserRole_jm_toString_0(this) result(jresult)
    class(BasicUserRole), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%jm_getRole_0()
        return
  end function
end module BasicUserRole_m

