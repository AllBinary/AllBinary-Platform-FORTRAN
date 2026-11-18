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
module BasicArrayListCacheable_m
  use JR_m
  use StringUtil_m
  use BasicArrayListD_m
  use CacheableInterface_m
  implicit none

  type, extends(BasicArrayListD) :: BasicArrayListCacheable
  contains
    procedure :: jm_getKey_0 => BasicArrayListCacheable_jm_getKey_0
  end type

  ! BasicArrayListCacheable used as a CacheableInterface
  type, extends(CacheableInterface) :: BasicArrayListCacheable_jas_CacheableInterface
    class(BasicArrayListCacheable), pointer :: jtarget => null()
  contains
    procedure :: jm_getKey_0 => BasicArrayListCacheable_jas_CacheableInterface_jm_getKey_0
  end type


contains

  function BasicArrayListCacheable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayListCacheable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayListCacheable)
      jresult => object
    end select
  end function

  function BasicArrayListCacheable_jas_CacheableInterface_jnew(object) result(jresult)
    class(BasicArrayListCacheable), target :: object
    class(BasicArrayListCacheable_jas_CacheableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicArrayListCacheable'
    jresult%jtarget => object
  end function

  recursive function BasicArrayListCacheable_jas_CacheableInterface_jm_getKey_0(this) result(jresult)
    class(BasicArrayListCacheable_jas_CacheableInterface), target :: this
    class(JObject), pointer :: jresult
    jresult => this%jtarget%jm_getKey_0()
  end function

  function BasicArrayListCacheable_jnew_0() result(this)
    class(BasicArrayListCacheable), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayListCacheable'
  end function

  recursive function BasicArrayListCacheable_jm_getKey_0(this) result(jresult)
    class(BasicArrayListCacheable), target :: this
    class(JObject), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult => jtemp1%f_EMPTY_STRING
        return
  end function
end module BasicArrayListCacheable_m

function BasicArrayListCacheable_jnew_0_jext() result(this)
  use BasicArrayListCacheable_m, only: JObject, BasicArrayListCacheable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicArrayListCacheable_jnew_0()
end function

