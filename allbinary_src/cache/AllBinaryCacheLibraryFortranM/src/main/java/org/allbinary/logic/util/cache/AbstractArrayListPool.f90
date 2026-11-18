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
module AbstractArrayListPool_m
  use JR_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use PoolInterface_m
  use CacheableInterfaceFactoryInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(PoolInterface) :: AbstractArrayListPool
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_buffers => null()
    class(CacheableInterfaceFactoryInterface), pointer :: f_cacheableInterfaceFactoryInterface => null()
  contains
    procedure :: jm_clear_0 => AbstractArrayListPool_jm_clear_0
    procedure :: jm_remove_1 => AbstractArrayListPool_jm_remove_1
    procedure :: jm_add_1 => AbstractArrayListPool_jm_add_1
    procedure :: jm_addArray_1 => AbstractArrayListPool_jm_addArray_1
  end type


contains

  function AbstractArrayListPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AbstractArrayListPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AbstractArrayListPool)
      jresult => object
    end select
  end function

  recursive function AbstractArrayListPool_jnew_1(j_cacheableInterfaceFactoryInterface) result(this)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(AbstractArrayListPool), pointer :: this
    allocate(this)
    this%jclass = 'AbstractArrayListPool'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_buffers => BasicArrayListD_jnew_0()
    
        this%f_cacheableInterfaceFactoryInterface => j_cacheableInterfaceFactoryInterface
  end function

  recursive subroutine AbstractArrayListPool_jm_clear_0(this)
    class(AbstractArrayListPool), target :: this
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function AbstractArrayListPool_jm_remove_1(this, j_key) result(jresult)
    class(AbstractArrayListPool), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive subroutine AbstractArrayListPool_jm_add_1(this, j_cacheableInterface)
    class(AbstractArrayListPool), target :: this
    class(CacheableInterface), target, optional :: j_cacheableInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_buffers%jm_add_1(j_cacheableInterface)
  end subroutine

  recursive subroutine AbstractArrayListPool_jm_addArray_1(this, j_cacheableInterfaces)
    class(AbstractArrayListPool), target :: this
    type(JRef) :: j_cacheableInterfaces(:)
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        do while ((j_index < size(j_cacheableInterfaces, 1)))
            jdiscardBoolean = this%f_buffers%jm_add_1(CacheableInterface_jcast(j_cacheableInterfaces((j_index) + 1)%v))
            j_index = j_index + 1
        end do
  end subroutine
end module AbstractArrayListPool_m

