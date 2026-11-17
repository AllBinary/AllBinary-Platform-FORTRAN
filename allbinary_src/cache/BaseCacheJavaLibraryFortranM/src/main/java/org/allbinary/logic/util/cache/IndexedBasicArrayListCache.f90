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
module IndexedBasicArrayListCache_m
  use JR_m
  use CommonStrings_m
  use BaseBasicArrayListCache_m
  use CacheInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(BaseBasicArrayListCache) :: IndexedBasicArrayListCache
    class(CommonStrings), pointer :: f_commonStrings => null()
    integer(4) :: f_size = 0
    integer(4) :: f_index = 0
  contains
    procedure :: jm_init_1 => IndexedBasicArrayListCache_jm_init_1
    procedure :: jm_getAt_1 => IndexedBasicArrayListCache_jm_getAt_1
    procedure :: jm_addDefault_0 => IndexedBasicArrayListCache_jm_addDefault_0
    procedure :: jm_addObject_1 => IndexedBasicArrayListCache_jm_addObject_1
    procedure :: jm_add_1 => IndexedBasicArrayListCache_jm_add_1
    procedure :: jm_addArray_1 => IndexedBasicArrayListCache_jm_addArray_1
    procedure :: jm_clear_0 => IndexedBasicArrayListCache_jm_clear_0
  end type


contains

  function IndexedBasicArrayListCache_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedBasicArrayListCache), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedBasicArrayListCache)
      jresult => object
    end select
  end function

  recursive function IndexedBasicArrayListCache_jnew_0() result(this)
    class(IndexedBasicArrayListCache), pointer :: this
    allocate(this)
    this%jclass = 'IndexedBasicArrayListCache'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_size = 0
    this%f_index = 0
        continue
  end function

  recursive function IndexedBasicArrayListCache_jm_createCache_1(j_size) result(jresult)
    integer(4), value :: j_size
    class(IndexedBasicArrayListCache), pointer :: jresult
    class(IndexedBasicArrayListCache), pointer :: j_indexedBasicArrayListCache
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_indexedBasicArrayListCache => IndexedBasicArrayListCache_jnew_0()
        call j_indexedBasicArrayListCache%jm_init_1(j_size)
        jresult => j_indexedBasicArrayListCache
        return
  end function

  recursive subroutine IndexedBasicArrayListCache_jm_init_1(this, j_size)
    class(IndexedBasicArrayListCache), target :: this
    integer(4), value :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_size < j_size)) then
            call this%f_list%jm_ensureCapacity_1(j_size)
            j_index = (j_size - 1)
            do while ((j_index >= this%f_size))
                call this%jm_addDefault_0()
                j_index = j_index - 1
            end do
            this%f_size = j_size
        end if
  end subroutine

  recursive function IndexedBasicArrayListCache_jm_getAt_1(this, j_index) result(jresult)
    class(IndexedBasicArrayListCache), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jresult
        jresult => this%f_list%f_objectArray((j_index) + 1)%v
        return
  end function

  recursive subroutine IndexedBasicArrayListCache_jm_addDefault_0(this)
    class(IndexedBasicArrayListCache), target :: this
    continue
  end subroutine

  recursive subroutine IndexedBasicArrayListCache_jm_addObject_1(this, j_anyType)
    class(IndexedBasicArrayListCache), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_anyType)
  end subroutine

  recursive subroutine IndexedBasicArrayListCache_jm_add_1(this, j_cacheableInterface)
    class(IndexedBasicArrayListCache), target :: this
    class(CacheableInterface), target, optional :: j_cacheableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_cacheableInterface)
  end subroutine

  recursive subroutine IndexedBasicArrayListCache_jm_addArray_1(this, j_cacheableInterfaces)
    class(IndexedBasicArrayListCache), target :: this
    type(JRef) :: j_cacheableInterfaces(:)
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine IndexedBasicArrayListCache_jm_clear_0(this)
    class(IndexedBasicArrayListCache), target :: this
        this%f_index = 0
  end subroutine
end module IndexedBasicArrayListCache_m

function IndexedBasicArrayListCache_jnew_0_jext() result(this)
  use IndexedBasicArrayListCache_m, only: JObject, IndexedBasicArrayListCache_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => IndexedBasicArrayListCache_jnew_0()
end function

