! Generated Code Do Not Modify
! package org.allbinary.logic.util.cache
module CacheTypeFactory_m
  use JR_m
  use StringUtil_m
  use CacheType_m
  implicit none

  type, extends(JObject) :: CacheTypeFactory
    class(CacheType), pointer :: f_NO_CACHE => null()
    class(CacheType), pointer :: f_CACHE => null()
    class(CacheType), pointer :: f_SET => null()
    class(CacheType), pointer :: f_CACHE_VECTOR => null()
  end type

  class(CacheTypeFactory), pointer, save :: CacheTypeFactory_jcell_instance => null()
  logical, save :: CacheTypeFactory_jset_instance = .false.

contains

  function CacheTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheTypeFactory)
      jresult => object
    end select
  end function

  function CacheTypeFactory_jstatic_instance() result(jresult)
    class(CacheTypeFactory), pointer :: jresult
    if (.not. CacheTypeFactory_jset_instance) then
      CacheTypeFactory_jset_instance = .true.
      CacheTypeFactory_jcell_instance => CacheTypeFactory_jnew_0()
    end if
    jresult => CacheTypeFactory_jcell_instance
  end function

  subroutine CacheTypeFactory_jsetstatic_instance(jvalue)
    class(CacheTypeFactory), target, optional :: jvalue
    CacheTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      CacheTypeFactory_jcell_instance => jvalue
    else
      CacheTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function CacheTypeFactory_jnew_0() result(this)
    class(CacheTypeFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
    allocate(this)
    this%jclass = 'CacheTypeFactory'
    jtemp1 => StringUtil_jm_getInstance_0()
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_NO_CACHE => CacheType_jnew_2(jtemp1%f_EMPTY_STRING, jtemp2%f_EMPTY_STRING)
    jtemp3 => StringUtil_jm_getInstance_0()
    jtemp4 => StringUtil_jm_getInstance_0()
    this%f_CACHE => CacheType_jnew_2(jtemp3%f_EMPTY_STRING, jtemp4%f_EMPTY_STRING)
    jtemp5 => StringUtil_jm_getInstance_0()
    this%f_SET => CacheType_jnew_2(jtemp5%f_EMPTY_STRING, 'Set')
    jtemp6 => StringUtil_jm_getInstance_0()
    jtemp7 => StringUtil_jm_getInstance_0()
    this%f_CACHE_VECTOR => CacheType_jnew_2(jtemp6%f_EMPTY_STRING, jtemp7%f_EMPTY_STRING)
  end function

  recursive function CacheTypeFactory_jm_getInstance_0() result(jresult)
    class(CacheTypeFactory), pointer :: jresult
        jresult => CacheTypeFactory_jstatic_instance()
        return
  end function
end module CacheTypeFactory_m

