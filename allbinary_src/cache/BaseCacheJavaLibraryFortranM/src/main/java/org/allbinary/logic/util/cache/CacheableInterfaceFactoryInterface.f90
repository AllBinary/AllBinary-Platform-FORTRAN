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
module CacheableInterfaceFactoryInterface_m
  use JR_m
  use CacheableInterface_m
  implicit none

  type, extends(JObject) :: CacheableInterfaceFactoryInterface
  contains
    procedure :: jm_getInstance_1 => CacheableInterfaceFactoryInterface_jm_getInstance_1
  end type


contains

  function CacheableInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheableInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheableInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function CacheableInterfaceFactoryInterface_jnew_0() result(this)
    class(CacheableInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'CacheableInterfaceFactoryInterface'
  end function

  recursive function CacheableInterfaceFactoryInterface_jm_getInstance_1(this, j_key) result(jresult)
    class(CacheableInterfaceFactoryInterface), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    error stop 'AbstractMethodError: CacheableInterfaceFactoryInterface.getInstance'
  end function
end module CacheableInterfaceFactoryInterface_m

