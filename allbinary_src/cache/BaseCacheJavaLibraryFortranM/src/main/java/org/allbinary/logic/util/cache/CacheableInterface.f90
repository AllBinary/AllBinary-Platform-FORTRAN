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
module CacheableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: CacheableInterface
  contains
    procedure :: jm_getKey_0 => CacheableInterface_jm_getKey_0
  end type


contains

  function CacheableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheableInterface)
      jresult => object
    end select
  end function

  function CacheableInterface_jnew_0() result(this)
    class(CacheableInterface), pointer :: this
    allocate(this)
    this%jclass = 'CacheableInterface'
  end function

  recursive function CacheableInterface_jm_getKey_0(this) result(jresult)
    class(CacheableInterface), target :: this
    class(JObject), pointer :: jresult
    error stop 'AbstractMethodError: CacheableInterface.getKey'
  end function
end module CacheableInterface_m

