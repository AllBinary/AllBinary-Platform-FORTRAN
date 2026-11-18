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
! package org.allbinary.logic
module VectorUtil_m
  use JR_m
  use Vector_m
  implicit none

  type, extends(JObject) :: VectorUtil
  contains
    procedure :: jm_getSize_1 => VectorUtil_jm_getSize_1
    procedure :: jm_elementAt_2 => VectorUtil_jm_elementAt_2
  end type

  class(VectorUtil), pointer, save :: VectorUtil_jcell_instance => null()
  logical, save :: VectorUtil_jset_instance = .false.

contains

  function VectorUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorUtil)
      jresult => object
    end select
  end function

  function VectorUtil_jstatic_instance() result(jresult)
    class(VectorUtil), pointer :: jresult
    if (.not. VectorUtil_jset_instance) then
      VectorUtil_jset_instance = .true.
      VectorUtil_jcell_instance => VectorUtil_jnew_0()
    end if
    jresult => VectorUtil_jcell_instance
  end function

  subroutine VectorUtil_jsetstatic_instance(jvalue)
    class(VectorUtil), target, optional :: jvalue
    VectorUtil_jset_instance = .true.
    if (present(jvalue)) then
      VectorUtil_jcell_instance => jvalue
    else
      VectorUtil_jcell_instance => null()
    end if
  end subroutine

  function VectorUtil_jnew_0() result(this)
    class(VectorUtil), pointer :: this
    allocate(this)
    this%jclass = 'VectorUtil'
  end function

  recursive function VectorUtil_jm_getInstance_0() result(jresult)
    class(VectorUtil), pointer :: jresult
        jresult => VectorUtil_jstatic_instance()
        return
  end function

  recursive function VectorUtil_jm_getSize_1(this, j_anyType) result(jresult)
    class(VectorUtil), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
    class(Vector), pointer :: j_vector
        j_vector => Vector_jcast(j_anyType)
        jresult = j_vector%jm_size_0()
        return
  end function

  recursive function VectorUtil_jm_elementAt_2(this, j_anyType, j_index) result(jresult)
    class(VectorUtil), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4), value :: j_index
    class(JObject), pointer :: jresult
    class(Vector), pointer :: j_vector
        j_vector => Vector_jcast(j_anyType)
        jresult => j_vector%jm_elementAt_1(j_index)
        return
  end function
end module VectorUtil_m

