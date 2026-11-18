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
module CachePolicyFactory_m
  use JR_m
  use Long_m
  use CachePolicy_m
  implicit none

  type, extends(JObject) :: CachePolicyFactory
    character(len=:), allocatable :: f_NAME
    class(CachePolicy), pointer :: f_MAX_TIME_THOUSAND_MAX => null()
    class(CachePolicy), pointer :: f_THIRTY_MINUTES_TEN_THOUSAND_MAX => null()
    class(CachePolicy), pointer :: f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX => null()
    class(CachePolicy), pointer :: f_ONE_MINUTE_FIVE_MAX => null()
    class(CachePolicy), pointer :: f_ONE_MINUTE_TEN_MAX => null()
    class(CachePolicy), pointer :: f_ONE_MINUTE_ONE_HUNDRED_MAX => null()
  end type

  class(CachePolicyFactory), pointer, save :: CachePolicyFactory_jcell_instance => null()
  logical, save :: CachePolicyFactory_jset_instance = .false.

contains

  function CachePolicyFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CachePolicyFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CachePolicyFactory)
      jresult => object
    end select
  end function

  function CachePolicyFactory_jstatic_instance() result(jresult)
    class(CachePolicyFactory), pointer :: jresult
    if (.not. CachePolicyFactory_jset_instance) then
      CachePolicyFactory_jset_instance = .true.
      CachePolicyFactory_jcell_instance => CachePolicyFactory_jnew_0()
    end if
    jresult => CachePolicyFactory_jcell_instance
  end function

  subroutine CachePolicyFactory_jsetstatic_instance(jvalue)
    class(CachePolicyFactory), target, optional :: jvalue
    CachePolicyFactory_jset_instance = .true.
    if (present(jvalue)) then
      CachePolicyFactory_jcell_instance => jvalue
    else
      CachePolicyFactory_jcell_instance => null()
    end if
  end subroutine

  function CachePolicyFactory_jnew_0() result(this)
    class(CachePolicyFactory), pointer :: this
    allocate(this)
    this%jclass = 'CachePolicyFactory'
    this%f_NAME = ''
    this%f_NAME = 'lru'
    this%f_MAX_TIME_THOUSAND_MAX => CachePolicy_jnew_3(this%f_NAME, Long_jstatic_MAX_VALUE(), int(1000, 8))
    this%f_THIRTY_MINUTES_TEN_THOUSAND_MAX => CachePolicy_jnew_3(this%f_NAME, ((1000 * 60) * 30), int(10000, 8))
    this%f_THIRTY_MINUTES_FIFTY_THOUSAND_MAX => CachePolicy_jnew_3(this%f_NAME, ((1000 * 60) * 30), int(100000, 8))
    this%f_ONE_MINUTE_FIVE_MAX => CachePolicy_jnew_3(this%f_NAME, ((1000 * 60) * 1), int(5, 8))
    this%f_ONE_MINUTE_TEN_MAX => CachePolicy_jnew_3(this%f_NAME, ((1000 * 60) * 1), int(10, 8))
    this%f_ONE_MINUTE_ONE_HUNDRED_MAX => CachePolicy_jnew_3(this%f_NAME, ((1000 * 60) * 1), int(100, 8))
  end function

  recursive function CachePolicyFactory_jm_getInstance_0() result(jresult)
    class(CachePolicyFactory), pointer :: jresult
        jresult => CachePolicyFactory_jstatic_instance()
        return
  end function
end module CachePolicyFactory_m

