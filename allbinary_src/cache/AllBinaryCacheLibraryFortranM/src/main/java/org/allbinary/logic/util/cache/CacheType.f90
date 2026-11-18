! 
! AllBinary Open License Version 1 
! Copyright (c) 2007 AllBinary 
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
module CacheType_m
  use JR_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: CacheType
    character(len=:), allocatable :: f_vendor
    character(len=:), allocatable :: f_type
  contains
    procedure :: jm_getVendor_0 => CacheType_jm_getVendor_0
    procedure :: jm_getType_0 => CacheType_jm_getType_0
    procedure :: jm_toString_0 => CacheType_jm_toString_0
  end type


contains

  function CacheType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CacheType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CacheType)
      jresult => object
    end select
  end function

  recursive function CacheType_jnew_2(j_vendor, j_type) result(this)
    character(len=*), intent(in) :: j_vendor
    character(len=*), intent(in) :: j_type
    class(CacheType), pointer :: this
    allocate(this)
    this%jclass = 'CacheType'
    this%f_vendor = ''
    this%f_type = ''
    
    
        this%f_vendor = j_vendor
        this%f_type = j_type
  end function

  recursive function CacheType_jm_getVendor_0(this) result(jresult)
    class(CacheType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_vendor
        return
  end function

  recursive function CacheType_jm_getType_0(this) result(jresult)
    class(CacheType), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_type
        return
  end function

  recursive function CacheType_jm_toString_0(this) result(jresult)
    class(CacheType), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('CacheType: Vendor: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getVendor_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' Type: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getType_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module CacheType_m

