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
module PoolInterface_m
  use JR_m
  use CacheInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(CacheInterface) :: PoolInterface
  contains
    procedure :: jm_remove_1 => PoolInterface_jm_remove_1
  end type


contains

  function PoolInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PoolInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PoolInterface)
      jresult => object
    end select
  end function

  function PoolInterface_jnew_0() result(this)
    class(PoolInterface), pointer :: this
    allocate(this)
    this%jclass = 'PoolInterface'
  end function

  recursive function PoolInterface_jm_remove_1(this, j_key) result(jresult)
    class(PoolInterface), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    error stop 'AbstractMethodError: PoolInterface.remove'
  end function
end module PoolInterface_m

