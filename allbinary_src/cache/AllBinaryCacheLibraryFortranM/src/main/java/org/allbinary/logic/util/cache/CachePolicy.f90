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
module CachePolicy_m
  use JR_m
  implicit none

  type, extends(JObject) :: CachePolicy
    character(len=:), allocatable :: f_name
    integer(8) :: f_maxTime = 0_8
    integer(8) :: f_maxSize = 0_8
  contains
    procedure :: jm_getMaxTime_0 => CachePolicy_jm_getMaxTime_0
    procedure :: jm_setMaxTime_1 => CachePolicy_jm_setMaxTime_1
    procedure :: jm_getMaxSize_0 => CachePolicy_jm_getMaxSize_0
    procedure :: jm_setMaxSize_1 => CachePolicy_jm_setMaxSize_1
    procedure :: jm_getName_0 => CachePolicy_jm_getName_0
  end type


contains

  function CachePolicy_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CachePolicy), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CachePolicy)
      jresult => object
    end select
  end function

  recursive function CachePolicy_jnew_3(j_name, j_maxTime, j_maxSize) result(this)
    character(len=*), intent(in) :: j_name
    integer(8), value :: j_maxTime
    integer(8), value :: j_maxSize
    class(CachePolicy), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CachePolicy'
    this%f_name = ''
    
    
    
        this%f_name = j_name
        call this%jm_setMaxTime_1(j_maxTime)
        call this%jm_setMaxSize_1(j_maxSize)
  end function

  recursive function CachePolicy_jm_getMaxTime_0(this) result(jresult)
    class(CachePolicy), target :: this
    integer(8) :: jresult
        jresult = this%f_maxTime
        return
  end function

  recursive subroutine CachePolicy_jm_setMaxTime_1(this, j_maxTime)
    class(CachePolicy), target :: this
    integer(8), value :: j_maxTime
        this%f_maxTime = j_maxTime
  end subroutine

  recursive function CachePolicy_jm_getMaxSize_0(this) result(jresult)
    class(CachePolicy), target :: this
    integer(8) :: jresult
        jresult = this%f_maxSize
        return
  end function

  recursive subroutine CachePolicy_jm_setMaxSize_1(this, j_maxSize)
    class(CachePolicy), target :: this
    integer(8), value :: j_maxSize
        this%f_maxSize = j_maxSize
  end subroutine

  recursive function CachePolicy_jm_getName_0(this) result(jresult)
    class(CachePolicy), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module CachePolicy_m

