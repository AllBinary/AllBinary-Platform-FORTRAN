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
module AutomaticCacheInterfaceFactory_m
  use JR_m
  use AutomaticCacheInterface_m
  use CacheableInterfaceFactoryInterface_m
  use CacheType_m
  use CachePolicy_m
  implicit none

  type, extends(JObject) :: AutomaticCacheInterfaceFactory
  end type


contains

  function AutomaticCacheInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AutomaticCacheInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AutomaticCacheInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function AutomaticCacheInterfaceFactory_jnew_0() result(this)
    class(AutomaticCacheInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'AutomaticCacheInterfaceFactory'
        continue
  end function

  recursive function AutomaticCacheInterfaceFactory_jm_getInstance_3(j_cacheableInterfaceFactoryInterface, j_cacheType, j_cachePolicy) result(jresult)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(CacheType), target, optional :: j_cacheType
    class(CachePolicy), target, optional :: j_cachePolicy
    class(AutomaticCacheInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module AutomaticCacheInterfaceFactory_m

