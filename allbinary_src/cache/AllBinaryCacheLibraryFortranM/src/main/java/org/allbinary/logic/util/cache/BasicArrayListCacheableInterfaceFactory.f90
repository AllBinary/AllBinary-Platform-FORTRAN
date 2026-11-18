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
module BasicArrayListCacheableInterfaceFactory_m
  use JR_m
  use CacheableInterfaceFactoryInterface_m
  use BasicArrayListCacheable_m
  use CacheableInterface_m
  implicit none

  type, extends(CacheableInterfaceFactoryInterface) :: BasicArrayListCacheableInterfaceFactory
  contains
    procedure :: jm_getInstance_1 => BasicArrayListCacheableInterfaceFactory_jm_getInstance_1
  end type


contains

  function BasicArrayListCacheableInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListCacheableInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListCacheableInterfaceFactory)
      jresult => object
    end select
  end function

  function BasicArrayListCacheableInterfaceFactory_jnew_0() result(this)
    class(BasicArrayListCacheableInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListCacheableInterfaceFactory'
  end function

  recursive function BasicArrayListCacheableInterfaceFactory_jm_getInstance_1(this, j_key) result(jresult)
    class(BasicArrayListCacheableInterfaceFactory), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
        jresult => BasicArrayListCacheable_jnew_0()
        return
  end function
end module BasicArrayListCacheableInterfaceFactory_m

