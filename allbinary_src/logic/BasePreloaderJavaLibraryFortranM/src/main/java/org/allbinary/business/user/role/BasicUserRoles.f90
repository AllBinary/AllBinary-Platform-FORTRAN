! 
! AllBinary Open License Version 1 
! Copyright (c) 2026 AllBinary 
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
module BasicUserRoles_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicUserRole_m
  implicit none

  type, extends(JObject) :: BasicUserRoles
    class(BasicArrayList), pointer :: f_roleVector => null()
  contains
    procedure :: jm_getRole_1 => BasicUserRoles_jm_getRole_1
    procedure :: jm_getAll_0 => BasicUserRoles_jm_getAll_0
  end type

  class(BasicUserRoles), pointer, save :: BasicUserRoles_jcell_instance => null()
  logical, save :: BasicUserRoles_jset_instance = .false.

contains

  function BasicUserRoles_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicUserRoles), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicUserRoles)
      jresult => object
    end select
  end function

  function BasicUserRoles_jstatic_instance() result(jresult)
    class(BasicUserRoles), pointer :: jresult
    if (.not. BasicUserRoles_jset_instance) then
      BasicUserRoles_jset_instance = .true.
      BasicUserRoles_jcell_instance => BasicUserRoles_jnew_0()
    end if
    jresult => BasicUserRoles_jcell_instance
  end function

  function BasicUserRoles_jnew_0() result(this)
    class(BasicUserRoles), pointer :: this
    allocate(this)
    this%jclass = 'BasicUserRoles'
    this%f_roleVector => BasicArrayListD_jnew_0()
  end function

  recursive function BasicUserRoles_jm_getInstance_0() result(jresult)
    class(BasicUserRoles), pointer :: jresult
        jresult => BasicUserRoles_jstatic_instance()
        return
  end function

  recursive function BasicUserRoles_jm_getRole_1(this, j_role) result(jresult)
    class(BasicUserRoles), target :: this
    character(len=*), intent(in) :: j_role
    class(BasicUserRole), pointer :: jresult
    class(BasicArrayList), pointer :: j_roleVector
    integer(4) :: j_size
    class(BasicUserRole), pointer :: j_userRole
    integer(4) :: j_index
        j_roleVector => this%jm_getAll_0()
        j_size = j_roleVector%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_userRole => BasicUserRole_jcast(j_roleVector%jm_get_1(j_index))
            if ((JR_compareTo(j_role, j_userRole%jm_toString_0()) == 0)) then
                jresult => j_userRole
                return
            end if
            j_index = j_index + 1
        end do
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function BasicUserRoles_jm_getAll_0(this) result(jresult)
    class(BasicUserRoles), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_roleVector
        return
  end function
end module BasicUserRoles_m

