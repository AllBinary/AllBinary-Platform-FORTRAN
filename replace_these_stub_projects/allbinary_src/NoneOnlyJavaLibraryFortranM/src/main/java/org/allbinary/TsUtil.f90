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
module TsUtil_m
  use JR_m
  use System_m
  implicit none

  type, extends(JObject) :: TsUtil
  contains
    procedure :: jm_hashCode_1 => TsUtil_jm_hashCode_1
    procedure :: jm_waitFor_2 => TsUtil_jm_waitFor_2
    procedure :: jm_getRecord_2 => TsUtil_jm_getRecord_2
    procedure :: jm_compareTo_2 => TsUtil_jm_compareTo_2
    procedure :: jm_equalIgnoreCase_2 => TsUtil_jm_equalIgnoreCase_2
    procedure :: jm_equalsNotstring_2 => TsUtil_jm_equalsNotstring_2
    procedure :: jm_toNumberFromChar_1 => TsUtil_jm_toNumberFromChar_1
    procedure :: jm_toNumber_1 => TsUtil_jm_toNumber_1
    procedure :: jm_getByteArray_1 => TsUtil_jm_getByteArray_1
    procedure :: jm_isItemListener_1 => TsUtil_jm_isItemListener_1
    procedure :: jm_printAvailableMethods_1 => TsUtil_jm_printAvailableMethods_1
    procedure :: jm_gc_0 => TsUtil_jm_gc_0
  end type

  class(TsUtil), pointer, save :: TsUtil_jcell_instance => null()
  logical, save :: TsUtil_jset_instance = .false.

contains

  function TsUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TsUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TsUtil)
      jresult => object
    end select
  end function

  function TsUtil_jstatic_instance() result(jresult)
    class(TsUtil), pointer :: jresult
    if (.not. TsUtil_jset_instance) then
      TsUtil_jset_instance = .true.
      TsUtil_jcell_instance => TsUtil_jnew_0()
    end if
    jresult => TsUtil_jcell_instance
  end function

  function TsUtil_jnew_0() result(this)
    class(TsUtil), pointer :: this
    allocate(this)
    this%jclass = 'TsUtil'
  end function

  recursive function TsUtil_jm_getInstance_0() result(jresult)
    class(TsUtil), pointer :: jresult
        jresult => TsUtil_jstatic_instance()
        return
  end function

  recursive function TsUtil_jm_hashCode_1(this, j_anyType) result(jresult)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
        jresult = JR_objectHashCode(j_anyType)
        return
  end function

  recursive subroutine TsUtil_jm_waitFor_2(this, j_any, j_timeoutMillis)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_any
    integer(8), value :: j_timeoutMillis
    class(JObject), pointer :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_anyType => j_any
        call JR_wait(j_anyType)
  end subroutine

  recursive function TsUtil_jm_getRecord_2(this, j_anyType, j_recordId) result(jresult)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4), value :: j_recordId
    integer(4), allocatable :: jresult(:)
        jresult = JR_newIntArray(0)
        return
  end function

  recursive function TsUtil_jm_compareTo_2(this, j_a, j_b) result(jresult)
    class(TsUtil), target :: this
    character(len=*), intent(in) :: j_a
    character(len=*), intent(in) :: j_b
    integer(4) :: jresult
        jresult = JR_compareTo(j_a, j_b)
        return
  end function

  recursive function TsUtil_jm_equalIgnoreCase_2(this, j_a, j_b) result(jresult)
    class(TsUtil), target :: this
    character(len=*), intent(in) :: j_a
    character(len=*), intent(in) :: j_b
    logical :: jresult
        jresult = JR_equalsIgnoreCase(j_a, j_b)
        return
  end function

  recursive function TsUtil_jm_equalsNotstring_2(this, j_anyType, j_object2) result(jresult)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), target, optional :: j_object2
    logical :: jresult
        jresult = JR_same(j_anyType, j_object2)
        return
  end function

  recursive function TsUtil_jm_toNumberFromChar_1(this, j_value) result(jresult)
    class(TsUtil), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
        jresult = j_value
        return
  end function

  recursive function TsUtil_jm_toNumber_1(this, j_value) result(jresult)
    class(TsUtil), target :: this
    integer(4), value :: j_value
    integer(4) :: jresult
        jresult = j_value
        return
  end function

  recursive function TsUtil_jm_getByteArray_1(this, j_string) result(jresult)
    class(TsUtil), target :: this
    character(len=*), intent(in) :: j_string
    integer(4), allocatable :: jresult(:)
        jresult = JR_getBytes(j_string)
        return
  end function

  recursive function TsUtil_jm_isItemListener_1(this, j_owner) result(jresult)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_owner
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine TsUtil_jm_printAvailableMethods_1(this, j_anyType)
    class(TsUtil), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive subroutine TsUtil_jm_gc_0(this)
    class(TsUtil), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call System_jm_gc_0()
  end subroutine
end module TsUtil_m

