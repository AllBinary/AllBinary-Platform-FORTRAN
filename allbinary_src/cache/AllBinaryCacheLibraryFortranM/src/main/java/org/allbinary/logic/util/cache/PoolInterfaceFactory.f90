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
module PoolInterfaceFactory_m
  use JR_m
  use PoolInterface_m
  use CacheableInterfaceFactoryInterface_m
  use PoolType_m
  use CachePolicy_m
  implicit none

  type, extends(JObject) :: PoolInterfaceFactory
  end type


contains

  function PoolInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PoolInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PoolInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function PoolInterfaceFactory_jnew_0() result(this)
    class(PoolInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'PoolInterfaceFactory'
        continue
  end function

  recursive function PoolInterfaceFactory_jm_getInstance_3(j_cacheableInterfaceFactoryInterface, j_poolType, j_cachePolicy) result(jresult)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(PoolType), target, optional :: j_poolType
    class(CachePolicy), target, optional :: j_cachePolicy
    class(PoolInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module PoolInterfaceFactory_m

