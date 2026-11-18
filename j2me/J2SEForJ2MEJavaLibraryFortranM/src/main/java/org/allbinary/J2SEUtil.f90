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
! package org.allbinary
module J2SEUtil_m
  use JR_m
  use HashMap_m
  use Map_m
  use Set_m
  implicit none

  type, extends(JObject) :: J2SEUtil
  contains
    procedure :: jm_getHashMapAsArray_1 => J2SEUtil_jm_getHashMapAsArray_1
    procedure :: jm_getMapAsArray_1 => J2SEUtil_jm_getMapAsArray_1
    procedure :: jm_getSetAsArray_1 => J2SEUtil_jm_getSetAsArray_1
  end type

  class(J2SEUtil), pointer, save :: J2SEUtil_jcell_instance => null()
  logical, save :: J2SEUtil_jset_instance = .false.

contains

  function J2SEUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(J2SEUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (J2SEUtil)
      jresult => object
    end select
  end function

  function J2SEUtil_jstatic_instance() result(jresult)
    class(J2SEUtil), pointer :: jresult
    if (.not. J2SEUtil_jset_instance) then
      J2SEUtil_jset_instance = .true.
      J2SEUtil_jcell_instance => J2SEUtil_jnew_0()
    end if
    jresult => J2SEUtil_jcell_instance
  end function

  subroutine J2SEUtil_jsetstatic_instance(jvalue)
    class(J2SEUtil), target, optional :: jvalue
    J2SEUtil_jset_instance = .true.
    if (present(jvalue)) then
      J2SEUtil_jcell_instance => jvalue
    else
      J2SEUtil_jcell_instance => null()
    end if
  end subroutine

  function J2SEUtil_jnew_0() result(this)
    class(J2SEUtil), pointer :: this
    allocate(this)
    this%jclass = 'J2SEUtil'
  end function

  recursive function J2SEUtil_jm_getInstance_0() result(jresult)
    class(J2SEUtil), pointer :: jresult
        jresult => J2SEUtil_jstatic_instance()
        return
  end function

  recursive function J2SEUtil_jm_getHashMapAsArray_1(this, j_hashMap) result(jresult)
    class(J2SEUtil), target :: this
    class(HashMap), target, optional :: j_hashMap
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_objectArray(:)
    class(JObject), pointer :: jtemp1
        jtemp1 => j_hashMap%jm_keySet_0()
        j_objectArray = jtemp1%jm_toArray_0()
        jresult = j_objectArray
        return
  end function

  recursive function J2SEUtil_jm_getMapAsArray_1(this, j_map) result(jresult)
    class(J2SEUtil), target :: this
    class(JObject), target, optional :: j_map
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_objectArray(:)
    class(JObject), pointer :: jtemp2
        jtemp2 => j_map%jm_keySet_0()
        j_objectArray = jtemp2%jm_toArray_0()
        jresult = j_objectArray
        return
  end function

  recursive function J2SEUtil_jm_getSetAsArray_1(this, j_set) result(jresult)
    class(J2SEUtil), target :: this
    class(JObject), target, optional :: j_set
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_objectArray(:)
        j_objectArray = j_set%jm_toArray_0()
        jresult = j_objectArray
        return
  end function
end module J2SEUtil_m

