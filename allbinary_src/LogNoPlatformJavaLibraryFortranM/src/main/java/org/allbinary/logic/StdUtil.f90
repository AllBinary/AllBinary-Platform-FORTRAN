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
! package org.allbinary.logic
module StdUtil_m
  use JR_m
  use ABHashMap_m
  use ABHashtable_m
  use ABStack_m
  use ABVector_m
  implicit none

  type, extends(JObject) :: StdUtil
    class(ABVector), pointer :: f_EMPTY_VECTOR => null()
    class(ABHashtable), pointer :: f_NULL_TABLE => null()
    class(ABHashMap), pointer :: f_NULL_MAP => null()
  contains
    procedure :: jm_createStack_0 => StdUtil_jm_createStack_0
    procedure :: jm_createVector_0 => StdUtil_jm_createVector_0
    procedure :: jm_createHashtable_0 => StdUtil_jm_createHashtable_0
    procedure :: jm_createHashMap_0 => StdUtil_jm_createHashMap_0
  end type

  class(StdUtil), pointer, save :: StdUtil_jcell_instance => null()
  logical, save :: StdUtil_jset_instance = .false.

contains

  function StdUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StdUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StdUtil)
      jresult => object
    end select
  end function

  function StdUtil_jstatic_instance() result(jresult)
    class(StdUtil), pointer :: jresult
    if (.not. StdUtil_jset_instance) then
      StdUtil_jset_instance = .true.
      StdUtil_jcell_instance => StdUtil_jnew_0()
    end if
    jresult => StdUtil_jcell_instance
  end function

  subroutine StdUtil_jsetstatic_instance(jvalue)
    class(StdUtil), target, optional :: jvalue
    StdUtil_jset_instance = .true.
    if (present(jvalue)) then
      StdUtil_jcell_instance => jvalue
    else
      StdUtil_jcell_instance => null()
    end if
  end subroutine

  function StdUtil_jnew_0() result(this)
    class(StdUtil), pointer :: this
    allocate(this)
    this%jclass = 'StdUtil'
    this%f_EMPTY_VECTOR => this%jm_createVector_0()
    this%f_NULL_TABLE => this%jm_createHashtable_0()
    this%f_NULL_MAP => this%jm_createHashMap_0()
  end function

  recursive function StdUtil_jm_getInstance_0() result(jresult)
    class(StdUtil), pointer :: jresult
        jresult => StdUtil_jstatic_instance()
        return
  end function

  recursive function StdUtil_jm_createStack_0(this) result(jresult)
    class(StdUtil), target :: this
    class(ABStack), pointer :: jresult
        jresult => ABStack_jnew_0()
        return
  end function

  recursive function StdUtil_jm_createVector_0(this) result(jresult)
    class(StdUtil), target :: this
    class(ABVector), pointer :: jresult
        jresult => ABVector_jnew_0()
        return
  end function

  recursive function StdUtil_jm_createHashtable_0(this) result(jresult)
    class(StdUtil), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => ABHashtable_jnew_0()
        return
  end function

  recursive function StdUtil_jm_createHashMap_0(this) result(jresult)
    class(StdUtil), target :: this
    class(ABHashMap), pointer :: jresult
        jresult => ABHashMap_jnew_0()
        return
  end function
end module StdUtil_m

