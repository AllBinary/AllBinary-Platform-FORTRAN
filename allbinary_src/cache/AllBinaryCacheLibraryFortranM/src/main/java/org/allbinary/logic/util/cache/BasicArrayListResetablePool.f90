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
module BasicArrayListResetablePool_m
  use JR_m
  use AbstractArrayListPool_m
  use CacheableInterfaceFactoryInterface_m
  use CacheableInterface_m
  implicit none

  type, extends(AbstractArrayListPool) :: BasicArrayListResetablePool
  contains
    procedure :: jm_clear_0 => BasicArrayListResetablePool_jm_clear_0
    procedure :: jm_remove_1 => BasicArrayListResetablePool_jm_remove_1
  end type


contains

  function BasicArrayListResetablePool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListResetablePool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListResetablePool)
      jresult => object
    end select
  end function

  recursive function BasicArrayListResetablePool_jnew_1(j_cacheableInterfaceFactoryInterface) result(this)
    class(CacheableInterfaceFactoryInterface), target, optional :: j_cacheableInterfaceFactoryInterface
    class(BasicArrayListResetablePool), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListResetablePool'
        continue ! super()
  end function

  recursive subroutine BasicArrayListResetablePool_jm_clear_0(this)
    class(BasicArrayListResetablePool), target :: this
    continue
  end subroutine

  recursive function BasicArrayListResetablePool_jm_remove_1(this, j_key) result(jresult)
    class(BasicArrayListResetablePool), target :: this
    class(JObject), target, optional :: j_key
    class(CacheableInterface), pointer :: jresult
    integer(4) :: j_size
        j_size = this%f_buffers%jm_size_0()
        if ((j_size > 0)) then
            jresult => CacheableInterface_jcast(this%f_buffers%jm_removeAt_1((j_size - 1)))
            return
        else
            jresult => this%f_cacheableInterfaceFactoryInterface%jm_getInstance_1(j_key)
            return
        end if
  end function
end module BasicArrayListResetablePool_m

