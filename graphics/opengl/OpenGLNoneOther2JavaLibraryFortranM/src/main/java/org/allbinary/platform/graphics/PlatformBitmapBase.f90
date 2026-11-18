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
  use BasicColor_m
  use BasicColorFactory_m
  implicit none

  type, extends(JObject) :: PlatformBitmapBase
    integer(4) :: f_alpha = 0
    class(BasicColor), pointer :: f_basicColor => null()
  contains
    procedure :: jm_getWidth_0 => PlatformBitmapBase_jm_getWidth_0
    procedure :: jm_getHeight_0 => PlatformBitmapBase_jm_getHeight_0
    procedure :: jm_getImage_0 => PlatformBitmapBase_jm_getImage_0
  end type

  class(PlatformBitmapBase), pointer, save :: PlatformBitmapBase_jcell_NULL_PLATFORM_BITMAP_BASE => null()
  logical, save :: PlatformBitmapBase_jset_NULL_PLATFORM_BITMAP_BASE = .false.

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

  function PlatformBitmapBase_jstatic_NULL_PLATFORM_BITMAP_BASE() result(jresult)
    class(PlatformBitmapBase), pointer :: jresult
    if (.not. PlatformBitmapBase_jset_NULL_PLATFORM_BITMAP_BASE) then
      PlatformBitmapBase_jset_NULL_PLATFORM_BITMAP_BASE = .true.
      PlatformBitmapBase_jcell_NULL_PLATFORM_BITMAP_BASE => PlatformBitmapBase_jnew_0()
    end if
    jresult => PlatformBitmapBase_jcell_NULL_PLATFORM_BITMAP_BASE
  end function

  subroutine PlatformBitmapBase_jsetstatic_NULL_PLATFORM_BITMAP_BASE(jvalue)
    class(PlatformBitmapBase), target, optional :: jvalue
    PlatformBitmapBase_jset_NULL_PLATFORM_BITMAP_BASE = .true.
    if (present(jvalue)) then
      PlatformBitmapBase_jcell_NULL_PLATFORM_BITMAP_BASE => jvalue
    else
      PlatformBitmapBase_jcell_NULL_PLATFORM_BITMAP_BASE => null()
    end if
  end subroutine

  function PlatformBitmapBase_jnew_0() result(this)
    class(PlatformBitmapBase), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PlatformBitmapBase'
    this%f_alpha = 255
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_NULL_COLOR
  end function

  recursive function PlatformBitmapBase_jm_getWidth_0(this) result(jresult)
    class(PlatformBitmapBase), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function PlatformBitmapBase_jm_getHeight_0(this) result(jresult)
    class(PlatformBitmapBase), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function PlatformBitmapBase_jm_getImage_0(this) result(jresult)
    class(PlatformBitmapBase), target :: this
    class(Image), pointer :: jresult
        jresult => NullImage_jstatic_NULL_IMAGE()
        return
  end function
end module PlatformBitmapBase_m

