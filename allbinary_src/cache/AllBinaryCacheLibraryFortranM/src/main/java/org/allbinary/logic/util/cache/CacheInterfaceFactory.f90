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
module CacheInterfaceFactory_m
  use JR_m
  use CacheInterface_m
  use CacheType_m
  use CachePolicy_m
  implicit none

  type, extends(JObject) :: CacheInterfaceFactory
  end type


contains

  function CacheInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function CacheInterfaceFactory_jnew_0() result(this)
    class(CacheInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'CacheInterfaceFactory'
        continue
  end function

  recursive function CacheInterfaceFactory_jm_getInstance_2(j_cacheType, j_cachePolicy) result(jresult)
    class(CacheType), target, optional :: j_cacheType
    class(CachePolicy), target, optional :: j_cachePolicy
    class(CacheInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module CacheInterfaceFactory_m

