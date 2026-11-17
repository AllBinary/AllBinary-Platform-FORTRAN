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
module AutomaticCacheInterface_m
  use JR_m
  use CacheInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(CacheInterface) :: AutomaticCacheInterface
  contains
    procedure :: jm_get_1 => AutomaticCacheInterface_jm_get_1
  end type


contains

  function AutomaticCacheInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AutomaticCacheInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AutomaticCacheInterface)
      jresult => object
    end select
  end function

  function AutomaticCacheInterface_jnew_0() result(this)
    class(AutomaticCacheInterface), pointer :: this
    allocate(this)
    this%jclass = 'AutomaticCacheInterface'
  end function

  recursive function AutomaticCacheInterface_jm_get_1(this, j_key) result(jresult)
    class(AutomaticCacheInterface), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    error stop 'AbstractMethodError: AutomaticCacheInterface.get'
  end function
end module AutomaticCacheInterface_m

