! Generated Code Do Not Modify
! package org.allbinary.logic.util.cache
module PoolTypeFactory_m
  use JR_m
  use PoolType_m
  use CacheTypeFactory_m
  implicit none

  type, extends(JObject) :: PoolTypeFactory
    class(PoolType), pointer :: f_VECTOR_POOL => null()
  end type

  class(PoolTypeFactory), pointer, save :: PoolTypeFactory_jcell_instance => null()
  logical, save :: PoolTypeFactory_jset_instance = .false.

contains

  function PoolTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PoolTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PoolTypeFactory)
      jresult => object
    end select
  end function

  function PoolTypeFactory_jstatic_instance() result(jresult)
    class(PoolTypeFactory), pointer :: jresult
    if (.not. PoolTypeFactory_jset_instance) then
      PoolTypeFactory_jset_instance = .true.
      PoolTypeFactory_jcell_instance => PoolTypeFactory_jnew_0()
    end if
    jresult => PoolTypeFactory_jcell_instance
  end function

  subroutine PoolTypeFactory_jsetstatic_instance(jvalue)
    class(PoolTypeFactory), target, optional :: jvalue
    PoolTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      PoolTypeFactory_jcell_instance => jvalue
    else
      PoolTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function PoolTypeFactory_jnew_0() result(this)
    class(PoolTypeFactory), pointer :: this
    class(CacheTypeFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PoolTypeFactory'
    jtemp1 => CacheTypeFactory_jm_getInstance_0()
    this%f_VECTOR_POOL => PoolType_jnew_1(jtemp1%f_NO_CACHE)
  end function

  recursive function PoolTypeFactory_jm_getInstance_0() result(jresult)
    class(PoolTypeFactory), pointer :: jresult
        jresult => PoolTypeFactory_jstatic_instance()
        return
  end function
end module PoolTypeFactory_m

