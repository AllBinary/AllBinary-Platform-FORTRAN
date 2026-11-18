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
module BasicArrayListPool_m
  use JR_m
  use BasicArrayList_m
  use AbstractArrayListPool_m
  use CacheableInterfaceFactoryInterface_m
  use CacheableInterface_m
  use BasicArrayListCacheable_m
  implicit none

  type, extends(AbstractArrayListPool) :: BasicArrayListPool
  contains
    procedure :: jm_clear_0 => BasicArrayListPool_jm_clear_0
    procedure :: jm_remove_1 => BasicArrayListPool_jm_remove_1
    procedure :: jm_addAll_1 => BasicArrayListPool_jm_addAll_1
    procedure :: jm_releaseUsedBackToPool_1 => BasicArrayListPool_jm_releaseUsedBackToPool_1
  end type


contains

  function BasicArrayListPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListPool)
      jresult => object
    end select
  end function

  recursive function BasicArrayListPool_jnew_1(j_cacheableInterfaceFactoryInterface) result(this)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(BasicArrayListPool), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListPool'
        continue ! super()
  end function

  recursive subroutine BasicArrayListPool_jm_clear_0(this)
    class(BasicArrayListPool), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_buffers%jm_clear_0()
  end subroutine

  recursive function BasicArrayListPool_jm_remove_1(this, j_key) result(jresult)
    class(BasicArrayListPool), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    integer(4) :: j_size
        j_size = this%f_buffers%jm_size_0()
        if ((j_size > 0)) then
            jresult => CacheableInterface_jcast(this%f_buffers%jm_removeAt_1((j_size - 1)))
            return
        else
            jresult => this%f_cacheableInterfaceFactoryInterface%jm_getInstance_1(j_key)
            return
        end if
  end function

  recursive subroutine BasicArrayListPool_jm_addAll_1(this, j_usedList)
    class(BasicArrayListPool), target :: this
    class(BasicArrayList), target, optional :: j_usedList
    class(CacheableInterface), pointer :: j_anyType
    integer(4) :: j_index
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = j_usedList%jm_size_0()
        do while ((jtemp1 >= 0))
            j_anyType => CacheableInterface_jcast(j_usedList%f_objectArray((j_index) + 1)%v)
            call this%jm_add_1(j_anyType)
        end do
        call j_usedList%jm_clear_0()
  end subroutine

  recursive subroutine BasicArrayListPool_jm_releaseUsedBackToPool_1(this, j_usedList)
    class(BasicArrayListPool), target :: this
    class(BasicArrayList), target, optional :: j_usedList
    class(BasicArrayListCacheable), pointer :: j_list
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = j_index - 1
        jtemp2 = j_index
        j_index = j_usedList%jm_size_0()
        do while ((jtemp2 >= 0))
            j_list => BasicArrayListCacheable_jcast(j_usedList%f_objectArray((j_index) + 1)%v)
            if ((j_list%jm_size_0() == 0)) then
                jdiscardRef => j_usedList%jm_removeAt_1(j_index)
                call this%jm_add_1(j_list)
            end if
        end do
  end subroutine
end module BasicArrayListPool_m

