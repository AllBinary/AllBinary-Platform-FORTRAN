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
! package org.allbinary.logic.io
module AbIOSystem_m
  use JR_m
  implicit none

  type, extends(JObject) :: AbIOSystem
    character(len=:), allocatable :: f_type
  contains
    procedure :: jm_getType_0 => AbIOSystem_jm_getType_0
    procedure :: jm_isType_1 => AbIOSystem_jm_isType_1
  end type

  class(AbIOSystem), pointer, save :: AbIOSystem_jcell_instance => null()
  logical, save :: AbIOSystem_jset_instance = .false.

contains

  function AbIOSystem_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbIOSystem), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbIOSystem)
      jresult => object
    end select
  end function

  function AbIOSystem_jstatic_instance() result(jresult)
    class(AbIOSystem), pointer :: jresult
    if (.not. AbIOSystem_jset_instance) then
      AbIOSystem_jset_instance = .true.
      AbIOSystem_jcell_instance => AbIOSystem_jnew_0()
    end if
    jresult => AbIOSystem_jcell_instance
  end function

  subroutine AbIOSystem_jsetstatic_instance(jvalue)
    class(AbIOSystem), target, optional :: jvalue
    AbIOSystem_jset_instance = .true.
    if (present(jvalue)) then
      AbIOSystem_jcell_instance => jvalue
    else
      AbIOSystem_jcell_instance => null()
    end if
  end subroutine

  function AbIOSystem_jnew_0() result(this)
    class(AbIOSystem), pointer :: this
    allocate(this)
    this%jclass = 'AbIOSystem'
    this%f_type = ''
    this%f_type = 'java.io'
  end function

  recursive function AbIOSystem_jm_getInstance_0() result(jresult)
    class(AbIOSystem), pointer :: jresult
        jresult => AbIOSystem_jstatic_instance()
        return
  end function

  recursive function AbIOSystem_jm_getType_0(this) result(jresult)
    class(AbIOSystem), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_type
        return
  end function

  recursive function AbIOSystem_jm_isType_1(this, j_type) result(jresult)
    class(AbIOSystem), target :: this
    character(len=*), intent(in) :: j_type
    logical :: jresult
        if ((JR_compareTo(this%f_type, j_type) == 0)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module AbIOSystem_m

