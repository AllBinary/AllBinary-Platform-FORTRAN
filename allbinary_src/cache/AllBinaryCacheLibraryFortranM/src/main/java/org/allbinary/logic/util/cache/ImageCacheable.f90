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
module ImageCacheable_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: ImageCacheable
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_getKey_0 => ImageCacheable_jm_getKey_0
    procedure :: jm_toString_0 => ImageCacheable_jm_toString_0
  end type


contains

  function ImageCacheable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCacheable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCacheable)
      jresult => object
    end select
  end function

  recursive function ImageCacheable_jnew_2(j_name, j_anyType) result(this)
    character(len=*), intent(in) :: j_name
    class(JObject), target, optional :: j_anyType
    class(ImageCacheable), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ImageCacheable'
    this%f_name = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
        continue
  end function

  recursive function ImageCacheable_jm_getKey_0(this) result(jresult)
    class(ImageCacheable), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_name
        return
  end function

  recursive function ImageCacheable_jm_toString_0(this) result(jresult)
    class(ImageCacheable), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module ImageCacheable_m

