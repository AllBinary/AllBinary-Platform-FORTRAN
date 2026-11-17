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
! package org.allbinary.util
module EnumerationUtil_m
  use JR_m
  use Enumeration_m
  use BasicArrayListD_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: EnumerationUtil
  contains
    procedure :: jm_hasMoreElements_1 => EnumerationUtil_jm_hasMoreElements_1
    procedure :: jm_nextElement_1 => EnumerationUtil_jm_nextElement_1
    procedure :: jm_getAsArray_1 => EnumerationUtil_jm_getAsArray_1
  end type

  class(EnumerationUtil), pointer, save :: EnumerationUtil_jcell_instance => null()
  logical, save :: EnumerationUtil_jset_instance = .false.

contains

  function EnumerationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EnumerationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EnumerationUtil)
      jresult => object
    end select
  end function

  function EnumerationUtil_jstatic_instance() result(jresult)
    class(EnumerationUtil), pointer :: jresult
    if (.not. EnumerationUtil_jset_instance) then
      EnumerationUtil_jset_instance = .true.
      EnumerationUtil_jcell_instance => EnumerationUtil_jnew_0()
    end if
    jresult => EnumerationUtil_jcell_instance
  end function

  function EnumerationUtil_jnew_0() result(this)
    class(EnumerationUtil), pointer :: this
    allocate(this)
    this%jclass = 'EnumerationUtil'
  end function

  recursive function EnumerationUtil_jm_getInstance_0() result(jresult)
    class(EnumerationUtil), pointer :: jresult
        jresult => EnumerationUtil_jstatic_instance()
        return
  end function

  recursive function EnumerationUtil_jm_hasMoreElements_1(this, j_enumeration) result(jresult)
    class(EnumerationUtil), target :: this
    class(Enumeration), target, optional :: j_enumeration
    logical :: jresult
        jresult = j_enumeration%jm_hasMoreElements_0()
        return
  end function

  recursive function EnumerationUtil_jm_nextElement_1(this, j_enumeration) result(jresult)
    class(EnumerationUtil), target :: this
    class(Enumeration), target, optional :: j_enumeration
    class(JObject), pointer :: jresult
        jresult => j_enumeration%jm_nextElement_0()
        return
  end function

  recursive function EnumerationUtil_jm_getAsArray_1(this, j_enumeration) result(jresult)
    class(EnumerationUtil), target :: this
    class(Enumeration), target, optional :: j_enumeration
    type(JRef), allocatable :: jresult(:)
    class(BasicArrayList), pointer :: j_basicArrayList
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_basicArrayList => BasicArrayListD_jnew_0()
        do while (this%jm_hasMoreElements_1(j_enumeration))
            jdiscardBoolean = j_basicArrayList%jm_add_1(this%jm_nextElement_1(j_enumeration))
        end do
        jresult = j_basicArrayList%jm_toArray_0()
        return
  end function
end module EnumerationUtil_m

