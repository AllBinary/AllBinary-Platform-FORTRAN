! 
! AllBinary Open License Version 1 
! Copyright (c) 2007 AllBinary 
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
module PoolType_m
  use JR_m
  use CacheType_m
  implicit none

  type, extends(JObject) :: PoolType
    class(CacheType), pointer :: f_cacheType => null()
  contains
    procedure :: jm_getCacheType_0 => PoolType_jm_getCacheType_0
    procedure :: jm_toString_0 => PoolType_jm_toString_0
  end type


contains

  function PoolType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PoolType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PoolType)
      jresult => object
    end select
  end function

  recursive function PoolType_jnew_1(j_cacheType) result(this)
    class(CacheType), target, optional :: j_cacheType
    class(PoolType), pointer :: this
    allocate(this)
    this%jclass = 'PoolType'
    
        this%f_cacheType => j_cacheType
  end function

  recursive function PoolType_jm_getCacheType_0(this) result(jresult)
    class(PoolType), target :: this
    class(CacheType), pointer :: jresult
        jresult => this%f_cacheType
        return
  end function

  recursive function PoolType_jm_toString_0(this) result(jresult)
    class(PoolType), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_POOL_TYPE
    class(CacheType), pointer :: jtemp1
        j_POOL_TYPE = 'PoolType: '
        jtemp1 => this%jm_getCacheType_0()
        jresult = (j_POOL_TYPE // jtemp1%jm_toString_0())
        return
  end function
end module PoolType_m

