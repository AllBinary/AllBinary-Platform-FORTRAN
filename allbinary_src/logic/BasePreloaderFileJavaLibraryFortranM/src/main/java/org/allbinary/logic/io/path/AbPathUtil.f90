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
! package org.allbinary.logic.io.path
module AbPathUtil_m
  use JR_m
  use AbPath_m
  implicit none

  type, extends(JObject) :: AbPathUtil
    class(AbPath), pointer :: f_NO_ABPATH => null()
  end type

  class(AbPathUtil), pointer, save :: AbPathUtil_jcell_instance => null()
  logical, save :: AbPathUtil_jset_instance = .false.

contains

  function AbPathUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbPathUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbPathUtil)
      jresult => object
    end select
  end function

  function AbPathUtil_jstatic_instance() result(jresult)
    class(AbPathUtil), pointer :: jresult
    if (.not. AbPathUtil_jset_instance) then
      AbPathUtil_jset_instance = .true.
      AbPathUtil_jcell_instance => AbPathUtil_jnew_0()
    end if
    jresult => AbPathUtil_jcell_instance
  end function

  subroutine AbPathUtil_jsetstatic_instance(jvalue)
    class(AbPathUtil), target, optional :: jvalue
    AbPathUtil_jset_instance = .true.
    if (present(jvalue)) then
      AbPathUtil_jcell_instance => jvalue
    else
      AbPathUtil_jcell_instance => null()
    end if
  end subroutine

  function AbPathUtil_jnew_0() result(this)
    class(AbPathUtil), pointer :: this
    allocate(this)
    this%jclass = 'AbPathUtil'
    this%f_NO_ABPATH => AbPath_jm_createAbPath_0()
  end function

  recursive function AbPathUtil_jm_getInstance_0() result(jresult)
    class(AbPathUtil), pointer :: jresult
        jresult => AbPathUtil_jstatic_instance()
        return
  end function
end module AbPathUtil_m

