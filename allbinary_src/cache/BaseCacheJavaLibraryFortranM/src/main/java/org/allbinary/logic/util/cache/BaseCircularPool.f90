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
! package org.allbinary.logic.util.cache
module BaseCircularPool_m
  use JR_m
  use NullUtil_m
  use CircularIndexUtil_m
  use AllBinaryObjectFactoryInterface_m
  implicit none

  type, extends(JObject) :: BaseCircularPool
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    type(JRef), allocatable :: f_OBJECT_ARRAY(:)
  contains
    procedure :: jm_getNextInstance_0 => BaseCircularPool_jm_getNextInstance_0
    procedure :: jm_init_1 => BaseCircularPool_jm_init_1
    procedure :: jm_getInstance_1 => BaseCircularPool_jm_getInstance_1
  end type


contains

  function BaseCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseCircularPool)
      jresult => object
    end select
  end function

  function BaseCircularPool_jnew_0() result(this)
    class(BaseCircularPool), pointer :: this
    class(NullUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'BaseCircularPool'
    this%f_circularIndexUtil => CircularIndexUtil_jstatic_NULL_CIRCULAR_INDEX_UTIL()
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_OBJECT_ARRAY = jtemp1%f_NULL_OBJECT_ARRAY
  end function

  recursive function BaseCircularPool_jm_getNextInstance_0(this) result(jresult)
    class(BaseCircularPool), target :: this
    class(JObject), pointer :: jresult
    class(JObject), pointer :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_anyType => this%f_OBJECT_ARRAY((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        jresult => j_anyType
        return
  end function

  recursive subroutine BaseCircularPool_jm_init_1(this, j_allBinaryObjectFactoryInterface)
    class(BaseCircularPool), target :: this
    class(AllBinaryObjectFactoryInterface), target, optional :: j_allBinaryObjectFactoryInterface
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1(0)
        j_size = this%f_circularIndexUtil%jm_getSize_0()
        j_index = 0
        do while ((j_index < j_size))
            this%f_OBJECT_ARRAY((j_index) + 1)%v => j_allBinaryObjectFactoryInterface%jm_getInstance_0()
            j_index = j_index + 1
        end do
  end subroutine

  recursive function BaseCircularPool_jm_getInstance_1(this, j_index) result(jresult)
    class(BaseCircularPool), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jresult
        jresult => this%f_OBJECT_ARRAY((j_index) + 1)%v
        return
  end function
end module BaseCircularPool_m

