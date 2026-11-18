! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.platform.graphics
module PlatformBitmapBase_m
  use JR_m
  use NullImage_m
  implicit none

  type, extends(JObject) :: PlatformBitmapBase
  contains
    procedure :: jm_getImage_0 => PlatformBitmapBase_jm_getImage_0
  end type


contains

  function PlatformBitmapBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformBitmapBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformBitmapBase)
      jresult => object
    end select
  end function

  function PlatformBitmapBase_jnew_0() result(this)
    class(PlatformBitmapBase), pointer :: this
    allocate(this)
    this%jclass = 'PlatformBitmapBase'
  end function

  recursive function PlatformBitmapBase_jm_getImage_0(this) result(jresult)
    class(PlatformBitmapBase), target :: this
    class(Image), pointer :: jresult
        jresult => NullImage_jstatic_NULL_IMAGE()
        return
  end function
end module PlatformBitmapBase_m

