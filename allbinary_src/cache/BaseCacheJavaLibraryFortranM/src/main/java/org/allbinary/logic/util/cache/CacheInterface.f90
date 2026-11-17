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
module CacheInterface_m
  use JR_m
  use CacheableInterface_m
  implicit none

  type, extends(JObject) :: CacheInterface
  contains
    procedure :: jm_add_1 => CacheInterface_jm_add_1
    procedure :: jm_addArray_1 => CacheInterface_jm_addArray_1
    procedure :: jm_clear_0 => CacheInterface_jm_clear_0
  end type


contains

  function CacheInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheInterface)
      jresult => object
    end select
  end function

  function CacheInterface_jnew_0() result(this)
    class(CacheInterface), pointer :: this
    allocate(this)
    this%jclass = 'CacheInterface'
  end function

  recursive subroutine CacheInterface_jm_add_1(this, j_cacheableInterface)
    class(CacheInterface), target :: this
    class(CacheableInterface), target, optional :: j_cacheableInterface
    error stop 'AbstractMethodError: CacheInterface.add'
  end subroutine

  recursive subroutine CacheInterface_jm_addArray_1(this, j_cacheableInterfaces)
    class(CacheInterface), target :: this
    type(JRef) :: j_cacheableInterfaces(:)
    error stop 'AbstractMethodError: CacheInterface.addArray'
  end subroutine

  recursive subroutine CacheInterface_jm_clear_0(this)
    class(CacheInterface), target :: this
    error stop 'AbstractMethodError: CacheInterface.clear'
  end subroutine
end module CacheInterface_m

