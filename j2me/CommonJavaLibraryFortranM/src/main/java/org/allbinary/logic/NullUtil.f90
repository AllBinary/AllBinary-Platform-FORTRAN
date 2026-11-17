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
module NullUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: NullUtil
    class(JObject), pointer :: f_NULL_OBJECT => null()
    character(len=:), allocatable :: f_NULL_CLASS
    type(JRef), allocatable :: f_NULL_OBJECT_ARRAY(:)
    integer(4), allocatable :: f_NULL_CHAR_ARRAY(:)
    integer(4), allocatable :: f_NULL_BYTE_ARRAY(:)
    integer(4), allocatable :: f_NULL_SHORT_ARRAY_ARRAY(:,:)
    integer(4), allocatable :: f_NULL_INT_ARRAY(:)
    integer(4), allocatable :: f_NULL_INT_ARRAY_ARRAY(:,:)
    integer(4), allocatable :: f_NULL_INT_ARRAY_ARRAY_ARRAY(:,:,:)
    real(4), allocatable :: f_NULL_FLOAT_ARRAY(:)
  end type

  class(NullUtil), pointer, save :: NullUtil_jcell_instance => null()
  logical, save :: NullUtil_jset_instance = .false.

contains

  function NullUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullUtil)
      jresult => object
    end select
  end function

  function NullUtil_jstatic_instance() result(jresult)
    class(NullUtil), pointer :: jresult
    if (.not. NullUtil_jset_instance) then
      NullUtil_jset_instance = .true.
      NullUtil_jcell_instance => NullUtil_jnew_0()
    end if
    jresult => NullUtil_jcell_instance
  end function

  function NullUtil_jnew_0() result(this)
    class(NullUtil), pointer :: this
    allocate(this)
    this%jclass = 'NullUtil'
    this%f_NULL_CLASS = ''
    this%f_NULL_OBJECT => JR_newJObject('Object')
    this%f_NULL_CLASS = JR_className(this%f_NULL_OBJECT)
    this%f_NULL_OBJECT_ARRAY = JR_newRefArray(0)
    this%f_NULL_CHAR_ARRAY = JR_newIntArray(0)
    this%f_NULL_BYTE_ARRAY = JR_newIntArray(0)
    this%f_NULL_SHORT_ARRAY_ARRAY = JR_newIntArray2(0, 0)
    this%f_NULL_INT_ARRAY = JR_newIntArray(0)
    this%f_NULL_INT_ARRAY_ARRAY = JR_newIntArray2(0, 0)
    this%f_NULL_INT_ARRAY_ARRAY_ARRAY = JR_newIntArray3(0, 0, 0)
    this%f_NULL_FLOAT_ARRAY = JR_newFloatArray(0)
  end function

  recursive function NullUtil_jm_getInstance_0() result(jresult)
    class(NullUtil), pointer :: jresult
        jresult => NullUtil_jstatic_instance()
        return
  end function
end module NullUtil_m

