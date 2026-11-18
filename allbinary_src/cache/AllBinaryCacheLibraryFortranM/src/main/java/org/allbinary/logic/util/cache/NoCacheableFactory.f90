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
module NoCacheableFactory_m
  use JR_m
  use CacheableInterfaceFactoryInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(CacheableInterfaceFactoryInterface) :: NoCacheableFactory
  contains
    procedure :: jm_getInstance_1 => NoCacheableFactory_jm_getInstance_1
  end type


contains

  function NoCacheableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoCacheableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoCacheableFactory)
      jresult => object
    end select
  end function

  recursive function NoCacheableFactory_jnew_0() result(this)
    class(NoCacheableFactory), pointer :: this
    allocate(this)
    this%jclass = 'NoCacheableFactory'
        continue
  end function

  recursive function NoCacheableFactory_jm_getInstance_1(this, j_key) result(jresult)
    class(NoCacheableFactory), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module NoCacheableFactory_m

